#Requires AutoHotkey v2.0

var_dec:=0

sleep 1000

loop 65535
{

    var_hex:=Format("{:X}", var_dec)

    while(StrLen(var_hex) <4)
    {
        var_hex:=0 String(var_hex)
    }

    Send var_hex
    Send "{Tab}"
    Send "{Enter}"

    if(WinWait( "Error", , 2))
    {
        Send "{Enter}"
        Send "+{Tab}"

    }
    Else
    {
        msgbox var_hex
        Break
    }

    var_dec++

}

