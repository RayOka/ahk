; 無変換キー無効化
*sc07B::Return

; 無変換キー + Dの無効化
sc07B & d::Return

; 無変換キー + Fの無効化
sc07B & f::Return

; 無変換キー + Sの無効化
sc07B & S::Return

; キャレット移動
; h, j, k, l
sc07B & h:: {
    if GetKeyState("D", "P")
        Send "+{Left}"
    else if GetKeyState("F", "P")
        Send "^{Left}"
    else
        Send "{Left}"
}
sc07B & j:: {
    if GetKeyState("D", "P") & GetKeyState("S", "P") 
        Send "+!{Down}"
    else if GetKeyState("F", "P") & GetKeyState("S", "P") 
        Send "^!{Down}"    
    else if GetKeyState("D", "P")
        Send "+{Down}"
    else if GetKeyState("F", "P")
        Send "^{Down}"
    else if GetKeyState("S", "P")
        Send "!{Down}"
    else
        Send "{Down}"
}
sc07B & k:: {
    if GetKeyState("D", "P") & GetKeyState("S", "P") 
        Send "+!{Up}"
    else if GetKeyState("F", "P") & GetKeyState("S", "P") 
        Send "^!{Up}"   
    else if GetKeyState("D", "P")
        Send "+{Up}"
    else if GetKeyState("F", "P")
        Send "^{Up}"
    else if GetKeyState("S", "P")
        Send "!{Up}"
    else
        Send "{Up}"
}
sc07B & l:: {
    if GetKeyState("D", "P")
        Send "+{Right}"
    else if GetKeyState("F", "P")
        Send "^{Right}"
    else
        Send "{Right}"
}

sc07B & a::Send "{Home}"
sc07B & e::Send "{End}"