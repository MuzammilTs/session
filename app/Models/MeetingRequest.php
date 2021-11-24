<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Kyslik\ColumnSortable\Sortable;

class MeetingRequest extends Model
{
    use HasFactory, SoftDeletes, Sortable;

    protected $fillable = [
        'user_id',
        'team_lead_id',
        'reason',
        'status',
    ];

    public $sortable = [
        'id',
        'user_id',
        'team_lead_id',
        'created_at',
        'updated_at'
    ];

    public function teamLead(){
        return $this->hasOne(User::class, 'id', 'team_lead_id');
    }

    public function user(){
        return $this->hasOne(User::class, 'id', 'user_id');
    }
}
