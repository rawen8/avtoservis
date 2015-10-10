

<div class="modal fade bs-example-modal-sm" id="chatModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myModalLabel">Начать чат</h4>
            </div>
            <div class="modal-body">
                    <div class="form-group">
                        <label>Имя</label>
                        <input type="text" name="chat_mod_user_name" id="chat_mod_user_name" lass="form-control" placeholder="Имя..." required="">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button>
                        <button type="submit" class="btn btn-primary"  data-dismiss="modal" onclick="checkModChatForma()">Начать</button>
                    </div>
            </div>
        </div>
    </div>
</div>
<a href="#" data-toggle="modal" data-target="#chatModal" class="btn btn-success">Начать чат!</a>

<script>
                    function checkModChatForma() {
                        if (document.getElementById('chat_mod_user_name').value != "") {
                            var w = 500;
                            var h = 600;
                            var url = 'phpshop/modules/chat/chat.php?name=' + document.getElementById('chat_mod_user_name').value;
                            chat = window.open(url, "chat", "dependent=1,left=100,top=20,width=" + w + ",height=" + h + ",location=0,menubar=0,resizable=1,scrollbars=0,status=0,titlebar=0,toolbar=0");
                            chat.focus();
                        }
                        else
                            return false;
                    }
</script>