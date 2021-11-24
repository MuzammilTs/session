<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Kyslik\ColumnSortable\Sortable;

class AllowedCampaign extends Model
{
    use HasFactory, SoftDeletes, Sortable;

    protected $fillable = [
        'hrms_id',
        'name',
        'status',
    ];

    public $sortable = [
        'id',
        'hrms_id',
        'name',
        'status',
        'created_at',
        'updated_at'
    ];
}
