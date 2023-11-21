<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class MaterialCategory extends Model
{
    use HasFactory, SoftDeletes;

    // protected $guarded = [];

    protected static $unguarded = true;

    public function parent()
    {
        return $this->belongsTo(self::class, 'parent_id', 'id');
    }
}
