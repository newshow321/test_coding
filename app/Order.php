<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'table_order';

    public function setIdListMenuAttribute($IdListMenu)
    {
        if (is_array($IdListMenu)) {
            $this->attributes['id_list_menu'] = json_encode($IdListMenu);
        }
        else {
            $this->attributes['id_list_menu'] = $IdListMenu;
        }
    }

    public function getIdListMenuAttribute($IdListMenu)
    {
        json_decode($IdListMenu, true);

        if ((json_last_error() == JSON_ERROR_NONE)) {
            return json_decode($IdListMenu, true);
        }
        else {
            return $IdListMenu;
        }
    }
}
