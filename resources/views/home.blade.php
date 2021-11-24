
@extends('layouts.user')

@section('title', 'Dashboard')


@section('content')




<div class="row">
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-info">
        <div class="inner">
          <h3>{{ $one_on_one_sessions }}</h3>

          <p>One-on-One Sessions</p>
        </div>
        <div class="icon">
          <i class="ion ion-bag"></i>
        </div>
        <a href="{{ route('meetings.index', 1) }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-success">
        <div class="inner">
          <h3>{{ $calibration_sessions }}</h3>

          <p>QA Calibration Sessions</p>
        </div>
        <div class="icon">
          <i class="ion ion-stats-bars"></i>
        </div>
        <a href="{{ route('meetings.index', 2) }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-primary">
        <div class="inner">
          <h3>{{ $mass_training_sessions }}</h3>

          <p>Mass Training Sessions</p>
        </div>
        <div class="icon">
          <i class="ion ion-person-add"></i>
        </div>
        <a href="{{ route('meetings.index', 3) }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-danger">
        <div class="inner">
          <h3>{{ $meeting_requests }}</h3>

          <p>Pending Session Requests</p>
        </div>
        <div class="icon">
          <i class="ion ion-pie-graph"></i>
        </div>
        <a href="{{ route('meeting-requests.index') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
  </div>



<!-- Default box -->
<div class="card">
    <div class="card-header">
        <h3 class="card-title">Upcoming Sessions</h3>
    </div>
    <div class="card-body">

        <table class="table table-bordered">
            <thead>
              <tr>
                <th>Type</th>
                <th>Campaign Name</th>
                <th>Scheduled By / Associate</th>
                <th>Scheduled Date</th>
                <th>Scheduled Time</th>
                <th>Reason</th>
                <th>Created Time</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>

                @if(count($upcoming_meetings) > 0)

                    @foreach ($upcoming_meetings as $meeting)
                        <tr>
                            <td>{{ $meeting->meetingType->name ?? '' }}</td>
                            <td>{{ $meeting->campaign->name ?? '' }}</td>
                            <td>
                                {{ $meeting->scheduledBy->name ?? '' }}
                                @if($meeting->meeting_type_id == 1)
                                    <br>{{ $meeting->associate->name ?? '' }}
                                @endif
                            </td>
                            <td>{{ $meeting->date }}</td>
                            <td>{{ $meeting->start_time }} - {{ $meeting->end_time }}</td>
                            <td>{{ $meeting->reason->name ?? '' }}</td>
                            <td>{{ $meeting->created_at->format('d-m-Y g:i:s A') }}</td>
                            <td>
                                <a href="{{ route('meetings.show', $meeting->id) }}" class="btn btn-primary btn-sm"><i class="fas fa-eye"></i></a>
                            </td>
                        </tr>
                    @endforeach

                @else
                    <tr><td colspan="9" class="text-center">No record found!</td></tr>
                @endif

            </tbody>
        </table>

    </div>
</div>
<!-- /.card -->

@endsection
