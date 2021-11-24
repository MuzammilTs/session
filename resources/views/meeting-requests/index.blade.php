
@extends('layouts.user')

@section('title', 'Session Requests')


@section('content')

{{-- <div class="search-area">
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

    <form action="{{ route('meeting-requests.index') }}" method="get" autocomplete="off">
        <input type="hidden" name="search" value="1">
        @php
            $name = '';
            $status = -1;

            if(isset($_GET['search'])){
                if(!empty($_GET['name'])){
                    $name = $_GET['name'];
                }
                $status = $_GET['status'];
            }

        @endphp

        <div class="card card-primary card-outline mt-3" id="search" @if(isset($_GET['search'])) style="display: block;" @endif>
            <div class="card-body">
                <div class="row">

                    <div class="form-group col-md-4">
                        <label for="">Enter Name</label>
                        <input type="text" name="name" value="{{ $name }}" class="form-control">
                    </div>

                    <div class="form-group col-md-4">
                        <label for="">Select Status</label>
                        <select name="status" class="form-control select2">
                            <option value="-1">Select</option>
                            <option value="1" @if($status == 1) selected @endif>Active</option>
                            <option value="0" @if($status == 0) selected @endif>InActive</option>
                        </select>
                    </div>

                </div>
            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Search</button>
                <a href="{{ route('meeting-requests.index') }}" class="ml-5">Clear Search</a>
            </div>
        </div>
    </form>

</div> --}}

<!-- Default box -->
<div class="card card-primary card-outline">
    <div class="card-header">
        <h3 class="card-title">Session Requests</h3>
    </div>

    <div class="card-body">

        <table class="table table-bordered">
            <thead>
              <tr>
                <th>@sortablelink('id', 'ID')</th>
                @if(in_array(Auth::user()->roles[0]->name, ["Super Admin", "Director", "Team Lead", "Manager"]))
                    <th>Requested By</th>
                @endif
                <th>Team Lead</th>
                <th>Reason</th>
                <th>@sortablelink('status', 'Status')</th>
                <th>@sortablelink('created_at', 'Created Time')</th>
                <th class="action">Action</th>
              </tr>
            </thead>
            <tbody>

                @if(count($meeting_requests) > 0)

                    @foreach ($meeting_requests as $item)
                        <tr>
                            <td>{{ $item->id ?? 0 }}</td>
                            @if(in_array(Auth::user()->roles[0]->name, ["Super Admin", "Director", "Team Lead", "Manager"]))
                                <td>{{ $item->user->name ?? '' }}</td>
                            @endif
                            <td>{{ $item->teamLead->name ?? 'undefined' }}</td>
                            <td>{{ $item->reason ?? '' }}</td>
                            <td>
                                @if($item->status == 1)
                                    <span class="badge bg-success">Accepted</span>
                                @elseif($item->status == 2)
                                    <span class="badge bg-danger">Rejected</span>
                                @else
                                    <span class="badge bg-info">Pending</span>
                                @endif
                            </td>
                            <td>{{ $item->created_at->format('d-m-Y g:i:s A') }}</td>
                            <td>
                                @if($item->status == 0 && Auth::user()->roles[0]->name == "Associate")
                                    <a href="{{ route('meeting-requests.edit', $item->id) }}" class="btn btn-primary btn-sm"><i class="fas fa-edit"></i></a>
                                    <a href="{{ route('meeting-requests.destroy', $item->id) }}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')"><i class="fas fa-trash"></i></a>
                                @elseif($item->status == 0 && in_array(Auth::user()->roles[0]->name, ["Manager", "Team Lead"]))
                                    <a href="{{ route('meetings.create', array(1, $item->id, $item->user_id)) }}" class="btn btn-primary btn-sm" title="Accept request"><i class="fas fa-check"></i></a>
                                    <a href="{{ route('meeting-requests.reject', $item->id) }}" class="btn btn-danger btn-sm" title="Reject request" onclick="return confirm('Are you sure?')"><i class="fas fa-times-circle"></i></a>
                                @endif
                            </td>
                        </tr>
                    @endforeach
                @else
                    <tr><td colspan="6" class="text-center">No record found!</td></tr>
                @endif

            </tbody>
        </table>

    </div>

    @if($meeting_requests->total() > 15)
        <!-- /.card-body -->
        <div class="card-footer clearfix">
            {{ $meeting_requests->links() }}
        </div>
        <!-- /.card-footer-->
    @endif
</div>
<!-- /.card -->

@endsection



@section('scripts')

<script>

    $(function () {
        $("#btn-search").click(function(e){
            e.preventDefault();
            $("#search").slideToggle();
        });

    });

</script>

@endsection
