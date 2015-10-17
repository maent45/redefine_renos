<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bannerAndServicesWrapper">
    <!--- main banner --->
    <div id="carousel-example-generic" class="carousel slide bannerCarousel" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <% loop $SlideShows %>
                <% if Pos = 1 %>
                    <div class="item active img-responsive">
                        $SlideShowImage.CroppedImage(1583,460)
                    </div>
                <% else %>
                    <div class="item img-responsive">
                        $SlideShowImage.CroppedImage(1583,460)
                    </div>
                <% end_if %>
            <% end_loop %>
        </div>
        <!-- Carousel Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>

<!---------------------------------------------------------------------------------------------------------->

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mainDiv">
    <!--- main banner --->
    <div id="carousel-example-generic" class="carousel slide testCarousel" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <% loop $SlideShows %>
                <% if Pos = 1 %>
                    <div class="item active img-responsive">
                        $SlideShowImage.CroppedImage(1583,460)
                    </div>
                <% else %>
                    <div class="item img-responsive">
                        $SlideShowImage.CroppedImage(1583,460)
                    </div>
                <% end_if %>
            <% end_loop %>
        </div>
        <!-- Carousel Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 testServicesDiv">
        <div class="container">
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <p>testttt Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.</p>
                    <p>testttt Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.</p>
                    <p>testttt Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.</p>

                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <p>testttt Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <p>testttt Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.Always willing to go the extra mile and specializes in the deployment of HTML5, CSS3, Php, SQL, Content Management Systems, and cloud technologies.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<!--- three boxes section
<div class="container">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 threeBoxesContainer">

        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 threeBoxesInner">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <h3>$ServiceTitle1</h3>
                <p>$ServiceDesc1</p>
                <button class="btn btn-success"><a href="#">READ MORE</a></button>
            </div>
        </div>

        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 threeBoxesInner">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <h3>$ServiceTitle2</h3>
                <p>$ServiceDesc2</p>
                <button class="btn btn-success"><a href="#">READ MORE</a></button>
            </div>
        </div>

        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 threeBoxesInner">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <h3>$ServiceTitle3</h3>
                <p>$ServiceDesc3</p>
                <button class="btn btn-success"><a href="#">READ MORE</a></button>
            </div>
        </div>

    </div>
</div>--->

<!--- quote area --->
<div class="container">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 topStatementDiv">
        <h2>"$Quote1"</h2>
    </div>
</div>

<!--- featured works section --->
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 featuredWorksWrapper">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 featuredWorksHeader">
        <h2>Featured Works</h2>
        <div style="padding: 1px; background-color: darkgray; width: 20%; margin: auto; margin-bottom: 0%;"></div>
        <h4>View our latest projects</h4>
        <br>
    </div>

    <!--- mixItUp plugin controls --->
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mixItUpControls">
        <button class="btn btn-default filter" data-filter="all">All</button>
        <% loop $Categories %>
            <button class="btn btn-default filter" data-filter=".$ID">$Title</button>
        <% end_loop %>
    </div>

    <!--- main photo gallery --->
    <div class="row featuredWorksGallery gallery" id="Container">

        <!--- loop over all FeaturedWorks --->
        <% loop $FeaturedWorks %>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 mix $FeaturedWorkCategoryID">
                <div class="col-lg-12 imageHoverEffect">
                    <h4 style="color: white; margin-top: 30%;">$ProjectBriefDesc</h4>
                    <i class="fa fa-expand" data-toggle="modal" data-target=".$ID"></i>
                </div>
                <img src="$ProjectCoverImage.URL" class="img-responsive" title="Test Image">
                <div class="col-lg-12 innerImageDesc">
                    <h3>$ProjectTitle</h3>
                    <h4>$ProjectDate.Nice</h4>
                </div>
            </div>
        <% end_loop %>

    </div>
</div>

