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
            <span>info@redefinerenos.com</span>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <i class="fa fa-phone" style="font-size: 1.9em !important; margin-top: 19%;"></i>
            &nbsp;
            <span>123-456-789</span>
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
            <!--<a class="navbar-brand" href="#">
                <img src="images/logo/trans_log.png" class="img-responsive" width="350">
            </a>-->
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav nav-justified">
                <% loop $Menu(1) %>
                    <li><a class="$LinkingMode" href="$Link">$MenuTitle</a></li>
                    <!--<li><a href="services.html">SERVICES</a></li>
                    <li><a href="about.html">ABOUT</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#contactFormModal1">CONTACT</a></li>-->
                <% end_loop %>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>