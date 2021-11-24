
@extends('layouts.user')

@section('title', 'Edit '.$type->name)


@section('content')

<div class="back-area mb-3">
    <a href="{{ route('meetings.index', $type->id) }}" class="btn btn-secondary btn-sm"><i class="fas fa-arrow-left mr-2"></i> Go Back</a>
</div>

<!-- Default box -->
<div class="card">
    <div class="card-header">
        <h3 class="card-title">Edit {{ $type->name }}</h3>
    </div>

    <form action="{{ route('meetings.update', $meeting->id) }}" method="post" autocomplete="off">
        @csrf
        <div class="card-body">

            <div class="form-group">
                <label for="exampleInputEmail1">Select Reason</label>
                <select name="reason_id" class="form-control select2" required>
                    <option value="">Select Option</option>
                    @foreach ($reasons as $reason)
                        <option value="{{ $reason->id }}" @if($reason->id == $meeting->reason_id) selected @endif>{{ $reason->name }}</option>
                    @endforeach
                </select>
            </div>
            @error('reason_id')
                <div class="validate-error">{{ $message }}</div>
            @enderror

            @if($meeting->meeting_type_id == 1)
                <div class="form-group">
                    <label for="exampleInputEmail1">Select Associate</label>
                    <select name="associate_id" class="form-control select2" required>
                        <option value="">Select Option</option>
                        @foreach ($users as $user)
                            <option value="{{ $user->id }}" @if($user->id == $meeting->associate_id) selected @endif>{{ $user->name }}</option>
                        @endforeach
                    </select>
                </div>
                @error('campaign_id')
                    <div class="validate-error">{{ $message }}</div>
                @enderror

            @endif

            <div class="row">
                <div class="col-md-4">
                    @php
                        $date=date_create($meeting->date);
                    @endphp
                    <div class="form-group">
                        <label for="">Select Date</label>
                        <input type="text" class="form-control datetimepicker-input datepicker" name="date" value="{{ date_format($date,'d/m/Y') }}" data-toggle="datetimepicker" data-target=".datepicker"/>
                    </div>
                    @error('date')
                        <div class="validate-error">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-4">
                    <div class="form-group" data-target-input="nearest">
                        <label for="exampleInputEmail1">Select Start Time</label>
                        <input type="text" class="form-control datetimepicker-input timepicker1" name="start_time" value="{{ $meeting->start_time }}" data-toggle="datetimepicker" data-target=".timepicker1"/>
                    </div>
                    @error('start_time')
                        <div class="validate-error">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-4">
                    <div class="form-group" data-target-input="nearest">
                        <label for="exampleInputEmail1">Select End Time</label>
                        <input type="text" class="form-control datetimepicker-input timepicker2" name="end_time" value="{{ $meeting->end_time }}" data-toggle="datetimepicker" data-target=".timepicker2"/>
                    </div>
                    @error('end_time')
                        <div class="validate-error">{{ $message }}</div>
                    @enderror
                </div>
            </div>

            @php
                $attendees = $meeting->attendees->pluck('user_id')->toArray();
            @endphp

            <div class="form-group">
                <label for="exampleInputEmail1">Select Attendees</label>
                <select name="attendees[]" class="form-control select2" multiple required>
                    @foreach ($users as $user)
                        <option value="{{ $user->id }}" @if(in_array($user->id, $attendees)) selected @endif>{{ $user->name }}</option>
                    @endforeach
                </select>
            </div>
            @error('attendees')
                <div class="validate-error">{{ $message }}</div>
            @enderror

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


@section('scripts')

<script>
    $(function () {
        $('.timepicker1').datetimepicker({
            format: 'LT'
        });

        $('.timepicker2').datetimepicker({
            format: 'LT'
        });

        $('.datepicker').datetimepicker({
            format: 'L',
            format: 'DD/MM/YYYY',
            keepInvalid: false
        });
    });
</script>

@endsection
