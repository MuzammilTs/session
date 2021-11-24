<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Kyslik\ColumnSortable\Sortable;

class Campaign extends Model
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

    /**
     * Get the user that owns the phone.
     */
    public function meeting()
    {
        return $this->belongsTo(Meeting::class, 'campaign_id');
    }


    public function meetingTypes()
    {
        return $this->belongsToMany(MeetingType::class, 'campaign_meeting_type');
    }
}