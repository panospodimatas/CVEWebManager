#tag WebPage
Begin WebPage CVEnumberPage
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
   Begin WebTextArea CVEnumberResultTextArea
      AllowReturnKey  =   True
      AllowSpellChecking=   False
      Caption         =   "Results:"
      ControlID       =   ""
      Enabled         =   True
      Height          =   344
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
      Top             =   204
      Visible         =   True
      Width           =   848
      _mPanelIndex    =   -1
   End
   Begin WebButton CVEnumberButton
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Search CVE"
      ControlID       =   ""
      Default         =   True
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   240
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
      Top             =   150
      Visible         =   True
      Width           =   136
      _mPanelIndex    =   -1
   End
   Begin WebTextField CVEnumberSrchTextField
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
      Top             =   150
      Visible         =   True
      Width           =   196
      _mPanelIndex    =   -1
   End
   Begin WebLabel CVEnumberLabel
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
      Text            =   "Insert the CVE number as YYYY-Number (ex. 2020-1234)"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   104
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
		  
		  Me.CVEnumberResultTextArea.Style.BorderColor = Color.Black
		  
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
#tag Events CVEnumberButton
	#tag Event
		Sub Pressed()
		  CVEnumberResultTextArea.Text = ""
		  Dim Tab As String = Encodings.UTF8.Chr(9)
		  'Dim Tab As String = "  "
		  Try
		    Session.mDb.Connect
		    Session.mDBisConnected = True
		    
		  Catch e As DatabaseException
		    MessageBox( "Error connecting to MySQL: " + e.Message)
		  End Try
		  
		  dim mysql As String
		  Var data As RowSet
		  Var data2 As RowSet
		  var cwe as string
		  var cve as string
		  Var textResultStr As String
		  
		  
		  '======================================================
		  '=======================  CVE number search============
		  '======================================================
		  
		  cve = CVEnumberSrchTextField.Text
		  mysql = "SELECT cve, vector_string_3, base_score_3, base_severity_3, vector_string, base_score, severity, description, published_date, last_modified_date FROM cvss WHERE cve LIKE '%"+cve+"%'"
		  
		  
		  Try
		    data = session.mDB.SelectSQL(mysql)
		  Catch e As DatabaseException
		    MessageBox("DB Error: " + e.Message)
		  End Try
		  
		  textResultStr = ""
		  
		  If data <> Nil Then
		    'selected_cve = cur.fetchone()
		    
		    
		    
		    data.MoveToFirstRow
		    
		    
		    'print("CVE:\t\t\t",selected_cve[0])
		    textResultStr = textResultStr + "CVE:"+ Tab + Tab + Tab + data.ColumnAt(0).StringValue + EndOfLine
		    
		    'print("CVSSv3.x Attack vector: ",selected_cve[1])
		    textResultStr = textResultStr + "CVSSv3.x Attack vector: " + data.ColumnAt(1).StringValue + EndOfLine
		    
		    'print("CVSSv3.x Base Score:\t",selected_cve[2],selected_cve[3])
		    textResultStr = textResultStr + "CVSSv3.x Base Score:"+ Tab + data.ColumnAt(2).StringValue +"    "+data.ColumnAt(3).StringValue + EndOfLine
		    
		    'print("CVSSv2.x Attack vector: ",selected_cve[4])
		    textResultStr = textResultStr + "CVSSv2.x Attack vector: " + data.ColumnAt(4).StringValue + EndOfLine
		    
		    'print("CVSSv2.x Base Score:\t",selected_cve[5],selected_cve[6])
		    textResultStr = textResultStr + "CVSSv2.x Base Score:"+ Tab + data.ColumnAt(5).StringValue +"    "+data.ColumnAt(6).StringValue + EndOfLine
		    
		    'print("Description:")
		    textResultStr = textResultStr + EndOfLine
		    textResultStr = textResultStr + "Description:" + EndOfLine
		    textResultStr = textResultStr + "============" + EndOfLine
		    
		    'print(selected_cve[7])
		    textResultStr = textResultStr + data.ColumnAt(7).StringValue + EndOfLine
		    'print("\r\nPubished Date:\t\t",selected_cve[8])
		    
		    textResultStr = textResultStr + "Pubished Date:"+ Tab + Tab  + data.ColumnAt(8).StringValue + EndOfLine
		    
		    'print("Last Modified Date:\t",selected_cve[9])
		    textResultStr = textResultStr + "Last Modified Date:"+ Tab  + data.ColumnAt(9).StringValue + EndOfLine
		    
		    data.Close
		  End If
		  
		  mysql = "SELECT problem FROM cve_problem WHERE cve LIKE '%"+cve+"%'"
		  Try
		    data = session.mDB.SelectSQL(mysql)
		  Catch e As DatabaseException
		    MessageBox("DB Error: " + e.Message)
		  End Try
		  
		  If data <> Nil Then
		    'print("\r\nRelated Common Weakness Enumerations (CWE)")
		    'print("-------------------------------------------")
		    textResultStr = textResultStr + EndOfLine +"Related Common Weakness Enumerations (CWE)"+ EndOfLine
		    textResultStr = textResultStr + "-------------------------------------------"+ EndOfLine
		    
		    
		    For Each row As DatabaseRow In data
		      'cwe=i[0].lstrip('CWE-')
		      cwe = row.ColumnAt(0).StringValue.Middle(4)
		      mysql = "SELECT name FROM cwe WHERE cwe_id = "+cwe
		      'Try
		      'data2 = session.mDB.SelectSQL(mysql)
		      'Catch e As DatabaseException
		      'MessageBox("DB Error: " + e.Message)
		      'End Try
		      data2 = session.mDB.SelectSQL(mysql)
		      If data2 <> Nil Then
		        'selected_cve2 = cur.fetchone()
		        data2.MoveToFirstRow
		        'print(i[0], selected_cve2[0])
		        textResultStr = textResultStr + row.ColumnAt(0).StringValue + Tab + data2.ColumnAt(0).StringValue + EndOfLine
		      end If
		    Next
		    data.close
		    data2.close
		    
		  End If
		  
		  
		  
		  
		  
		  
		  'cur.execute("SELECT cpe23uri FROM cpe WHERE cve LIKE '%"+cve+"%' AND vulnerable='True'")
		  'selected_cve = cur.fetchall()
		  'print("\r\nRelated Common Platform Enumerations (CPE)")
		  'print("-------------------------------------------")
		  'for i in selected_cve:
		  'print(i[0])
		  mysql = "SELECT cpe23uri FROM cpe WHERE cve LIKE '%"+cve+"%' AND vulnerable='True'"
		  Try
		    data = session.mDB.SelectSQL(mysql)
		  Catch e As DatabaseException
		    MessageBox("DB Error: " + e.Message)
		  End Try
		  
		  If data <> Nil Then
		    textResultStr = textResultStr + EndOfLine +"Related Common Platform Enumerations (CPE)"+ EndOfLine
		    textResultStr = textResultStr + "-------------------------------------------"+ EndOfLine
		    For Each row As DatabaseRow In data
		      textResultStr = textResultStr + row.ColumnAt(0).StringValue + EndOfLine
		    Next
		    data.close
		  end if
		  
		  CVEnumberResultTextArea.Text = textResultStr
		  
		  
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
