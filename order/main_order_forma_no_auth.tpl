<div class="row">
    <div class="col-md-4">
        <span style="color:red">@user_error@</span>
        <div class="form-group">
            <label>E-mail</label>
            <input type="email" name="mail" class="form-control req" placeholder="E-mail..." required="" value="@php echo $_POST['mail']; php@">
        </div>
        <div class="form-group">
            <label>���</label>
            <input type="text" name="name_new" class="form-control req"  placeholder="���..." required="" value="@php echo $_POST['name_new']; php@">
        </div>
    </div>
    <div class="col-md-8">
        <div class="alert alert-warning">
            <span class="glyphicon glyphicon-info-sign"></span> ���� �� - ����� ������������, �� ������ ������� �� �������� �� ��� � ������ ������ �� �����. ���� �� �� ������������, �� ������ ��� �� ������ � �������� ���� ����� � ������ ��������.
        </div>
    </div>
</div>