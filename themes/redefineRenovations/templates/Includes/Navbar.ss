<!--- top logo section --->
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 topLogoHolder" style="background-color: #333;">
    <div class="container">
        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
            <a class="navbar-brand" href="$AbsoluteBaseURL">
                <img src="$ThemeDir/images/logo/trans_log.png" class="img-responsive" width="330">
            </a>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <i class="fa fa-envelope"></i>
            &nbsp;
            <span>$emailAddress</span>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <i class="fa fa-phone topLogoHolderPhone"></i>
            &nbsp;
            <span>$phoneNumber</span>
        </div>
    </div>
</div>

<!--- navbar --->
<nav class="navbar-inverse">
    <div class="container-fluid container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav nav-justified">
                <% loop $Menu(1) %>
                    <li><a class="$LinkingMode" href="$Link">$MenuTitle</a></li>
                <% end_loop %>
                <li><a href="#" data-toggle="modal" data-target="#contactFormModal1">Contact Us</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>