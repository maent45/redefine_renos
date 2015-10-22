<!-- Contact Form Modal -->
<div class="modal fade" id="contactFormModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="myModalLabel" style="color: #009C2F;">$ContactFormHeader</h3>
                <i class="fa fa-envelope" style="margin-top: 2%; font-size: 1.8em;"></i>
                &nbsp;
                <span>$EmailAddress</span>
                &nbsp;
                <i class="fa fa-phone" style="font-size: 1.9em !important; margin-top: 2%;"></i>
                &nbsp;
                <span>$PhoneNumber</span>
                <h5 style="margin-top: 2%;">$ContactFormMessage</h5>
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