<% if $FeaturedWorks %>
    <% loop $FeaturedWorks %>
        <div class="modal fade $ID" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header" style="padding-bottom: 5%;">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" style="font-size: 2em; color: #222;">&times;</span></button>
                        <h1 class="modal-title">$ProjectTitle</h1>
                        <h4 class="pull-left">$ProjectBriefDesc</h4>
                    </div>
                    <!--<div class="container">
                        <h1 class="modal-title">$ProjectTitle</h1>
                        <i class="fa fa-close" style="color: #222; font-size: 2em;"></i>
                        <br/><br/>
                        <h4 class="pull-left">$ProjectBriefDesc</h4>
                    </div>-->
                    <!--- source code for following carousel obtained from http://bootsnipp.com/snippets/featured/article-carousel-with-images-indicators --->
                    <div class="carousel slide mainGallerySlide" id="$ID">
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner mainGallerySlideInnerImages cont-slider">
                            <div class="item active">
                                <% if $ProjectPhaseImg1 %>
                                    <img src="$ProjectPhaseImg1.URL" class="img-responsive" title="Test Image">
                                <% else %>
                                    <img src="$ThemeDir/images/No_Image.jpg" class="img-responsive" title="Test Image">
                                <% end_if %>

                                <% if $ProjectPhaseDesc1 %>
                                    <div class="carousel-caption" style="background-color: rgba(0,0,0,0.5); margin-bottom: 7%;">
                                        <h4>$ProjectPhaseDesc1</h4>
                                    </div>
                                <% end_if %>
                            </div>
                            <div class="item">
                                <% if $ProjectPhaseImg2 %>
                                    <img src="$ProjectPhaseImg2.URL" class="img-responsive" title="Test Image">
                                <% else %>
                                    <img src="$ThemeDir/images/No_Image.jpg" class="img-responsive" title="Test Image">
                                <% end_if %>

                                <% if $ProjectPhaseDesc2 %>
                                    <div class="carousel-caption" style="background-color: rgba(0,0,0,0.5); margin-bottom: 7%;">
                                        <h4>$ProjectPhaseDesc2</h4>
                                    </div>
                                <% end_if %>
                            </div>
                            <div class="item">
                                <% if $ProjectPhaseImg3 %>
                                    <img src="$ProjectPhaseImg3.URL" class="img-responsive" title="Test Image">
                                <% else %>
                                    <img src="$ThemeDir/images/No_Image.jpg" class="img-responsive" title="Test Image">
                                <% end_if %>

                                <% if $ProjectPhaseDesc3 %>
                                    <div class="carousel-caption" style="background-color: rgba(0,0,0,0.5); margin-bottom: 7%;">
                                        <h4>$ProjectPhaseDesc3</h4>
                                    </div>
                                <% end_if %>
                            </div>
                            <div class="item">
                                <% if $ProjectPhaseImg4 %>
                                    <img src="$ProjectPhaseImg4.URL" class="img-responsive" title="Test Image">
                                <% else %>
                                    <img src="$ThemeDir/images/No_Image.jpg" class="img-responsive" title="Test Image">
                                <% end_if %>

                                <% if $ProjectPhaseDesc4 %>
                                    <div class="carousel-caption" style="background-color: rgba(0,0,0,0.5); margin-bottom: 7%;">
                                        <h4>$ProjectPhaseDesc4</h4>
                                    </div>
                                <% end_if %>
                            </div>
                            <div class="item">
                                <% if $ProjectPhaseImg5 %>
                                    <img src="$ProjectPhaseImg5.URL" class="img-responsive" title="Test Image">
                                <% else %>
                                    <img src="$ThemeDir/images/No_Image.jpg" class="img-responsive" title="Test Image">
                                <% end_if %>

                                <% if $ProjectPhaseDesc5 %>
                                    <div class="carousel-caption" style="background-color: rgba(0,0,0,0.5); margin-bottom: 7%;">
                                        <h4>$ProjectPhaseDesc5</h4>
                                    </div>
                                <% end_if %>
                            </div>
                            <div class="item">
                                <% if $ProjectPhaseImg6 %>
                                    <img src="$ProjectPhaseImg6.URL" class="img-responsive" title="Test Image">
                                <% else %>
                                    <img src="$ThemeDir/images/No_Image.jpg" class="img-responsive" title="Test Image">
                                <% end_if %>

                                <% if $ProjectPhaseDesc6 %>
                                    <div class="carousel-caption" style="background-color: rgba(0,0,0,0.5); margin-bottom: 7%;">
                                        <h4>$ProjectPhaseDesc6</h4>
                                    </div>
                                <% end_if %>
                            </div>
                        </div>

                        <!-- Indicators -->
                        <ol class="carousel-indicators mainGallerySlideImageIndicators">

                            <li class="" data-slide-to="0" data-target="#$ID">
                                <% if $ProjectPhaseImg1 %>
                                    <img src="$ProjectPhaseImg1.URL" class="img-responsive" title="Test Image">
                                <% end_if %>
                            </li>

                            <li class="" data-slide-to="1" data-target="#$ID">
                                <% if $ProjectPhaseImg2 %>
                                    <img src="$ProjectPhaseImg2.URL" class="img-responsive" title="Test Image">
                                <% end_if %>
                            </li>

                            <li class="" data-slide-to="2" data-target="#$ID">
                                <% if $ProjectPhaseImg3 %>
                                    <img src="$ProjectPhaseImg3.URL" class="img-responsive" title="Test Image">
                                <% end_if %>
                            </li>

                            <li class="" data-slide-to="3" data-target="#$ID">
                                <% if $ProjectPhaseImg4 %>
                                    <img src="$ProjectPhaseImg4.URL" class="img-responsive" title="Test Image">
                                <% end_if %>
                            </li>

                            <li class="" data-slide-to="4" data-target="#$ID">
                                <% if $ProjectPhaseImg5 %>
                                    <img src="$ProjectPhaseImg5.URL" class="img-responsive" title="Test Image">
                                <% end_if %>
                            </li>

                            <li class="" data-slide-to="5" data-target="#$ID">
                                <% if $ProjectPhaseImg6 %>
                                    <img src="$ProjectPhaseImg6.URL" class="img-responsive" title="Test Image">
                                <% end_if %>
                            </li>

                        </ol>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#$ID" role="button" data-slide="prev">
                            <i class="fa fa-long-arrow-left" style="font-size: 2em; margin-top: 190%;"></i>
                        </a>
                        <a class="right carousel-control" href="#$ID" role="button" data-slide="next">
                            <i class="fa fa-long-arrow-right" style="font-size: 2em; margin-top: 190%;"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    <% end_loop %>
