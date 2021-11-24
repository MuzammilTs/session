<nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
       <!-- Add icons to the links using the .nav-icon class
          with font-awesome or any other icon font library -->
       <li class="nav-item">
          <a href="{{ route('home') }}" class="nav-link {{ (request()->is('home')) ? 'active' : '' }}">
             <i class="nav-icon fas fa-tachometer-alt"></i>
             <p>
                Dashboard
             </p>
          </a>
        </li>

        @foreach ($menu_meeting_types as $item)
            @php
                $campaigns = $item->campaigns->pluck('id')->toArray();
            @endphp
            @if(in_array(Auth::user()->campaign_id, $campaigns) || count($campaigns) == 0 || in_array(Auth::user()->roles[0]->name, ["Super Admin", "Director"]))
                <li class="nav-item">
                    <a href="{{ route('meetings.index', $item->id) }}" class="nav-link {{ (request()->is('sessions/'.$item->id, 'sessions/'.$item->id.'/*')) ? 'active' : '' }}">
                    <i class="nav-icon {{ $item->icon ?? '' }}"></i>
                    <p>
                        {{ $item->name }}
                    </p>
                    </a>
                </li>
            @endif
        @endforeach

        <li class="nav-item">
            <a href="{{ route('meeting-requests.index') }}" class="nav-link {{ (request()->is('session-requests', 'session-requests/*')) ? 'active' : '' }}">
                <i class="nav-icon fas fa-address-book"></i>
                <p>
                    Session Requests
                </p>
            </a>
        </li>

        @if(in_array(Auth::user()->roles[0]->name, ['Super Admin', 'Director']))

            <li class="nav-header">SETTINGS</li>

            <li class="nav-item {{ (request()->is('users', 'users/*', 'roles', 'roles/*')) ? 'menu-open' : '' }}">
                <a href="#" class="nav-link {{ (request()->is('users', 'users/*', 'roles', 'roles/*')) ? 'active' : '' }}">
                <i class="nav-icon fas fa-users"></i>
                <p>
                    Users
                    <i class="fas fa-angle-left right"></i>
                </p>
                </a>
                <ul class="nav nav-treeview">
                <li class="nav-item">
                    <a href="{{ route('users.index') }}" class="nav-link {{ (request()->is('users', 'users/*')) ? 'active' : '' }}">
                        <i class="far fa-circle nav-icon"></i>
                        <p>User</p>
                    </a>
                </li>

                @if(Auth::user()->roles[0]->name == "Super Admin")
                    <li class="nav-item">
                        <a href="{{ route('roles.index') }}" class="nav-link {{ (request()->is('roles', 'roles/*')) ? 'active' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            <p>User Roles</p>
                        </a>
                    </li>
                @endif
                </ul>
            </li>

            <li class="nav-item">
                <a href="{{ route('campaigns.index') }}" class="nav-link {{ (request()->is('campaigns', 'campaigns/*')) ? 'active' : '' }}">
                <i class="nav-icon fas fa-boxes"></i>
                <p>Campaigns</p>
                </a>
            </li>

            <li class="nav-item">
                <a href="{{ route('reasons.index') }}" class="nav-link {{ (request()->is('reasons', 'reasons/*')) ? 'active' : '' }}">
                <i class="nav-icon fas fa-exclamation-circle"></i>
                <p>Reasons</p>
                </a>
            </li>

            <li class="nav-item">
                <a href="{{ route('meeting-types.index') }}" class="nav-link {{ (request()->is('meeting-types', 'meeting-types/*')) ? 'active' : '' }}">
                <i class="nav-icon fas fa-code-branch"></i>
                <p>Meeting Types</p>
                </a>
            </li>

        @endif

    </ul>
 </nav>
