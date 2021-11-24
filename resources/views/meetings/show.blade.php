
@extends('layouts.user')

@section('title', $meeting->type->name.' Detail')


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
                @if($meeting->head_count)
                    <tr>
                        <th>Head Count</th>
                        <td colspan="5">{{ $meeting->head_count }}</td>
                    </tr>
                @endif
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
                @if($meeting->synopsis)
                    <tr>
                        <th>Synopsis</th>
                        <td colspan="5">{!! $meeting->synopsis !!}</td>
                    </tr>
                @endif
                @if($meeting->status == 1)
                    <tr>
                        <th>Rating & Review</th>
                        <td colspan="5">
                            <div class="starrr">
                                @for ($i = 0; $i < 5; $i++)
                                    <i class="fas fa-star @if($i < $meeting->rating) full @endif"></i>
                                @endfor
                            </div>
                            <p class="mt-3 mb-0">{{ $meeting->comments }}</p>
                        </td>
                    </tr>
                @endif
            </tbody>
        </table>

    </div>

</div>
<!-- /.card -->


@if($meeting->status == 1)

    @php
        $attendees = $meeting->attendees->pluck('user_id')->toArray();
    @endphp

    <!-- Default box -->
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Session Reviews</h3>

            @php
                $reviews = $meeting->reviews->pluck('user_id')->toArray();
            @endphp

            @if(in_array(Auth::user()->id, $attendees) && in_array(Auth::user()->id, $reviews) == false)
                <div class="card-tools">
                    <a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal-review">
                        <i class="fas fa-plus"></i> Add Review
                    </a>
                </div>
            @endif

        </div>

        <div class="card-body">
            @if(count($meeting->reviews) > 0)
                <ul class="item-reviews">
                    @foreach ($meeting->reviews as $review)
                        <li>
                            <div class="starrr">
                                @for ($i = 0; $i < 5; $i++)
                                    <i class="fas fa-star @if($i < $review->rating) full @endif"></i>
                                @endfor
                            </div>
                            <p><i class="fas fa-envelope mr-2"></i> {{ $review->comments ?? '' }}</p>
                            <p><i class="fas fa-user mr-2"></i> {{ $review->user->name ?? '' }}</p>
                        </li>
                    @endforeach
                </ul>
            @else
                <h4 class="text-center">No reviews</h4>
            @endif
        </div>

    </div>
    <!-- /.card -->




    @if(in_array(Auth::user()->id, $attendees))

        <div class="modal fade" id="modal-review">
            <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                <h4 class="modal-title">Rate & Review</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>

                <form action="{{ route('meeting-reviews.store', $meeting->id) }}" method="post" autocapitalize="off">
                    @csrf
                    <div class="modal-body">
                        <div class="form-group">
                            <label class="rating">Rating</label>
                            <div class="rating-area">
                                <div class='starrr rating' id="rating"></div>
                                <input type="hidden" value="0" name="rating">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="">Feedback</label>
                            <textarea name="comments" rows="4" class="form-control" placeholder="Write your feedback about the session" required></textarea>
                        </div>

                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>

                </form>
            </div>
            <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

    @endif


@endif



@endsection


@section('scripts')

@if($meeting->status == 1)

    <script>

        $(function () {
            $('#rating').starrr({
                rating: 0
            });
            $('.starrr').on('starrr:change', function(e, value){
                $(this).next('input').val(value);
            });

        });

    </script>

@endif

@endsection
