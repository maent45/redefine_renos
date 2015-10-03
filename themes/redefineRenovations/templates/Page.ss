<!DOCTYPE html>
<html lang="en">
<head>
    <% base_tag %>
    $MetaTags(false)
    <title>$Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

    <title>Renovation Site</title>

    <!--- css links --->
    <link rel="stylesheet" href="$ThemeDir/css/bootstrap.min.css">
    <link rel="stylesheet" href="$ThemeDir/css/custom.css">
    <!--- call services page css --->
    <link rel="stylesheet" href="$ThemeDir/css/services.css">
    <!--- call about page css --->
    <link rel="stylesheet" href="$ThemeDir/css/about.css">

    <!--- font awesome --->
    <link rel="stylesheet" href="$ThemeDir/css/font-awesome/css/fonts/font-awesome.min.css">

    <!--- photo gallery plugin css --->
    <link rel="stylesheet" href="$ThemeDir/css/simplelightbox.min.css">

    <!--- google fonts --->
    <link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Ruda' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
</head>
<body>

<!--- top logo section --->
<div class="col-lg-12 topLogoHolder" style="background-color: #333;">
    <div class="container">
        <div class="col-lg-4">
            <a class="navbar-brand" href="$AbsoluteBaseURL">
                <img src="$ThemeDir/images/logo/trans_log.png" class="img-responsive" width="330">
            </a>
        </div>
        <div class="col-lg-3">
            <i class="fa fa-envelope"></i>
            &nbsp;
            <span>info@redefinerenos.com</span>
        </div>
        <div class="col-lg-3">
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

<!-- Contact Form Modal -->
<div class="modal fade" id="contactFormModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="myModalLabel" style="color: #009C2F;">Enquiry Form</h3>
                <i class="fa fa-envelope" style="margin-top: 2%; font-size: 1.8em;"></i>
                &nbsp;
                <span>info@redefinerenos.com</span>
                &nbsp;
                <i class="fa fa-phone" style="font-size: 1.9em !important; margin-top: 2%;"></i>
                &nbsp;
                <span>123-456-789</span>
                <h5 style="margin-top: 2%;">Contact us directly or leave us a message and we'll get in touch shortly.</h5>
            </div>
            <form name="contactForm" onsubmit="return validateContactForm()" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <label>Name:</label>
                        <br/>
                        <span id="requiredNameSpan" style="color: #d43f3a; visibility: hidden;">Please provide your name.</span>
                        <input type="text" class="form-control" name="contactName" id="nameInput">
                    </div>
                    <div class="form-group">
                        <label>Email:</label>
                        <span id="requiredEmailSpan" style="color: #d43f3a; visibility: hidden;"></span>
                        <input type="text" class="form-control" name="contactEmail" id="emailInput">
                    </div>
                    <div class="form-group">
                        <label>Comment:</label>
                        <span id="requiredCommentSpan" style="color: #d43f3a; visibility: hidden;"></span>
                        <textarea class="form-control" rows="5" name="contactCommentInput" id="contactCommentField"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-success pull-right" id="contactSubmit" type="submit" onclick="">Send Message</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!--- dynamic main body section --->
<div class="container" style="margin-bottom: 3%;">
    <h1>$Title</h1>
    $BreadCrumbs
    <!--- add $Content variable to input generic page content --->
    <div style="margin-top: 2%;">
        $Content
        $Form
    </div>
</div>

<!--- footer section --->
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 footer">
    <div class="container">
        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12" style="text-align: center; color: #777;">
            <h5>Copyright &copy; 2015 Redefine Renovations</h5>
        </div>
        <div class="col-lg-3"></div>
        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 footerContact">
            <!--<h4>Main Office</h4>
            <div style="padding: 1px; background-color: #333; width: 20%; margin-bottom: 5%;"></div>
            <i class="fa fa-map-marker"></i>
            <span class="pull-right">
                23 Trebann St Paparangi,
                <br>
                <span class="pull-right">
                    Newlands,
                    6037
                </span>
            </span>-->
            <h4>Contact Details</h4>
            <div style="padding: 1px; background-color: #333; width: 20%; margin-bottom: 5%;"></div>
            <i class="fa fa-phone"></i>
        <span class="pull-right">
            123-456-789
        </span>
            <br><br>
            <i class="fa fa-envelope"></i>
        <span class="pull-right">
            info@redefinerenos.com
        </span>
        </div>

        <!--<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 footerSocial">
            <h4 style="margin-left: 15%;">Follow us</h4>
            <div style="padding: 1px; background-color: #333; width: 20%; margin-bottom: 5%; margin-left: 15%;"></div>
            <i class="fa fa-facebook" style="margin-left: 15% !important;"></i>
            &nbsp;
            <i class="fa fa-twitter"></i>
        </div>-->

        <div class="col-lg-2">

        </div>

        <!--<div class="col-lg-5 col-md-6 col-sm-6 col-xs-12">
            <h4>Business Hours</h4>
            <div style="padding: 1px; background-color: #333; width: 20%; margin-bottom: 5%;"></div>
            <p>Our support available to help you 24 hours a day, seven days a week.</p>
            <p class="pull-left">Monday-Friday:</p>
            <p class="pull-right">9am to 5pm</p>
            <br><br>
            <p class="pull-left">Saturday:</p>
            <p class="pull-right">10am to 2pm</p>
            <br><br>
            <p class="pull-left">Sunday:</p>
            <p class="pull-right">Closed</p>
        </div>-->
    </div>
</div>

<!--- scripts --->
<script src="$ThemeDir/javascript/jquery-2.1.4.min.js"></script>
<script src="$ThemeDir/javascript/bootstrap.min.js"></script>

<!--- mixItUp plugin js --->
<script src="$ThemeDir/javascript/jquery.mixitup.js"></script>
<!--- photo gallery plugin js --->
<script src="$ThemeDir/javascript/simple-lightbox.min.js"></script>

<script src="$ThemeDir/javascript/imageHoverPlugin.js"></script>

<!--- photo gallery custom js --->
<script src="$ThemeDir/javascript/custom.js"></script>

<script src="$ThemeDir/javascript/formValidation.js"></script>

</div>

</body>
</html>