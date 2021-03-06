<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Vulnerability Assessment</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="{{ URL::asset('assets/bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="{{ URL::asset('assets/dist/css/AdminLTE.min.css') }}">
    <link rel="stylesheet" href="{{ URL::asset('assets/dist/css/skins/_all-skins.min.css') }}">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="{{ URL::asset('assets/plugins/jQuery/jquery-2.2.3.min.js') }}"></script>
    <script src="{{ URL::asset('assets/bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/slimScroll/jquery.slimscroll.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/fastclick/fastclick.js') }}"></script>
    <script src="{{ URL::asset('assets/dist/js/app.min.js') }}"></script>
    <script src="{{ URL::asset('assets/dist/js/demo.js') }}"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <header class="main-header">
        <a href="{{ URL::to('/summary') }}" class="logo">
            <span class="logo-lg">Assessment Result</span>
        </a>
        <nav class="navbar navbar-static-top">
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">

                </ul>
            </div>
        </nav>
    </header>
    <aside class="main-sidebar">
        <section class="sidebar">
            <ul class="sidebar-menu">
                <li class="header">MAIN NAVIGATION</li>
                <li class="active"><a href="{{ URL::to('/summary') }}"><i class="fa fa-bar-chart"></i> Summary</a></li>
                <li class="treeview active">
                    <a href="#">
                        <i class="fa fa-table"></i> <span>Data Management</span>
                        <span class="pull-right-container">
                          <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="{{ URL::to('/category') }}"><i class="fa fa-circle-o"></i> Data Category</a></li>
                        <li><a href="{{ URL::to('/host') }}"><i class="fa fa-circle-o"></i> Data Host</a></li>
                    </ul>
                </li>
            </ul>
        </section>
    </aside>

    <div class="content-wrapper">

        <!-- Main content -->
        <section class="content">
            @yield('content')
        </section>
    </div>

    <div class="control-sidebar-bg"></div>
</div>
<div class="modal" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title"></h3>
            </div>
            <div class="modal-body">
                <p>One fine body&hellip;</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
