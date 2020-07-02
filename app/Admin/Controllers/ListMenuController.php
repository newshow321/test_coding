<?php

namespace App\Admin\Controllers;

use App\ListMenu;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ListMenuController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'ListMenu';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ListMenu());

        $id_user = Admin::user()->getAuthIdentifier();
        $userModel = config('admin.database.users_model');
        $model = new $userModel();
        $role = $model->find($id_user)->role;

        if ($role != 0) {
            $grid->model()->where('st_ready', 1);
        }

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('image', __('Image'))->display(function () {
            return '<img src="'.url('uploads/'. $this->image).'" width="100px" height="100px">';
        });
        $grid->column('st_ready', __('Status'))->display(function () {
            if ($this->st_ready == 1) {
                return '<span class="label label-success">Ready</span>';
            } else {
                return '<span class="label label-danger">Not Ready</span>';
            }
        });

        if ($role != 0) {
            $grid->disableActions();
        }

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
        $show = new Show(ListMenu::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('image', __('Image'))->as(function ($image) {
            return '<img src="'.url('uploads/'. $image).'" width="100px" height="100px">';
        })->unescape();
        $show->field('st_ready', __('Status'))->as(function ($status) {
            if ($status == 1) {
                return '<span class="label label-success">Ready</span>';
            } else {
                return '<span class="label label-danger">Not Ready</span>';
            }
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
        $form = new Form(new ListMenu());

        $form->text('name', __('Name'));
        $form->image('image', __('Image'));
        $form->switch('st_ready', __('Ready'));

        return $form;
    }
}
