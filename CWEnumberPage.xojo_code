#tag WebPage
Begin WebPage CWEnumberPage
   AllowTabOrderWrap=   True
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   False
   Height          =   568
   ImplicitInstance=   True
   Index           =   -2147483648
   Indicator       =   0
   IsImplicitInstance=   False
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   MinimumHeight   =   400
   MinimumWidth    =   600
   TabIndex        =   0
   Title           =   "Home"
   Top             =   0
   Visible         =   True
   Width           =   888
   _ImplicitInstance=   False
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebToolbar MenuToolbar
      ControlID       =   ""
      Enabled         =   True
      FullWidth       =   False
      Height          =   56
      Index           =   -2147483648
      Indicator       =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Position        =   0
      Scope           =   0
      TabIndex        =   1
      Title           =   ""
      Tooltip         =   ""
      Top             =   0
      Visible         =   True
      Width           =   888
      _mPanelIndex    =   -1
   End
   Begin WebTextArea CWEnumberResultTextArea
      AllowReturnKey  =   True
      AllowSpellChecking=   False
      Caption         =   "Results:"
      ControlID       =   ""
      Enabled         =   True
      Height          =   392
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   156
      Visible         =   True
      Width           =   848
      _mPanelIndex    =   -1
   End
   Begin WebButton CWEnumberButton
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Search CWE"
      ControlID       =   ""
      Default         =   True
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   224
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   110
      Visible         =   True
      Width           =   136
      _mPanelIndex    =   -1
   End
   Begin WebTextField CWEnumberSrchTextField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   ""
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   0
      Height          =   38
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   110
      Visible         =   True
      Width           =   196
      _mPanelIndex    =   -1
   End
   Begin WebLabel CWEnumberLabel
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      Text            =   "Insert the CWE number (ex. 246)"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   64
      Underline       =   False
      Visible         =   True
      Width           =   507
      _mPanelIndex    =   -1
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Opening()
		  Me.Style.BackgroundColor = Color.RGB(248, 252, 184)
		  Me.Style.FontSize = 15
		  Me.Style.FontName = "Roboto Mono"
		  
		  Me.CWEnumberResultTextArea.Style.BorderColor = Color.Black
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events MenuToolbar
	#tag Event
		Sub Opening()
		  
		  Session.makeMenu(MenuToolbar)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MenuSelected(Item as WebToolbarButton, hitItem as WebMenuItem)
		  Session.checkMenu(item.Caption,hitItem.Value)
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CWEnumberButton
	#tag Event
		Sub Pressed()
		  CWEnumberResultTextArea.Text = ""
		  Dim Tab As String = Encodings.UTF8.Chr(9)
		  
		  Try
		    Session.mDb.Connect
		    Session.mDBisConnected = True
		    
		  Catch e As DatabaseException
		    MessageBox( "Error connecting to MySQL: " + e.Message)
		  End Try
		  
		  dim mysql As String
		  Var data As RowSet
		  var cwe as string
		  
		  Var textResultStr As String
		  
		  
		  '======================================================
		  '=======================  CWE number search============
		  '======================================================
		  
		  cwe = CWEnumberSrchTextField.Text
		  
		  'cur.execute("SELECT * FROM cwe WHERE cwe_id = " + cwe)
		  mysql = "SELECT * FROM cwe WHERE cwe_id = "+ cwe
		  
		  
		  Try
		    data = session.mDB.SelectSQL(mysql)
		  Catch e As DatabaseException
		    MessageBox("DB Error: " + e.Message)
		  End Try
		  
		  textResultStr = ""
		  
		  
		  If data.RowCount > 0 Then
		    'selected_cve = cur.fetchone()
		    data.MoveToFirstRow
		    
		    'print("CWE-" + str(selected_cwe[0]))
		    'print("========")
		    'print(selected_cwe[1])
		    
		    textResultStr = textResultStr + "CWE-"+ data.ColumnAt(0).StringValue + EndOfLine
		    textResultStr = textResultStr + "========" + EndOfLine
		    textResultStr = textResultStr + data.ColumnAt(1).StringValue + EndOfLine
		    
		    if data.ColumnAt(2).StringValue <> "" Then
		      'print(selected_cwe[2])
		      textResultStr = textResultStr + data.ColumnAt(2).StringValue + EndOfLine
		      
		    end if
		    if data.ColumnAt(3).StringValue <> "" Then
		      'print(selected_cwe[2])
		      textResultStr = textResultStr + data.ColumnAt(3).StringValue + EndOfLine
		      
		    end if
		    if data.ColumnAt(4).StringValue <> "" Then
		      
		      textResultStr = textResultStr + EndOfLine
		      textResultStr = textResultStr + "Modes of Introduction" + EndOfLine
		      textResultStr = textResultStr + "---------------------" + EndOfLine
		      textResultStr = textResultStr + data.ColumnAt(4).StringValue + EndOfLine
		      
		    end if
		    if data.ColumnAt(5).StringValue <> "" Then
		      
		      textResultStr = textResultStr + EndOfLine
		      textResultStr = textResultStr + "Common Consequences" + EndOfLine
		      textResultStr = textResultStr + "-------------------" + EndOfLine
		      textResultStr = textResultStr + data.ColumnAt(5).StringValue + EndOfLine
		      
		    end if
		    if data.ColumnAt(6).StringValue <> "" Then
		      textResultStr = textResultStr + EndOfLine
		      textResultStr = textResultStr + "Potential Mitigations" + EndOfLine
		      textResultStr = textResultStr + "---------------------" + EndOfLine
		      textResultStr = textResultStr + data.ColumnAt(6).StringValue + EndOfLine
		      
		    end if
		    
		    data.Close
		  else 
		    textResultStr = "CWE-" + cwe + " not found.!"
		    data.Close
		  End If
		  
		  CWEnumberResultTextArea.Text = textResultStr
		  
		  '======================================================
		  '=======================  End. ========================
		  '======================================================
		  Session.mDb.Close
		  Session.mDBisConnected = False
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="_mPanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue="-1"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
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
		Name="ControlID"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutType"
		Visible=true
		Group="Behavior"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_ImplicitInstance"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignHeight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignWidth"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="IsImplicitInstance"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabOrderWrap"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Visual Controls"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Indicator"
		Visible=false
		Group="Visual Controls"
		InitialValue=""
		Type="WebUIControl.Indicators"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Primary"
			"2 - Secondary"
			"3 - Success"
			"4 - Danger"
			"5 - Warning"
			"6 - Info"
			"7 - Light"
			"8 - Dark"
			"9 - Link"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutDirection"
		Visible=true
		Group="WebView"
		InitialValue="LayoutDirections.LeftToRight"
		Type="LayoutDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - LeftToRight"
			"1 - RightToLeft"
			"2 - TopToBottom"
			"3 - BottomToTop"
		#tag EndEnumValues
	#tag EndViewProperty
#tag EndViewBehavior
