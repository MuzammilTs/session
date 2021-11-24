<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Kyslik\ColumnSortable\Sortable;
use Carbon\Carbon;

class Meeting extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'meeting_type_id',
        'campaign_id',
        'user_id',
        'associate_id',
        'meeting_request_id',
        'team_lead_id',
        'team_lead_status',
        'reason_id',
        'head_count',
        'date',
        'start_time',
        'end_time',
        'synopsis',
        'rating',
        'comments',
        'status',
    ];

    public $sortable = [
        'id',
        'meeting_type_id',
        'campaign_id',
        'user_id',
        'date',
        'start_time',
        'end_time',
        'status',
    ];

    /**
     * Get the user's first name.
     *
     * @param  string  $value
     * @return string
     */
    public function getStartTimeAttribute($value)
    {
        $start_time = Carbon::parse($value);
        return $start_time->format('g:i A');
    }

    /**
     * Get the user's first name.
     *
     * @param  string  $value
     * @return string
     */
    public function getEndTimeAttribute($value)
    {
        $end_time = Carbon::parse($value);
        return $end_time->format('g:i A');
    }

    public function meetingType()
    {
        return $this->hasOne(MeetingType::class, 'id', 'meeting_type_id');
    }


    public function campaign()
    {
        return $this->hasOne(Campaign::class, 'id', 'campaign_id');
    }


    public function scheduledBy()
    {
        return $this->hasOne(User::class, 'id', 'user_id');
    }


    public function reason()
    {
        return $this->hasOne(Reason::class, 'id', 'reason_id');
    }


    public function type()
    {
        return $this->hasOne(MeetingType::class, 'id', 'meeting_type_id');
    }


    public function associate()
    {
        return $this->hasOne(User::class, 'id', 'associate_id');
    }


    public function attendees()
    {
        return $this->hasMany(Attendee::class, 'meeting_id', 'id');
    }

    public function reviews()
    {
        return $this->hasMany(MeetingReview::class, 'meeting_id', 'id');
    }
}