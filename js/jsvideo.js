
var win = null;
function novaJanela(pagina,nome,h,w)
{
    LeftPosition = (screen.width) ? (screen.width-w)/1.1 : 0;
    TopPosition = (screen.height) ? (screen.height-h)/1.25 : 0;

    settings = 'height='+h+', width='+w+', top='+TopPosition+
    ', left='+LeftPosition+', scrollbars=yes, resizable=yes'+
    ', location=no, menubar=no, status=no, toolbar=no'+
    ', fullscreen=yes';

    win = window.open(pagina,nome,settings);
}

function targetopener(mylink, closeme, closeonly) 
{ 
    if (! (window.focus && window.opener))return true; 
    window.opener.focus(); 
    if (! closeonly)window.opener.location.href=mylink.href; 
    if (closeme)window.close(); return false; 
}

