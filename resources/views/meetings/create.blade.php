
@extends('layouts.user')

@section('title', 'Create '.$type->name)

@section('content')

<div class="back-area mb-3">
    <a href="{{ route('meetings.index', $type->id) }}" class="btn btn-secondary btn-sm"><i class="fas fa-arrow-left mr-2"></i> Go Back</a>
</div>

<!-- Default box -->
<div class="card">
    <div class="card-header">
        <h3 class="card-title">Create {{ $type->name }} @if(count($type->campaigns)  > 0) for {{ Auth::user()->campaign->name }} @endif</h3>
    </div>

    <form action="{{ route('meetings.store', array($type->id, $meeting_request_id, $meeting_request_user_id)) }}" method="post" autocomplete="off">
        @csrf
        <div class="card-body">

            <div class="form-group">
                <label for="exampleInputEmail1">Select Reason <span>*</span></label>
                <select name="reason_id" class="form-control select2" required>
                    <option value="">Select Option</option>
                    @foreach ($reasons as $reason)
                        <option value="{{ $reason->id }}">{{ $reason->name }}</option>
                    @endforeach
                </select>
            </div>
            @error('reason_id')
                <div class="validate-error">{{ $message }}</div>
            @enderror

            @if($type->id == 1)

                <div class="form-group">
                    <label for="exampleInputEmail1">Select Associate</label>
                    <select name="associate_id" class="form-control select2">
                        <option value="">Select Option</option>
                        @foreach ($associates as $associate)
                            <option value="{{ $associate->id }}" @if($associate->id == $meeting_request_user_id) selected @endif>{{ $associate->name }}</option>
                        @endforeach
                    </select>
                </div>
                @error('associate_id')
                    <div class="validate-error">{{ $message }}</div>
                @enderror

            @endif

            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="">Select Date <span>*</span></label>
                        <input type="text" class="form-control datetimepicker-input datepicker" name="date" data-toggle="datetimepicker" data-target=".datepicker" required/>
                    </div>
                    @error('date')
                        <div class="validate-error">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-4">
                    <div class="form-group" data-target-input="nearest">
                        <label for="exampleInputEmail1">Select Start Time <span>*</span></label>
                        <input type="text" class="form-control datetimepicker-input timepicker1" name="start_time" data-toggle="datetimepicker" data-target=".timepicker1" required/>
                    </div>
                    @error('start_time')
                        <div class="validate-error">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-4">
                    <div class="form-group" data-target-input="nearest">
                        <label for="exampleInputEmail1">Select End Time <span>*</span></label>
                        <input type="text" class="form-control datetimepicker-input timepicker2" name="end_time" data-toggle="datetimepicker" data-target=".timepicker2" required/>
                    </div>
                    @error('end_time')
                        <div class="validate-error">{{ $message }}</div>
                    @enderror
                </div>
            </div>

            <div class="form-group">
                <label for="exampleInputEmail1">Select Attendees <span>*</span></label>
                <select name="attendees[]" id="attendees" class="form-control select2" multiple required>
                    @foreach ($users as $user)
                        <option value="{{ $user->id }}">{{ $user->name }} - {{ $user->campaign->name ?? '' }}</option>
                    @endforeach
                </select>
            </div>
            @error('attendees')
                <div class="validate-error">{{ $message }}</div>
            @enderror

            <div class="form-group">
                <label for="exampleInputEmail1">Select Status <span>*</span></label>
                <select name="status" id="status" class="form-control select2" required>
                    <option value="0">Scheduled</option>
                    <option value="1">Completed</option>
                </select>
            </div>
            @error('status')
                <div class="validate-error">{{ $message }}</div>
            @enderror

            <div class="completed-area" id="completed-area" style="display: none;">

                @if($type->id == 2)

                    <div class="form-group">
                        <label for="exampleInputEmail1">Enter Head Count</label>
                        <input type="number" min="1" name="head_count" placeholder="Head Count" class="form-control">
                    </div>
                    @error('head_count')
                        <div class="validate-error">{{ $message }}</div>
                    @enderror

                @endif

                <div class="form-group">
                    <label for="exampleInputEmail1">Synopsis</label>
                    <textarea name="synopsis" class="form-control summernote" rows="20" placeholder="Synopsis"></textarea>
                </div>
                @error('synopsis')
                    <div class="validate-error">{{ $message }}</div>
                @enderror

                <div class="form-group">
                    <label class="rating">Rating</label>
                    <div class="rating-area">
                        <div class='starrr rating' id="rating"></div>
                        <input type="hidden" value="0" name="rating">
                    </div>
                </div>

                <div class="form-group">
                    <label for="">Feedback</label>
                    <textarea name="comments" rows="4" class="form-control" placeholder="Write your feedback about the session"></textarea>
                </div>

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

        // Summernote
        $('.summernote').summernote({
            toolbar: [
                ['style', ['style']],
                ['font', ['bold', 'underline', 'clear']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['table', ['table']],
                ['insert', ['link', 'video']],
                ['view', []],
            ]
        });

        $('#rating').starrr({
            rating: 0
        });

        $('.starrr').on('starrr:change', function(e, value){
            $(this).next('input').val(value);
        });


        $('#status').on('change', function() {
            var status = this.value;

            if(status == 1){
                $("#completed-area").show();
            }
            else{
                $("#completed-area").hide();
            }
        });
    });
</script>

@endsection
