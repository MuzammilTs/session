
@extends('layouts.user')

@section('title', $meeting->type->name.' - Mark Complete')


@section('content')

<div class="back-area mb-3">
    <a href="{{ route('meetings.index', $meeting->meeting_type_id) }}" class="btn btn-secondary btn-sm"><i class="fas fa-arrow-left mr-2"></i> Go Back</a>
</div>

<!-- Default box -->
<div class="card">
    <div class="card-header">
        <h3 class="card-title">{{ $meeting->type->name }} Detail</h3>
    </div>

    <div class="card-body">

        <table class="table table-bordered">
            <tbody>
                <tr>
                    <th>Session ID</th>
                    <td>{{ $meeting->id ?? '' }}</td>
                    <th>Campaign Name</th>
                    <td>{{ $meeting->campaign->name ?? '' }}</td>
                    <th>Reason</th>
                    <td>{{ $meeting->reason->name ?? '' }}</td>
                </tr>
                @php
                    $date=date_create($meeting->date);
                @endphp
                <tr>
                    <th>Scheduled Date</th>
                    <td>{{ date_format($date,'d-m-Y') }}</td>
                    <th>Start Time</th>
                    <td>{{ $meeting->start_time ?? '' }}</td>
                    <th>End Time</th>
                    <td>{{ $meeting->end_time ?? '' }}</td>
                </tr>
                @if($meeting->associate_id)
                    <tr>
                        <th>Associate</th>
                        <td colspan="5">{{ $meeting->associate->name ?? '' }}</td>
                    </tr>
                @endif
                <tr>
                    <th>Attendees</th>
                    <td colspan="5">
                        @foreach ($meeting->attendees as $attendee)
                            {{ $attendee->user->name }}
                            @if (!$loop->last)
                                ,
                            @endif
                        @endforeach
                    </td>
                </tr>
            </tbody>
        </table>

    </div>

</div>
<!-- /.card -->


<!-- Default box -->
<div class="card">
    <div class="card-header">
        <h3 class="card-title">Complete the Session</h3>
    </div>

    <form action="{{ route('meetings.complete.submit', $meeting->id) }}" method="post" autocomplete="off">
        @csrf
        <div class="card-body">

            @if($meeting->meeting_type_id == 2)

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

    });

</script>


@endsection
