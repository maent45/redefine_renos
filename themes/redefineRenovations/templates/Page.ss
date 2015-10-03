<!DOCTYPE html>
<html lang="en">

<% include Head %>

<body>

<% include Navbar %>

<% include ContactForm %>

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

<% include Footer %>

<% include Scripts %>

</body>
</html>