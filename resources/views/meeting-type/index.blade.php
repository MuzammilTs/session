
@extends('layouts.user')

@section('title', 'Meeting Types')


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

    <form action="{{ route('meeting-types.index') }}" method="get" autocomplete="off">
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
                <a href="{{ route('meeting-types.index') }}" class="ml-5">Clear Search</a>
            </div>
        </div>
    </form>

</div>

<!-- Default box -->
<div class="card card-primary card-outline">
    <div class="card-header">
        <h3 class="card-title">Meeting Types List</h3>

        <div class="card-tools">
            <a href="{{ route('meeting-types.create') }}" class="btn btn-primary btn-sm">
                <i class="fas fa-plus"></i> Create Meeting Type
            </a>
        </div>
    </div>

    <div class="card-body">

        <table class="table table-bordered">
            <thead>
              <tr>
                <th>@sortablelink('id', 'ID')</th>
                <th>@sortablelink('name', 'Meeting Type')</th>
                <th>Associated Campaigns</th>
                <th>@sortablelink('status', 'Status')</th>
                <th>@sortablelink('created_at', 'Created Time')</th>
                <th class="action">Action</th>
              </tr>
            </thead>
            <tbody>

                @if(count($types) > 0)

                    @foreach ($types as $type)
                        <tr>
                            <td>{{ $type->id ?? 0 }}</td>
                            <td>{{ $type->name ?? 'undefined' }}</td>
                            <td>
                                @php
                                    $campaigns = $type->campaigns->pluck('name')->toArray();
                                    $campaigns = implode(", ", $campaigns);
                                @endphp
                                {{ $campaigns }}
                            </td>
                            <td>
                                @if($type->status == 1)
                                    <span class="badge bg-success">Active</span>
                                @else
                                    <span class="badge bg-success">InActive</span>
                                @endif
                            </td>
                            <td>{{ $type->created_at->format('d-m-Y g:i:s A') }}</td>
                            <td>
                                <a href="{{ route('meeting-types.edit', $type->id) }}" class="btn btn-primary btn-sm"><i class="fas fa-edit"></i></a>
                                <a href="{{ route('meeting-types.destroy', $type->id) }}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')"><i class="fas fa-trash"></i></a>
                            </td>
                        </tr>
                    @endforeach
                @else
                    <tr><td colspan="6" class="text-center">No record found!</td></tr>
                @endif

            </tbody>
        </table>

    </div>

    @if($types->total() > 15)
        <!-- /.card-body -->
        <div class="card-footer clearfix">
            {{ $types->links() }}
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
