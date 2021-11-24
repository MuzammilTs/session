<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Kyslik\ColumnSortable\Sortable;

class MeetingType extends Model
{
    use HasFactory, SoftDeletes, Sortable;

    protected $fillable = [
        'name',
        'status',
    ];

    public $sortable = [
        'id',
        'name',
        'status',
        'created_at',
        'updated_at'
    ];

    public function campaigns()
    {
        return $this->belongsToMany(Campaign::class, 'campaign_meeting_type', 'meeting_type_id', 'campaign_id');
    }
}