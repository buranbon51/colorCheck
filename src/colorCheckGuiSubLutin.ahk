

;38GuiEscape:
;	Gui, 38:Hide
;	return


SubSlider38_1:
	guf_setControl( Slider38_1, "UpDown38_1", 38 )
	return

SubSlider38_2:
	guf_setControl( Slider38_2, "UpDown38_2", 38 )
	return

SubSlider38_3:
	guf_setControl( Slider38_3, "UpDown38_3", 38 )
	return

SubUpDown38_1:
	Gui, 38:Submit, NoHide
	guf_setControl( UpDown38_1, "Slider38_1", 38 )
	return

SubUpDown38_2:
	Gui, 38:Submit, NoHide
	guf_setControl( UpDown38_2, "Slider38_2", 38 )
	return

SubUpDown38_3:
	Gui, 38:Submit, NoHide
	guf_setControl( UpDown38_3, "Slider38_3", 38 )
	return

SubButton38_1:
	Gui, 38:Submit, NoHide
	cochf_atlp_colorBoxTextToOn(Edit38_3)
	return

SubButton38_2:
	Gui, 38:Submit, NoHide
	cochf_atlp_colorBoxSliderToOn(UpDown38_1, UpDown38_2, UpDown38_3)
	return

SubButton38_3:
	Gui, 38:Submit, NoHide
	cochf_atlp_colorBoxTextTo10(Edit38_3)
	return

SubButton38_4:
	Gui, 38:Submit, NoHide
	cochf_atlp_colorBoxTo10(Edit38_4, Edit38_5, Edit38_6)
	return

SubButton38_5:
	Gui, 38:Submit, NoHide
	cochf_atlp_colorBoxToHex(UpDown38_1, UpDown38_2, UpDown38_3)
	return
