
@extends('layouts.user')

@section('title', 'Create Meeting Type')


@section('content')

<div class="back-area mb-3">
    <a href="{{ route('meeting-types.index') }}" class="btn btn-secondary btn-sm"><i class="fas fa-arrow-left mr-2"></i> Go Back</a>
</div>

<!-- Default box -->
<div class="card">
    <div class="card-header">
        <h3 class="card-title">Create Meeting Type</h3>
    </div>

    <form action="{{ route('meeting-types.store') }}" method="post" autocomplete="off">
        @csrf
        <div class="card-body">
            <div class="form-group">
                <label for="exampleInputEmail1">Meeting Type</label>
                <input type="text" class="form-control" name="name" placeholder="Enter Meeting Type" required>
            </div>
            @error('name')
                <div class="validate-error">{{ $message }}</div>
            @enderror

            <div class="form-group">
                <label for="exampleInputEmail1">Select Campaign</label>
                <select name="campaigns[]" id="campaigns" class="form-control select2" multiple required>
                    <option value="">Select Option</option>
                    @foreach ($campaigns as $campaign)
                        <option value="{{ $campaign->id }}">{{ $campaign->name }}</option>
                    @endforeach
                </select>
            </div>
            @error('campaigns')
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
