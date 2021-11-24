@extends('layouts.user')

@section('title', $type->name.'s')


@section('content')

<div class="search-area">
    <div class="row">

        <div class="col-md-6">
            <h4 class="mb-0">Search</h4>
        </div>
        <div class="col-md-6">
            <div class="button-area">
                <button type="button" id="btn-search" class="btn btn-primary"><i class="fas fa-filter"></i></button>
            </div>
        </div>

    </div>

    <form action="{{ route('meetings.index', $type->id) }}" method="get" autocomplete="off">
        <input type="hidden" name="search" value="1">
        @php
            $campaign_id = -1;
            $scheduled_by = -1;
            $from_date = '';
            $to_date = '';
            $status = -1;
            if(isset($_GET['search'])){
                if(!empty($_GET['campaign_id'])){
                    $campaign_id = $_GET['campaign_id'];
                }
                if(!empty($_GET['scheduled_by'])){
                    $scheduled_by = $_GET['scheduled_by'];
                }
                if(!empty($_GET['from_date'])){
                    $from_date = $_GET['from_date'];
                }
                if(!empty($_GET['to_date'])){
                    $to_date = $_GET['to_date'];
                }
                $status = (int)$_GET['status'];
            }
        @endphp

        <div class="card card-primary card-outline mt-3" id="search" @if(isset($_GET['search'])) style="display: block;" @endif>
            <div class="card-body">
                <div class="row">

                    <div class="form-group col-md-4">
                        <label for="">Enter Campaign Name</label>
                        <select name="campaign_id" class="form-control select2">
                            <option value="">Select Option</option>
                            @foreach ($campaigns as $campaign)
                                <option value="{{ $campaign->id }}" @if($campaign_id == $campaign->id) selected @endif>{{ $campaign->name }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="">Scheduled By</label>
                        <select name="scheduled_by" class="form-control select2">
                            <option value="">Select Option</option>
                            @foreach ($users as $user)
                                <option value="{{ $user->id }}" @if($scheduled_by == $user->id) selected @endif>{{ $user->name }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="">Select Status</label>
                        <select name="status" class="form-control select2">
                            <option value="-1">Select</option>
                            <option value="1" @if($status == 1) selected @endif>Completed</option>
                            <option value="0" @if($status == 0) selected @endif>Scheduled</option>
                        </select>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="">From Date</label>
                        <input type="text" class="form-control datetimepicker-input datepicker1" name="from_date" value="{{ $from_date }}" data-toggle="datetimepicker" data-target=".datepicker1"/>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="">To Date</label>
                        <input type="text" class="form-control datetimepicker-input datepicker2" name="to_date" value="{{ $to_date }}" data-toggle="datetimepicker" data-target=".datepicker2"/>
                    </div>

                </div>
            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Search</button>
                <a href="{{ route('meetings.index', $type->id) }}" class="ml-5">Clear Search</a>
            </div>
        </div>
    </form>

</div>

<!-- Default box -->
<div class="card card-primary card-outline">
    <div class="card-header">
        <h3 class="card-title">{{ $type->name }}s List</h3>

        @if(in_array(Auth::user()->roles[0]->name, ['Manager', 'Team Lead']))

            <div class="card-tools">
                <a href="{{ route('meetings.create', $type->id) }}" class="btn btn-primary btn-sm">
                    <i class="fas fa-plus"></i> Create {{ $type->name }}
                </a>
            </div>

        @endif
    </div>

    <div class="card-body">

        <table class="table table-bordered">
            <thead>
              <tr>
                <th>ID</th>
                <th>Campaign Name</th>
                <th>Scheduled By</th>
                @if($type->id == 1)
                    <th>Associate</th>
                @endif
                <th>Scheduled Date</th>
                <th>Scheduled Time</th>
                <th>Reason</th>
                <th>Status</th>
                <th>Created Time</th>
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
                            @if($type->id == 1)
                                <td>{{ $meeting->associate->name ?? '' }}</td>
                            @endif
                            <td>{{ $meeting->date }}</td>
                            <td>{{ $meeting->start_time }} - {{ $meeting->end_time }}</td>
                            <td>{{ $meeting->reason->name ?? '' }}</td>
                            <td>
                                @if($meeting->status == 0)
                                    <span class="badge bg-info">Scheduled</span>
                                @elseif($meeting->status == 1)
                                    <span class="badge bg-success">Completed</span>
                                @else
                                    <span class="badge bg-success">Pending</span>
                                @endif
                            </td>
                            <td>{{ $meeting->created_at->format('d-m-Y g:i:s A') }}</td>
                            <td>
                                <a href="{{ route('meetings.show', $meeting->id) }}" class="btn btn-primary btn-sm"><i class="fas fa-eye"></i></a>
                                @if($meeting->status != 1 && in_array(Auth::user()->roles[0]->name, ['Super Admin', 'Manager', 'Team Lead']))
                                    <a href="{{ route('meetings.complete', $meeting->id) }}" class="btn btn-success btn-sm"><i class="fas fa-check"></i></a>
                                    <a href="{{ route('meetings.edit', $meeting->id) }}" class="btn btn-primary btn-sm"><i class="fas fa-edit"></i></a>
                                    <a href="{{ route('meetings.destroy', $meeting->id) }}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')" @if($meeting->status == 1) disabled @endif><i class="fas fa-trash"></i></a>
                                @endif
                            </td>
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


@section('scripts')

<script>
    $(function () {

        $(function () {
            $("#btn-search").click(function(e){
                e.preventDefault();
                $("#search").slideToggle();
            });
        });

        $('.datepicker1').datetimepicker({
            format: 'L',
            format: 'DD/MM/YYYY',
            keepInvalid: false
        });

        $('.datepicker2').datetimepicker({
            format: 'L',
            format: 'DD/MM/YYYY',
            keepInvalid: false
        });

    });

</script>

@endsection
