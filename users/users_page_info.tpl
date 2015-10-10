<div id="allspec">
    @user_error@
</div>

<form name="users_password" method="post" class="form-horizontal" role="form">

    <div class="form-group">
        <label class="col-sm-2 control-label">������</label>
        <div class="col-xs-4">
            <span class="btn btn-success"><span class="glyphicon glyphicon-user"></span> @user_status@</span>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">������</label>
        <div class="col-xs-4">
            <span class="btn btn-warning">@user_cumulative_discount@ %</span>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">Email</label>
        <div class="col-xs-4">
            <input type="email" class="form-control" name="login_new" value="@user_login@" required="">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">������</label>
        <div class="col-xs-4">
            <input type="password" class="form-control" name="password_new" value="@user_password@" required="">
        </div>
    </div>

    <div class="form-group" id="password_repeat" class="hidden" style="display: none;">
        <label class="col-sm-2 control-label">��������� ������:</label>
        <div class="col-xs-4">
            <input type="password" class="form-control" name="password_new2" required="">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label"></label>
        <div class="col-xs-6">
            <input type="hidden" value="1" name="update_password">
            <button type="submit" onclick="$('#password_repeat').slideToggle();" class="btn btn-primary">��������� ���������</button>

        </div>
    </div>
</form>
