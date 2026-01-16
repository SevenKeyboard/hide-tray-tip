#Requires AutoHotkey v1.1.0+
;==============================================================
; hideTrayTip — Hides the current tray tip notification
;
; GitHub: https://github.com/SevenKeyboard/hide-tray-tip
; Author: SevenKeyboard Ltd. (2026)
; License: The Unlicense
;
; Documentation / References:
;   https://www.autohotkey.com/docs/v1/lib/TrayTip.htm#Hiding_the_Traytip
;==============================================================
class VersionManager_hideTrayTip
{
    static _ := VersionManager_hideTrayTip._init()
    _init()    {
        global
        HIDETRAYTIP_VERSION := "1.0.0"
    }
}
hideTrayTip()    {
    trayTip
    if (subStr(A_OSVersion, 1, 3) == "10.")    {
        menu Tray, NoIcon
        sleep 200
        menu Tray, Icon
    }
}
;  