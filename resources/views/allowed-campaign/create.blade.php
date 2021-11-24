
@extends('layouts.user')

@section('title', 'Create Allowed Campaign')


@section('content')

<div class="back-area mb-3">
    <a href="{{ route('allowed-campaigns.index') }}" class="btn btn-secondary btn-sm"><i class="fas fa-arrow-left mr-2"></i> Go Back</a>
</div>

<!-- Default box -->
<div class="card">
    <div class="card-header">
        <h3 class="card-title">Create Allowed Campaign</h3>
    </div>

    <form action="{{ route('allowed-campaigns.store') }}" method="post" autocomplete="off">
        @csrf
        <div class="card-body">
            <div class="form-group">
                <label for="exampleInputEmail1">HRMS ID</label>
                <input type="text" class="form-control" name="hrms_id" placeholder="Enter HRMS ID" required>
            </div>
            @error('hrms_id')
                <div class="validate-error">{{ $message }}</div>
            @enderror
            <div class="form-group">
                <label for="exampleInputEmail1">Campaign Name</label>
                <input type="text" class="form-control" name="name" placeholder="Enter Campaign Name" required>
            </div>
            @error('name')
                <div class="validate-error">{{ $message }}</div>
            @enderror
            <div class="form-group">
                <label for="exampleInputPassword1">Select Status</label>
                <select name="status" class="form-control select2" required>
                    <option value="1">Active</option>
                    <option value="0">Inactive</option>
                </select>
            </div>
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
        <!-- /.card-footer-->

    </form>
</div>
<!-- /.card -->

@endsection
