﻿colorCheckArg1 = %1%

/*
0 = 0
1 = 1
2 = 2
3 = 3
4 = 4
5 = 5
6 = 6
7 = 7
8 = 8
9 = 9
*/

if(colorCheckArg1 != "") {
	cochf_atlp_colorBoxTextToOn(colorCheckArg1)
	GuiControl, 38:, Edit38_3, %colorCheckArg1%
}