<% end_if %>

<!--- quote area --->
<div class="container">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 statementDiv" style="margin-top: 5%;">
        <h2>"$Quote2"</h2>
    </div>
</div>

<!--- reviews section --->
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 reviewsSectionWrapper">
    <div class="container">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 reviewsSection">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 reviewsHeader">
                <h2>Client Reviews</h2>
                <div style="padding: 1px; background-color: darkgray; width: 20%; margin: auto; margin-bottom: 1%;"></div>
                <h4>What our clients are saying.</h4>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 reviewsSectionContainer">
                <!--- loop the reviews --->
                <% if $Reviews %>
                    <% loop $Reviews %>
                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                            <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12 reviewBox">
                                <% if $CustReviewTitle %>
                                    <h3>$CustReviewTitle</h3>
                                <% end_if %>
                                <% if $CustReviewDate %>
                                    <i class="fa fa-calendar"></i>
                                    &nbsp;
                                    <span>$CustReviewDate.Nice</span>
                                    <br>
                                <% end_if %>
                                <% if $CustReviewName %>
                                    <i class="fa fa-user"></i>
                                    &nbsp;
                                    <span>$CustReviewName</span>
                                <% end_if %>
                                <br><br>
                                <% if $CustReview %>
                                    <p><span style="font-weight: 900 !important; color: #000;">"</span>$CustReview<span style="font-weight: 900 !important; color: #000">"</span></p>
                                <% end_if %>
                            </div>
                        </div>
                    <% end_loop %>
                <% end_if %>
                <!--- finish looping the Reviews Section --->
            </div>
        </div>
    </div>
</div>