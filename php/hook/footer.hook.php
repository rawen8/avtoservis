<?php

function footer_copy_hook() {
    
    echo '</div></div>';
}

$addHandler = array
    (
    'footer' => 'footer_copy_hook'
);
?>