


;  カラーを確認するBox
Gui, 38:Add, Text,  X10   Y5, (&M)
Gui, 38:Add, Edit,    x+10  yp+0 w160 vEdit38_3  Limit8
Gui, 38:Add, Button,X20   y+5 w60 gSubButton38_3, TextTo10(&T)
Gui, 38:Add, Button, x+10   yp+0 w60 gSubButton38_1  Default , On(Enter)
Gui, 38:Add, Text,  X30    y+5   cFF0000 ,&R
Gui, 38:Add, Text,  X95    yp+0  c00FF00 ,G
Gui, 38:Add, Text,  X160   yp+0  c0000FF ,B
Gui, 38:Add, Edit,  X10  y+5  w60 cFF0000 vEdit38_4, 0
Gui, 38:Add, Edit,  x+5  yp+0 w60 c00FF00 vEdit38_5, 0
Gui, 38:Add, Edit,  x+5  yp+0 w60 c0000FF vEdit38_6, 0
Gui, 38:Add, Button, X10 y+5 w70 gSubButton38_4,To10(&1)
Gui, 38:Add, Edit,  X10  y+5  w60 cFF0000 vUpDown38_1  gSubUpDown38_1  Number  , 0
Gui, 38:Add, UpDown, Range0-255 ,0
Gui, 38:Add, Edit,  x+5  yp+0 w60 c00FF00 vUpDown38_2  gSubUpDown38_2  Number  Limit3, 0
Gui, 38:Add, UpDown, Range0-255 ,0
Gui, 38:Add, Edit,  x+5  yp+0 w60 c0000FF vUpDown38_3  gSubUpDown38_3  Number  Limit3, 0
Gui, 38:Add, UpDown, Range0-255 ,0
Gui, 38:Add, Slider,X20   y+5  Range0-255  Vertical vSlider38_1  gSubSlider38_1, 0
Gui, 38:Add, Slider,x+35  yp+0 Range0-255  Vertical vSlider38_2  gSubSlider38_2, 0
Gui, 38:Add, Slider,x+35  yp+0 Range0-255  Vertical vSlider38_3  gSubSlider38_3, 0

Gui, 38:Add, Button, X10 y+5 w70 gSubButton38_5,ToHex(&H)
Gui, 38:Add, Button, x+10 yp+0 w70 gSubButton38_2,On(&O)
