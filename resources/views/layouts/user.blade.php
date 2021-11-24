<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>@yield('title', 'Default content') - {{ env('APP_NAME') }}</title>
      <link rel="icon" href="{{ asset('assets/img/touchstone-icon.jpg') }}" type="image/x-icon">
      <!-- Google Font: Source Sans Pro -->
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
      <!-- Font Awesome -->
      <link rel="stylesheet" href="{{ asset('assets/plugins/fontawesome-free/css/all.min.css') }}">
      <!-- Theme style -->
      <link rel="stylesheet" href="{{ asset('assets/css/adminlte.min.css') }}">
      <!-- overlayScrollbars -->
      <link rel="stylesheet" href="{{ asset('assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css') }}">
      <!-- Select2 -->
        <link rel="stylesheet" href="{{ asset('assets/plugins/select2/css/select2.min.css') }}">
        <link rel="stylesheet" href="{{ asset('assets/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css') }}">
        <!-- Tempusdominus Bootstrap 4 -->
        <link rel="stylesheet" href="{{ asset('assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css') }}">
        <!-- Star Rating -->
        <link rel="stylesheet" href="{{ asset('assets/css/starrr.css') }}">
        <!-- summernote -->
        <link rel="stylesheet" href="{{ asset('assets/plugins/summernote/summernote-bs4.min.css') }}">
        <!-- Touchstone Css -->
        <link rel="stylesheet" href="{{ asset('assets/css/main.css') }}">
   </head>
   <body class="hold-transition sidebar-mini layout-fixed text-sm">
      <div class="wrapper">
         <!-- Navbar -->
         <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
               <li class="nav-item">
                  <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
               </li>
            </ul>
            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">

                @if(in_array(Auth::user()->roles[0]->name, ['Manager', 'Team Lead']))
                    <li class="nav-item d-none d-sm-inline-block mr-4" style="position: relative;">
                        <button type="button" class="btn btn-sm btn-success dropdown-toggle dropdown-icon btn-schedule" data-toggle="dropdown"><i class="fas fa-calendar mr-2"></i> Schedule Session</button>
                        <div class="dropdown-menu" role="menu" style="">

                            @foreach ($menu_meeting_types as $item)
                                @php
                                    $campaigns = $item->campaigns->pluck('id')->toArray();
                                @endphp
                                @if(in_array(Auth::user()->campaign_id, $campaigns) || count($campaigns) == 0)
                                    @if($loop->first == false)
                                        <div class="dropdown-divider"></div>
                                    @endif
                                    <a class="dropdown-item" href="{{ route('meetings.create', $item->id) }}">{{ $item->name }}</a>

                                @endif

                            @endforeach
                        </div>
                    </li>
                @elseif(Auth::user()->roles[0]->name == 'Associate')
                    <li class="nav-item d-none d-sm-inline-block mr-4" style="position: relative;">
                        <a href="{{ route("meeting-requests.create") }}" class="btn btn-sm btn-success dropdown-icon btn-schedule"><i class="fas fa-calendar mr-2"></i> Request one-on-one Session</a>
                    </li>
                @endif
               <!-- Notifications Dropdown Menu -->
               {{-- <li class="nav-item dropdown notifications">
                  <a class="nav-link" data-toggle="dropdown" href="#">
                    <i class="far fa-bell"></i>
                  <span class="badge badge-warning navbar-badge">{{ count(Auth::user()->unreadNotifications) }}</span>
                  </a>
                  <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                     <span class="dropdown-item dropdown-header">{{ count(Auth::user()->unreadNotifications) }} Notifications</span>
                     <div class="dropdown-divider"></div>

                     @if(count(Auth::user()->unreadNotifications) > 0)
                        @foreach (Auth::user()->unreadNotifications as $item)
                            <a href="#" class="dropdown-item">
                                <span class="float-right text-muted text-sm">{{ $item->updated_at->diffForHumans(); }}</span>
                                <h6>{{ $item->data['title'] ?? '' }}</h6>
                                <p>{{ $item->data['content'] }}</p>
                            </a>
                        @endforeach
                    @else
                        <p class="text-center" style="padding: 15px 0px;">No notifications found</p>
                    @endif
                     <div class="dropdown-divider"></div>
                     <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
                  </div>
               </li> --}}
               <li class="nav-item">
                  <a class="nav-link" href="{{ route('logout') }}" role="button">
                    <i class="fas fa-sign-out-alt"></i> Logout
                  </a>
               </li>
            </ul>
         </nav>
         <!-- /.navbar -->
         <!-- Main Sidebar Container -->
         <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="{{ route('home') }}" class="brand-link">
                <img src="{{ asset('assets/img/touchstone-icon.jpg') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">Touchstone Communications</span>
            </a>
            <!-- Sidebar -->
            <div class="sidebar">
               <!-- Sidebar user panel (optional) -->
               <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                  <div class="image">
                     <img src="{{ asset('assets/img/user2-160x160.jpg') }}" class="img-circle elevation-2" alt="User Image">
                  </div>
                  <div class="info">
                     <a href="#" class="d-block">{{ Auth::user()->name ?? 'Default' }}</a>
                  </div>
               </div>
               <!-- Sidebar Menu -->
               @component('components.user-menu')

               @endcomponent
               <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
         </aside>
         <!-- Content Wrapper. Contains page content -->
         <div class="content-wrapper">
            <!-- Main content -->
            <section class="content pt-4">


                @if(session()->has('error'))
                    <div class="alert alert-danger">
                        {{ session()->get('error') }}
                    </div>
                @endif

                @if(session()->has('success'))
                    <div class="alert alert-success">
                        {{ session()->get('success') }}
                    </div>
                @endif


                @yield('content')


            </section>
            <!-- /.content -->
         </div>
         <!-- /.content-wrapper -->
         <footer class="main-footer">
            <strong>Copyright &copy; {{ date('Y') }} <a href="{{ route('home') }}">Touchstone Communications</a>.</strong>
            All rights reserved.
            <div class="float-right d-none d-sm-inline-block">
               <b>Version</b> {{ env('APP_VERSION') }}
            </div>
         </footer>
      </div>
      <!-- ./wrapper -->
      <!-- jQuery -->
      <script src="{{ asset('assets/plugins/jquery/jquery.min.js') }}"></script>
      <!-- jQuery UI 1.11.4 -->
      <script src="{{ asset('assets/plugins/jquery-ui/jquery-ui.min.js') }}"></script>
      <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
      <script>
         $.widget.bridge('uibutton', $.ui.button)
      </script>
      <!-- Bootstrap 4 -->
      <script src="{{ asset('assets/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
      <!-- Tempusdominus Bootstrap 4 -->
        <script src="{{ asset('assets/plugins/moment/moment.min.js') }}"></script>
        <script src="{{ asset('assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js') }}"></script>
      <!-- overlayScrollbars -->
      <script src="{{ asset('assets/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js') }}"></script>
      <!-- Select2 -->
      <script src="{{ asset('assets/plugins/select2/js/select2.full.min.js') }}"></script>
      <!-- Star Rating -->
      <script src="{{ asset('assets/js/starrr.js') }}"></script>
      <!-- Summernote -->
      <script src="{{ asset('assets/plugins/summernote/summernote-bs4.min.js') }}"></script>
      <!-- AdminLTE App -->
      <script src="{{ asset('assets/js/adminlte.js') }}"></script>

      <script>
        $(function () {
          //Initialize Select2 Elements
            $('.select2').select2();
        });
      </script>


      @yield('scripts')

   </body>
</html>
