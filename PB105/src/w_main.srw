$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type st_2 from statictext within w_main
end type
type st_1 from statictext within w_main
end type
type cb_base64decode from commandbutton within w_main
end type
type cb_base64encode from commandbutton within w_main
end type
type cb_base32decode from commandbutton within w_main
end type
type cb_base32encode from commandbutton within w_main
end type
type mle_output from multilineedit within w_main
end type
type mle_input from multilineedit within w_main
end type
end forward

global type w_main from window
integer width = 2377
integer height = 1260
boolean titlebar = true
string title = "Base Encoding"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_2 st_2
st_1 st_1
cb_base64decode cb_base64decode
cb_base64encode cb_base64encode
cb_base32decode cb_base32decode
cb_base32encode cb_base32encode
mle_output mle_output
mle_input mle_input
end type
global w_main w_main

on w_main.create
this.st_2=create st_2
this.st_1=create st_1
this.cb_base64decode=create cb_base64decode
this.cb_base64encode=create cb_base64encode
this.cb_base32decode=create cb_base32decode
this.cb_base32encode=create cb_base32encode
this.mle_output=create mle_output
this.mle_input=create mle_input
this.Control[]={this.st_2,&
this.st_1,&
this.cb_base64decode,&
this.cb_base64encode,&
this.cb_base32decode,&
this.cb_base32encode,&
this.mle_output,&
this.mle_input}
end on

on w_main.destroy
destroy(this.st_2)
destroy(this.st_1)
destroy(this.cb_base64decode)
destroy(this.cb_base64encode)
destroy(this.cb_base32decode)
destroy(this.cb_base32encode)
destroy(this.mle_output)
destroy(this.mle_input)
end on

type st_2 from statictext within w_main
integer x = 96
integer y = 612
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Output:"
boolean focusrectangle = false
end type

type st_1 from statictext within w_main
integer x = 87
integer y = 60
integer width = 402
integer height = 56
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Input:"
boolean focusrectangle = false
end type

type cb_base64decode from commandbutton within w_main
integer x = 1824
integer y = 820
integer width = 448
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Base64 Decode"
end type

event clicked;String ls_input, ls_output
n_base ln_base

mle_output.text = ""
ls_input = mle_input.text
ls_output = ln_base.of_getbase64decode(ls_input)
mle_output.text = ls_output
end event

type cb_base64encode from commandbutton within w_main
integer x = 1824
integer y = 684
integer width = 448
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Base64 Encode"
end type

event clicked;String ls_input, ls_output
n_base ln_base

mle_output.text = ""
ls_input = mle_input.text
ls_output = ln_base.of_getbase64encode(ls_input)
mle_output.text = ls_output
end event

type cb_base32decode from commandbutton within w_main
integer x = 1824
integer y = 264
integer width = 448
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Base32 Decode"
end type

event clicked;String ls_input, ls_output
n_base ln_base

mle_output.text = ""
ls_input = mle_input.text
ls_output = ln_base.of_getbase32decode(ls_input)
mle_output.text = ls_output
end event

type cb_base32encode from commandbutton within w_main
integer x = 1824
integer y = 136
integer width = 448
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Base32 Encode"
end type

event clicked;String ls_input, ls_output
n_base ln_base

mle_output.text = ""
ls_input = mle_input.text
ls_output = ln_base.of_getbase32encode(ls_input)
mle_output.text = ls_output
end event

type mle_output from multilineedit within w_main
integer x = 78
integer y = 684
integer width = 1678
integer height = 400
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type mle_input from multilineedit within w_main
integer x = 78
integer y = 136
integer width = 1678
integer height = 400
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

