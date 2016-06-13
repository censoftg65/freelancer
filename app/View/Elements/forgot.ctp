<script type="text/javascript">
    $(document).ready(function () {
        $('.forgot').click(function () {
            $('#myModal').modal('show');
            $('.modal-backdrop').css('z-index', '0');
        });
    });
</script>
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog signforgot">

        <!-- Modal content-->
        <div class="modal-content text-center">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <img src="img/pop-logo.jpg" width="251" height="65" alt=""/> </div>
            <form action="#" class="popupSign">
                <div class="modal-body">      
                    <label>Reset your Password</label>
                    <input type="text" placeholder="Enter your e-mail address">
                    <input type="reset" value="Reset  Password" class="Reset-btn btn">
<!--                    <p class="text-right"><a href="#">Login?</a></p>-->
                </div>
                <!--                <div class="modal-footer text-center">
                                    Don't have an account? <a href="#">Sign up!</a>
                                </div>-->
            </form>
        </div>

    </div>
</div>
