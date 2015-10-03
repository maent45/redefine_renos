<!--- main about page wrapper --->
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 aboutPageWrapper">

    <!--- main title section --->
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 aboutPageHeader">
        <div class="container">
            <h1>$PageHeading</h1>
            <h4>$PageSubHeading</h4>
        </div>
    </div>

    <!--- about page description section --->
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 aboutPageMainSection">
        <div class="container">

            <!--- about left section --->
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <% if $LeftSectionImage %>
                        <div class="img-responsive">
                            $LeftSectionImage.SetWidth(500)
                        </div>
                    <% end_if %>
                    <h3>$LeftSectionTitle</h3>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <p>$LeftSectionDesc</p>
                </div>
            </div>

            <!--- about right section --->
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <% if $RightSectionImage %>
                        <div class="img-responsive">
                            $RightSectionImage.SetWidth(450)
                        </div>
                    <% end_if %>
                    <h3>$RightSectionTitle</h3>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <p>$RightSectionDesc</p>
                </div>
            </div>


        </div>
    </div>
</div>