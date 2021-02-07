#tag Class
Protected Class Session
Inherits WebSession
#tag Session
  interruptmessage=We are having trouble communicating with the server. Please wait a moment while we attempt to reconnect.
  disconnectmessage=You have been disconnected from this application.
  confirmmessage=
  AllowTabOrderWrap=True
#tag EndSession
	#tag Event
		Sub Opening()
		  mDb = New PostgreSQLDatabase
		  
		  
		  
		  mDb.Host = "127.0.0.1"
		  mDb.UserName = "myusername"
		  mDb.Password = "mypassword"
		  mDb.DatabaseName = "cvedb"
		  mDBisConnected = False
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub checkMenu(s as String, h as string)
		  If s = "Home" Then
		    CVEnumberPage.Close
		    CVEScorePage.Close
		    CVEScoreDatePage.Close
		    CPEScorePage.Close
		    CPEScoreDatePage.Close
		    CWEnumberPage.Close
		    
		    HomePage.Show
		  End If
		  
		  
		  If s = "Search" Then
		    Select Case h
		    Case "by CVE Number"
		      HomePage.Close
		      CVEScorePage.Close
		      CVEScoreDatePage.Close
		      CPEScorePage.Close
		      CPEScoreDatePage.Close
		      CWEnumberPage.Close
		      
		      CVEnumberPage.Show
		      
		    Case "CVE by Score"
		      HomePage.Close
		      CVEnumberPage.Close
		      CVEScoreDatePage.Close
		      CPEScorePage.Close
		      CPEScoreDatePage.Close
		      CWEnumberPage.Close
		      
		      CVEScorePage.Show
		      
		    Case "CVE by Date & Score"
		      HomePage.Close
		      CVEnumberPage.Close
		      CVEScorePage.Close
		      CPEScorePage.Close
		      CPEScoreDatePage.Close
		      CWEnumberPage.Close
		      
		      CVEScoreDatePage.Show
		      
		    Case "CPE by Score"
		      HomePage.Close
		      CVEnumberPage.Close
		      CVEScorePage.Close
		      CVEScoreDatePage.Close
		      CPEScoreDatePage.Close
		      CWEnumberPage.Close
		      
		      CPEScorePage.Show
		      
		    Case "CPE by Date & Score"
		      HomePage.Close
		      CVEnumberPage.Close
		      CVEScorePage.Close
		      CVEScoreDatePage.Close
		      CPEScorePage.Close
		      CWEnumberPage.Close
		      
		      CPEScoreDatePage.Show
		      
		      
		    Case "CWE"
		      HomePage.Close
		      CVEnumberPage.Close
		      CVEScorePage.Close
		      CVEScoreDatePage.Close
		      CPEScorePage.Close
		      CPEScoreDatePage.Close
		      
		      CWEnumberPage.Show
		      
		    End Select
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub makeMenu(tbar As WebToolbar)
		  
		  Var homemenu As New WebMenuItem("Home")
		  homemenu.AddMenuItem(new WebMenuItem("Home page"))
		  
		  Var cvemenu As New WebMenuItem("CVE")
		  cvemenu.AddMenuItem(new WebMenuItem("by CVE Number"))
		  cvemenu.AddMenuItem(new WebMenuItem("CVE by Score"))
		  cvemenu.AddMenuItem(new WebMenuItem("CVE by Date & Score"))
		  
		  Var cpemenu As New WebMenuItem("CPE")
		  cpemenu.AddMenuItem(new WebMenuItem("CPE by Score"))
		  cpemenu.AddMenuItem(new WebMenuItem("CPE by Date & Score"))
		  
		  Var cwemenu As New WebMenuItem("CWE")
		  
		  Var searchMenu As New WebMenuItem("Search")
		  searchMenu.AddMenuItem(cvemenu)
		  searchMenu.AddMenuItem(cpemenu)
		  searchMenu.AddMenuItem(cwemenu)
		  
		  
		  Var homeButton As New WebToolbarButton
		  homeButton.Style = WebToolbarButton.ButtonStyles.Menu
		  homeButton.Menu = homemenu
		  homeButton.Caption = "Home"
		  homeButton.Icon = webpicture.BootstrapIcon("house")
		  
		  Var searchButton As New WebToolbarButton
		  searchButton.Style = WebToolbarButton.ButtonStyles.Menu
		  searchButton.Menu = searchMenu
		  searchButton.Caption = "Search"
		  searchButton.Icon = webpicture.BootstrapIcon("search")
		  
		  
		  tbar.AddItem(homeButton)
		  tbar.AddItem(searchButton)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		mDb As PostgreSQLDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		mDBisConnected As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		sqlData As RowSet
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HashTag"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Identifier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LanguageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LanguageRightToLeft"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RemoteAddress"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScaleFactor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserTimeout"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="URL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_baseurl"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisconnectMessage"
			Visible=true
			Group="Behavior"
			InitialValue="You have been disconnected from this application."
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InterruptionMessage"
			Visible=true
			Group="Behavior"
			InitialValue="We are having trouble communicating with the server. Please wait a moment while we attempt to reconnect."
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_LastMessageTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTabOrderWrap"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ConfirmDisconnectMessage"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Platform"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsDarkMode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClientHeight"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClientWidth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mDBisConnected"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
