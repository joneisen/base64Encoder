#tag Class
Protected Class App
Inherits Application
	#tag Method, Flags = &h0
		Function ProportionalScale(Pic as Picture, Width as integer, Height as Integer) As Picture
		  // Calculate scale factor
		  Dim factor As Double = Min( Height / Pic.Height, Width / Pic.Width )
		  
		  // Calculate New Size
		  Dim w As Integer = pic.Width * factor
		  Dim h As Integer = pic.Height * factor
		  
		  // Create New Picture
		  Dim NewPic As New Picture( w, h )
		  
		  // Draw picture in the new size
		  NewPic.Graphics.DrawPicture( Pic, 0, 0, w, h, 0, 0, Pic.Width, Pic.Height )
		  
		  // Return Scaled Image
		  Return NewPic
		End Function
	#tag EndMethod


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
