<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMeetingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('meetings', function (Blueprint $table) {
            $table->id();
            $table->integer('meeting_type_id')->unsigned();
            $table->integer('campaign_id')->unsigned();
            $table->integer('user_id')->unsigned();
            $table->integer('associate_id')->unsigned()->nullable();
            $table->integer('meeting_request_id')->unsigned()->nullable();
            $table->integer('team_lead_id')->nullable();
            $table->integer('team_lead_status')->nullable();
            $table->integer('reason_id')->unsigned();
            $table->integer('head_count')->nullable();
            $table->date('date')->nullable();
            $table->time('start_time')->nullable();
            $table->time('end_time')->nullable();
            $table->longText('synopsis')->nullable();
            $table->float('rating')->default(0);
            $table->longText('comments')->nullable();
            $table->integer('status')->default(0);
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('meetings');
    }
}