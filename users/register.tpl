
<form role="form" method="post" name="user_forma_register" class="template-sm">
    <span id="user_error">@user_error@</span>
    <div class="form-group">
        <label>���</label>
        <input type="text"  name="name_new" value="@php echo $_POST['name_new']; php@"  class="form-control" required="" >
    </div>
    <div class="form-group">
        <label>E-mail</label>
        <input type="email" name="login_new" value="@php echo $_POST['login_new']; php@" class="form-control" required="" >
    </div>
    <div class="form-group">
        <label>������</label>
        <input type="password" name="password_new"  class="form-control"  required="" >
    </div>
    <div class="form-group" id="check_pass">
        <label>��������� ������</label>
        <input type="password" name="password_new2"  class="form-control" required="">
        <span class="glyphicon glyphicon-remove form-control-feedback hide" aria-hidden="true"></span>
    </div>
    <div>
        <img src="phpshop/captcha3.php" alt="" border="0" align="left" style="margin-right:10px"> <input type="text" name="key"   class="form-control" id="exampleInputEmail1" placeholder="��� � ��������..." style="width:150px" required="">
    </div>
    <p><br></p>
    <p>
        <input type="hidden" value="1" name="add_user">
        <button type="reset" class="btn btn-default">��������</button>
        <button type="submit" class="btn btn-primary">����������� ������������</button>
    </p>
</form>