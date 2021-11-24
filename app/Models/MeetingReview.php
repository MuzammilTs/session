<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MeetingReview extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'meeting_id',
        'rating',
        'comments',
        'status'
    ];

    public function meeting(){
        return $this->hasOne(Meeting::class, 'id', 'meeting_id');
    }

    public function user(){
        return $this->hasOne(User::class, 'id', 'user_id');
    }
}