<!--- main services container --->
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mainServicesPageWrapper">

    <!--- services page header section --->
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 servicesPageHeader">
        <div class="container">
            <h1>$PageHeader</h1>
            <h4>$PageSubHeader</h4>
        </div>
    </div>

    <!--- first service section --->
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 firstServiceSection">
        <div class="container">
            <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 firstServiceHeader">
                <% if $ServiceHead1 %>
                    <h2>$ServiceHead1</h2>
                <% end_if %>
            </div>
            <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 firstServiceLeftSection">
                <% if $ServiceImage1 %>
                    <div class="img-responsive">
                        $ServiceImage1.SetWidth(550)
                    </div>
                <% end_if %>
            </div>
            <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 firstServiceRightSection">
                <% if $ServiceDesc1 %>
                    <p>$ServiceDesc1</p>
                <% end_if %>
            </div>
        </div>
    </div>

    <!--- second service section --->
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 secondServiceSection">
        <div class="container">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 secondServiceHeader">
                <% if $ServiceHead2 %>
                    <h2>$ServiceHead2</h2>
                <% end_if %>
            </div>
            <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 secondServiceLeftSection">
                <% if $ServiceDesc2 %>
                    <p>$ServiceDesc2</p>
                <% end_if %>
            </div>
            <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 secondServiceRightSection">
                <% if $ServiceImage2 %>
                    <div class="img-responsive">
                        $ServiceImage2.SetWidth(500)
                    </div>
                <% end_if %>
            </div>
        </div>
    </div>

    <!--- third service section --->
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 thirdServiceSection">
        <div class="container">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 thirdServiceHeader">
                <% if $ServiceHead3 %>
                    <h2>$ServiceHead3</h2>
                <% end_if %>
            </div>
            <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 thirdServiceLeftSection">
                <% if $ServiceImage3 %>
                    <div class="img-responsive">
                        $ServiceImage3.SetWidth(500)
                    </div>
                <% end_if %>
            </div>
            <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 thirdServiceRightSection">
                <% if $ServiceDesc3 %>
                    <p>$ServiceDesc3</p>
                <% end_if %>
            </div>
        </div>
    </div>

</div>