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

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!--- three boxes section --->
    <div class="row">
        <div class="container">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 threeBoxesContainer">

                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 threeBoxesInner">
                    <div class="col-lg-12">
                        <h3>$ServiceTitle1</h3>
                        <p>$ServiceDesc1</p>
                        <button class="btn btn-success"><a href="services.html">READ MORE</a></button>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 threeBoxesInner">
                    <div class="col-lg-12">
                        <h3>$ServiceTitle2</h3>
                        <p>$ServiceDesc2</p>
                        <button class="btn btn-success"><a href="#">READ MORE</a></button>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 threeBoxesInner">
                    <div class="col-lg-12">
                        <h3>$ServiceTitle3</h3>
                        <p>$ServiceDesc3</p>
                        <button class="btn btn-success"><a href="#">READ MORE</a></button>
                    </div>
                </div>

            </div>
        </div>
    </div>

</div>

<!--- quote area --->
<div class="container">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 statementDiv" style="margin-top: 22%;">
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
        <% loop $Categories %>
            <button class="btn btn-default filter" data-filter=".$Title">$Title</button>
        <% end_loop %>
        <!--<button class="btn btn-default filter" data-filter="all">All</button>
        <button class="btn btn-default filter" data-filter=".outdoors">Outdoors</button>
        <button class="btn btn-default filter" data-filter=".indoors">Indoors</button>-->
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

<!--- project 1 modal --->
<% loop $FeaturedWorks %>
    <div class="modal fade $ID" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="container">
                    <h1>$ProjectTitle</h1>
                    <h4>View this project's various phases from start to finish.</h4>
                </div>
                <!--- source code for following carousel obtained from http://bootsnipp.com/snippets/featured/article-carousel-with-images-indicators --->
                <div class="carousel slide mainGallerySlide" id="$ID">
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner mainGallerySlideInnerImages cont-slider">
                        <div class="item active">
                            <img src="images/projects_01.jpg" class="img-responsive" title="Test Image">
                            <div class="carousel-caption" style="background-color: rgba(0,0,0,0.5); margin-bottom: 7%;">
                                <h4>First phase of this project was design.</h4>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/projects_03.jpg" class="img-responsive" title="Test Image">
                            <div class="carousel-caption" style="background-color: rgba(0,0,0,0.5); margin-bottom: 7%;">
                                <h4>Second phase was actual implementation.</h4>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/projects_01.jpg" class="img-responsive" title="Test Image">
                            <div class="carousel-caption" style="background-color: rgba(0,0,0,0.5); margin-bottom: 7%;">
                                <h4>Third phase was ...</h4>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/projects_03.jpg" class="img-responsive" title="Test Image">
                            <div class="carousel-caption" style="background-color: rgba(0,0,0,0.5); margin-bottom: 7%;">
                                <h4>Fourth phase was ...</h4>
                            </div>
                        </div>
                    </div>
                    <!-- Indicators -->
                    <ol class="carousel-indicators mainGallerySlideImageIndicators">
                        <li class="active" data-slide-to="0" data-target="#$ID">
                            <img src="images/projects_01.jpg" class="img-responsive" title="Test Image">
                        </li>
                        <li class="" data-slide-to="1" data-target="#$ID">
                            <img src="images/projects_03.jpg" class="img-responsive" title="Test Image">
                        </li>
                        <li class="" data-slide-to="2" data-target="#$ID">
                            <img src="images/projects_01.jpg" class="img-responsive" title="Test Image">
                        </li>
                        <li class="" data-slide-to="3" data-target="#$ID">
                            <img src="images/projects_03.jpg" class="img-responsive" title="Test Image">
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

<!--- quote area --->
<div class="container">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 statementDiv">
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
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="col-lg-12 reviewBox">
                        <h3>Bathroom renovation</h3>
                        <i class="fa fa-calendar"></i>
                        &nbsp;
                        <span>6th July 2014</span>
                        <br>
                        <i class="fa fa-user"></i>
                        &nbsp;
                        <span>John Doe</span>
                        <br><br>
                        <p>"It's taken a while to write this review, but we are very happy with the great job Paul and his team of contractors did in renovating our bathroom. As customers, we were pretty demanding. Paul responded very professionally when any issues arose. Hopefully the photos show the great job that was done
                            Work carried out by the owner & subcontractors"</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="col-lg-12 reviewBox">
                        <h3>New Window</h3>
                        <i class="fa fa-calendar"></i>
                        &nbsp;
                        <span>29th August 2015</span>
                        <br>
                        <i class="fa fa-user"></i>
                        &nbsp;
                        <span>John Doe</span>
                        <br><br>
                        <p>"Liked the solution they came up with to install the type of French doors we wanted. Came back to do finishing when asked.
                            Work carried out by the owner & subcontractors"</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="col-lg-12 reviewBox">
                        <h3>Resize window</h3>
                        <i class="fa fa-calendar"></i>
                        &nbsp;
                        <span>12th August 2014</span>
                        <br>
                        <i class="fa fa-user"></i>
                        &nbsp;
                        <span>John Doe</span>
                        <br><br>
                        <p>"Very good. Would engage them again if required.
                            Work carried out by the owner/operator"</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="col-lg-12 reviewBox">
                        <h3>New Kitchen</h3>
                        <i class="fa fa-calendar"></i>
                        &nbsp;
                        <span>7th July 2014</span>
                        <br>
                        <i class="fa fa-user"></i>
                        &nbsp;
                        <span>John Doe</span>
                        <br><br>
                        <p>"Paul and his team renovated my kitchen including regibbing, reroofing, moving a wall and flooring adn putting in the new ktichen. They did a fantastic job especially with teh complications e.g uneven flooring to begin with, I mis measured the kitchen unit so had to reorder and wait for new bits. Paul was lovely to deal with, completely professional and more than helpful. I would recommend him and his team to anyone.
                            Work carried out by the owner/operator"</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>