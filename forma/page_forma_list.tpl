
@Error@

<form role="form" method="post" name="forma_message" class="template-sm">
    <div class="form-group">
        <label for="exampleInputEmail1">���������</label>
        <input type="text" name="tema" value="@php  echo $_POST[tema]; php@" class="form-control" id="exampleInputEmail1"  required="">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">���</label>
        <input type="text" name="name" value="@php  echo $_POST[name]; php@" class="form-control" id="exampleInputEmail1"  required="">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">E-mail</label>
        <input type="email" name="mail" value="@php  echo $_POST[mail]; php@" class="form-control" id="exampleInputEmail1">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">�������</label>
        <input type="text" name="tel" value="@php  echo $_POST[tel]; php@" class="form-control" id="exampleInputEmail1">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">��������</label>
        <input type="text" name="company" value="@php  echo $_POST[company]; php@" class="form-control" id="exampleInputEmail1">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">���������</label>
        <textarea name="content" class="form-control" required="">@php  echo $_POST[content]; php@</textarea>
    </div>
    <div class="form-group">
        <span class="pull-right">
            <input type="hidden" name="send" value="1">
            <button type="submit" class="btn btn-primary">��������� ���������</button>
        </span>
        <img src="phpshop/captcha3.php" alt="" border="0" align="left" style="margin-right:10px"> <input type="text" name="key"   class="form-control" id="exampleInputEmail1" placeholder="��� � ��������..." style="width:150px" required="">

    </div>

</form>    