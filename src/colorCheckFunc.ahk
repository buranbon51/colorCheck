

cochf_atlp_initGui38(){
	Gui, 38:Show, Hide x643 y30 AutoSize, _ColorBox
}

cochf_atlp_colorBoxTextTo10(edit1){
	RR = 00
	GG = 00
	BB = 00
	edit1 := Trim(edit1)
	edit1 := LTrim( edit1, "#" )
	num := func_length(edit1)
	if(num == 6){
		StringLeft,  RR,   edit1, 2
		StringRight, BB,   edit1, 2
		StringLeft,  RRGG, edit1, 4
		StringRight, GG, RRGG, 2
	} else if(num == 3){
		StringLeft,  RChar,   edit1, 1
		StringRight, BChar,   edit1, 1
		StringLeft,  RG, edit1, 2
		StringRight, GChar, RG, 1
		RR := RChar . RChar
		GG := GChar . GChar
		BB := BChar . BChar
	}
	basic1 := func_hexTo10number(RR)
	basic2 := func_hexTo10number(GG)
	basic3 := func_hexTo10number(BB)

	guf_setControl( RR, "Edit38_4", 38 )
	guf_setControl( GG, "Edit38_5", 38 )
	guf_setControl( BB, "Edit38_6", 38 )

	guf_setControl( basic1, "UpDown38_1", 38 )
	guf_setControl( basic2, "UpDown38_2", 38 )
	guf_setControl( basic3, "UpDown38_3", 38 )

	;guf_setControl( basic1, "Slider38_1", 38 )
	;guf_setControl( basic2, "Slider38_2", 38 )
	;guf_setControl( basic3, "Slider38_3", 38 )
}

cochf_atlp_colorBoxTo10(edit1, edit2, edit3){
	edit1 := Trim(edit1)
	edit2 := Trim(edit2)
	edit3 := Trim(edit3)
	
	basic1 := func_hexTo10number(edit1)
	basic2 := func_hexTo10number(edit2)
	basic3 := func_hexTo10number(edit3)

	guf_setControl( basic1, "UpDown38_1", 38 )
	guf_setControl( basic2, "UpDown38_2", 38 )
	guf_setControl( basic3, "UpDown38_3", 38 )

	;guf_setControl( basic1, "Slider38_1", 38 )
	;guf_setControl( basic2, "Slider38_2", 38 )
	;guf_setControl( basic3, "Slider38_3", 38 )
}

cochf_atlp_colorBoxTextToOn(edit1){
	edit1 := Trim(edit1)
	edit1 := LTrim( edit1, "#" )
	num := func_length(edit1)
	if(num == 6){
		cochf_atlp_colorBoxTextTo10(edit1)
		Gui, 38:Color, %edit1%
	} else if(num == 3){
		StringLeft,  RChar,   edit1, 1
		StringRight, BChar,   edit1, 1
		StringLeft,  RG, edit1, 2
		StringRight, GChar, RG, 1
		RRGGBB := RChar . RChar . GChar . GChar . BChar . BChar
		cochf_atlp_colorBoxTextTo10(RRGGBB)
		Gui, 38:Color, %RRGGBB%
	}
}

cochf_atlp_setEdit38_4_5_6_3( arg1, arg2, arg3 ) {

	GuiControl, 38:, Edit38_4, %arg1%
	GuiControl, 38:, Edit38_5, %arg2%
	GuiControl, 38:, Edit38_6, %arg3%

	GuiControl, 38:, Edit38_3, %arg1%%arg2%%arg3%

}

cochf_atlp_colorBoxSliderToOn(upDown1, upDown2, upDown3){
	upDown1 := Trim(upDown1)
	upDown2 := Trim(upDown2)
	upDown3 := Trim(upDown3)

	hexValue1 := func_numberToHexAA( upDown1 )
	hexValue2 := func_numberToHexAA( upDown2 )
	hexValue3 := func_numberToHexAA( upDown3 )
	StringLower, hexValue1, hexValue1
	StringLower, hexValue2, hexValue2
	StringLower, hexValue3, hexValue3

	cochf_atlp_setEdit38_4_5_6_3( hexValue1, hexValue2, hexValue3 )
	Gui, 38:Color, %hexValue1%%hexValue2%%hexValue3%
}

cochf_atlp_colorBoxToHex(upDown1, upDown2, upDown3){
	upDown1 := Trim(upDown1)
	upDown2 := Trim(upDown2)
	upDown3 := Trim(upDown3)

	hexValue1 := func_numberToHexAA( upDown1 )
	hexValue2 := func_numberToHexAA( upDown2 )
	hexValue3 := func_numberToHexAA( upDown3 )
	StringLower, hexValue1, hexValue1
	StringLower, hexValue2, hexValue2
	StringLower, hexValue3, hexValue3

	cochf_atlp_setEdit38_4_5_6_3( hexValue1, hexValue2, hexValue3 )
}

