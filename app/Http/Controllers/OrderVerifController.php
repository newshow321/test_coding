<?php

namespace App\Http\Controllers;

use App\Order;
use Illuminate\Http\Request;

class OrderVerifController extends Controller
{
    public function verif($id) {
        Order::where('id', $id)->update([
            'st_order' => 1
        ]);
        return redirect('admin/order');
    }
}
