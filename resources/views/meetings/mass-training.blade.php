
@extends('layouts.user')

@section('title', 'Mass Training Sessions')


@section('content')

<!-- Default box -->
<div class="card card-primary card-outline">
    <div class="card-header">
        <h3 class="card-title">Mass Training Sessions List</h3>

        <div class="card-tools">
            <a href="{{ route('meetings.create', 'mass-training') }}" class="btn btn-primary btn-sm">
                <i class="fas fa-plus"></i> Create Mass Training Session
            </a>
        </div>
    </div>

    <div class="card-body">

        <table class="table table-bordered">
            <thead>
              <tr>
                <th>@sortablelink('id', 'ID')</th>
                <th>@sortablelink('campaign_id', 'Campaign Name')</th>
                <th>@sortablelink('user_id', 'Scheduled By')</th>
                <th>@sortablelink('date', 'Scheduled Date')</th>
                <th>Scheduled Time</th>
                <th>@sortablelink('reason_id', 'Reason')</th>
                <th>@sortablelink('status', 'Status')</th>
                <th>@sortablelink('created_at', 'Created Time')</th>
                <th class="action">Action</th>
              </tr>
            </thead>
            <tbody>

                @if(count($meetings) > 0)

                    @foreach ($meetings as $meeting)
                        <tr>
                            <td>{{ $meeting->id }}</td>
                            <td>{{ $meeting->campaign->name ?? '' }}</td>
                            <td>{{ $meeting->scheduledBy->name ?? '' }}</td>
                            <td>{{ $meeting->date }}</td>
                            <td>{{ $meeting->start_time }} - {{ $meeting->end_time }}</td>
                            <td>{{ $meeting->reason->name ?? '' }}</td>
                            <td>
                                @if($meeting->status == 0)
                                    <span class="badge bg-info">Scheduled</span>
                                @elseif($meeting->status == 2)
                                    <span class="badge bg-success">Completed</span>
                                @else
                                    <span class="badge bg-success">Pending</span>
                                @endif
                            </td>
                            <td>{{ $meeting->created_at->format('d-m-Y g:i:s A') }}</td>
                            <td></td>
                        </tr>
                    @endforeach

                @else
                    <tr><td colspan="9" class="text-center">No record found!</td></tr>
                @endif

            </tbody>
        </table>

    </div>

    @if($meetings->total() > 15)
        <!-- /.card-body -->
        <div class="card-footer clearfix">
            {{ $meetings->links() }}
        </div>
        <!-- /.card-footer-->
    @endif
</div>
<!-- /.card -->

@endsection
