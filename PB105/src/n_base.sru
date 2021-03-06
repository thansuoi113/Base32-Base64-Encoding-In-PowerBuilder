$PBExportHeader$n_base.sru
forward
global type n_base from nonvisualobject
end type
end forward

global type n_base from nonvisualobject autoinstantiate
end type

type prototypes
Function String GetBase32Encode(String msg) Library "BaseEncoding.dll"  Alias For "GetBase32Encode;Ansi"
Function String GetBase32Decode(String coded) Library "BaseEncoding.dll"  Alias For "GetBase32Decode;Ansi"
Function String GetBase64Encode(String msg) Library "BaseEncoding.dll"  Alias For "GetBase64Encode;Ansi"
Function String GetBase64Decode(String coded) Library "BaseEncoding.dll"  Alias For "GetBase64Decode;Ansi"
end prototypes

forward prototypes
public function string of_getbase32encode (string as_msg)
public function string of_getbase64encode (string as_msg)
public function string of_getbase32decode (string as_code)
public function string of_getbase64decode (string as_code)
end prototypes

public function string of_getbase32encode (string as_msg);//====================================================================
// Function: n_base.of_getbase32encode()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	string	as_msg	
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2022/05/29
//--------------------------------------------------------------------
// Usage: n_base.of_getbase32encode ( string as_msg )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String ls_coded

If IsNull(as_msg) Or Len(Trim(as_msg)) = 0 Then
	Return ""
End If

ls_coded = GetBase32Encode(as_msg)

Return ls_coded

end function

public function string of_getbase64encode (string as_msg);//====================================================================
// Function: n_base.of_getbase64encode()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	string	as_msg	
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2022/05/29
//--------------------------------------------------------------------
// Usage: n_base.of_getbase64encode ( string as_msg )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String ls_coded

If IsNull(as_msg) Or Len(Trim(as_msg)) = 0 Then
	Return ""
End If

ls_coded = GetBase64Encode(as_msg)

Return ls_coded

end function

public function string of_getbase32decode (string as_code);//====================================================================
// Function: n_base.of_getbase32decode()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	string	as_code	
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2022/05/29
//--------------------------------------------------------------------
// Usage: n_base.of_getbase32decode ( string as_code )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String ls_msg

If IsNull(as_code) Or Len(Trim(as_code)) = 0 Then
	Return ""
End If

ls_msg = GetBase32Decode(as_code)

Return ls_msg

end function

public function string of_getbase64decode (string as_code);//====================================================================
// Function: n_base.of_getbase64decode()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	string	as_code	
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2022/05/29
//--------------------------------------------------------------------
// Usage: n_base.of_getbase64decode ( string as_code )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String ls_msg

If IsNull(as_code) Or Len(Trim(as_code)) = 0 Then
	Return ""
End If

ls_msg = GetBase64Decode(as_code)

Return ls_msg

end function

on n_base.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_base.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

