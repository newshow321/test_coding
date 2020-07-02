<?php

namespace App\Admin\Controllers;

use App\ListMenu;
use App\Order;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Auth;

class OrderController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Order';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Order());
        $id_user = Admin::user()->getAuthIdentifier();
        $userModel = config('admin.database.users_model');
        $model = new $userModel();
        $role = $model->find($id_user)->role;

        $grid->column('id', __('Id'));
        $grid->column('nomor_pesanan', __('Nomor Pesanan'));
        $grid->column('nomor_meja', __('Nomor Meja'));
        $grid->column('id_list_menu', __('List Order'))->display(function () {
            $nama = '';
            for($i = 0; $i < count($this->id_list_menu); $i++) {
                $nama .= '<span class="label label-primary" style="font-size: 13px;">'.ListMenu::find(intval($this->id_list_menu[$i]))->name. '</span> ';
            }
            $nama = substr($nama, 0, strlen($nama) - 1);
            return $nama;
        });
        $grid->column('st_order', 'Status')->display(function (){
            if ($this->st_order == 0) {
                return '<label class="label label-primary">Active</label>';
            } else {
                return '<label class="label label-danger">Closed</label>';
            }
        });

        if ($role == 0 || $role == 1) {
            $grid->column('Mark')->display(function () {
                if ($this->st_order == 0) {
                    return '<a href="/verification/'.$this->id.'"><i class="fa fa-close"></i> Mark As Closed</a>';
                } else {
                    return '<i class="fa fa-check"></i>';
                }
            });
        }

        $grid->filter(function($filter){
            $filter->disableIdFilter();

            $filter->like('nomor_pesanan', 'Nomor Pesanan');
        });

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Order::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('nomor_pesanan', __('Nomor pesanan'));
        $show->field('nomor_meja', __('Nomor meja'));
        $show->field('id_list_menu', __('List Menu'))->as(function ($list) {
            $nama = '';
            for($i = 0; $i < count($list); $i++) {
                $nama .= '<span class="label label-primary" style="font-size: 13px;">'.ListMenu::find(intval($list[$i]))->name. '</span> ';
            }
            $nama = substr($nama, 0, strlen($nama) - 1);
            return $nama;
        })->unescape();
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Order());

        $order = Order::all();
        $number = str_pad(count($order) + 1, 3, 0, STR_PAD_LEFT);
        $nomor_pesanan = 'ABC'. date('dmY').'-'. $number;
        $form->text('nomor_pesanan', __('Nomor pesanan'))->default($nomor_pesanan)->attribute(['readOnly'=>'true']);
        $form->number('nomor_meja', __('Nomor meja'))->value(1);
        $form->multipleSelect('id_list_menu', 'Menu')->options(
            ListMenu::where('st_ready', 1)->pluck('name', 'id')
        );

        return $form;
    }
}
