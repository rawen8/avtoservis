<div class="form-group">
    <label>Имя</label>
    <input type="text" name="chat_mod_user_name" id="chat_mod_user_name" class="form-control" placeholder="Имя..." required="">
</div>
<div class="text-center">
    <button type="submit" class="btn btn-primary" onclick="checkModChatForma()">Начать чат</button>
</div>

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