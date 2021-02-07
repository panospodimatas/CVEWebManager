#tag WebPage
Begin WebPage CPEScoreDatePage
   AllowTabOrderWrap=   True
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   False
   Height          =   600
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
   MinimumHeight   =   600
   MinimumWidth    =   800
   TabIndex        =   0
   Title           =   "Home"
   Top             =   0
   Visible         =   True
   Width           =   1000
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
      Width           =   1000
      _mPanelIndex    =   -1
   End
   Begin WebDatePicker ScoreDatePicker
      AllowKeyboardEntry=   True
      ControlID       =   ""
      EarliestDate    =   ""
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      InitialValue    =   ""
      LatestDate      =   ""
      Left            =   581
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      TabIndex        =   2
      Tooltip         =   ""
      Top             =   64
      Visible         =   True
      Width           =   150
      _mPanelIndex    =   -1
   End
   Begin WebTextField ScoreTextField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   ""
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   3
      Height          =   38
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   399
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   3
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   64
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebButton SearchButton
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Search by Score & Date"
      ControlID       =   ""
      Default         =   True
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   739
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      TabIndex        =   4
      Tooltip         =   ""
      Top             =   64
      Visible         =   True
      Width           =   241
      _mPanelIndex    =   -1
   End
   Begin WebListBox SqlDataListBox
      ColumnCount     =   5
      ColumnWidths    =   ""
      ControlID       =   ""
      Enabled         =   True
      HasHeader       =   True
      Height          =   355
      HighlightSortedColumn=   True
      Index           =   -2147483648
      Indicator       =   0
      InitialValue    =   ""
      LastAddedRowIndex=   0
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      NoRowsMessage   =   ""
      RowCount        =   0
      RowSelectionType=   1
      Scope           =   0
      SearchCriteria  =   ""
      SelectedRowColor=   &c0272D300
      SelectedRowIndex=   0
      TabIndex        =   6
      Tooltip         =   ""
      Top             =   202
      Visible         =   True
      Width           =   960
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label1
      Bold            =   True
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   23
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   507
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Multiline       =   False
      Scope           =   0
      TabIndex        =   8
      Text            =   ""
      TextAlignment   =   3
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   560
      Underline       =   False
      Visible         =   True
      Width           =   473
      _mPanelIndex    =   -1
   End
   Begin WebLabel ResultsLabel
      Bold            =   True
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
      TabIndex        =   8
      Text            =   "Showing 100 Rows per page.."
      TextAlignment   =   1
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   110
      Underline       =   False
      Visible         =   True
      Width           =   300
      _mPanelIndex    =   -1
   End
   Begin WebSegmentedButton SqlDataSegmentedButton1
      ControlID       =   ""
      Enabled         =   True
      Height          =   38
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
      Scope           =   0
      SegmentCount    =   0
      Segments        =   "First\n\nFalse\r<<\n\nFalse"
      SelectedSegmentIndex=   0
      SelectionStyle  =   0
      TabIndex        =   9
      Tooltip         =   ""
      Top             =   151
      Visible         =   True
      Width           =   120
      _mPanelIndex    =   -1
   End
   Begin WebTextField cPageTextField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   ""
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   3
      Height          =   38
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   148
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
      TabIndex        =   10
      Text            =   "0"
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   151
      Visible         =   True
      Width           =   67
      _mPanelIndex    =   -1
   End
   Begin WebLabel totalPagesLabel
      Bold            =   True
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   223
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   0
      TabIndex        =   8
      Text            =   "of 0"
      TextAlignment   =   1
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   156
      Underline       =   False
      Visible         =   True
      Width           =   79
      _mPanelIndex    =   -1
   End
   Begin WebSegmentedButton SqlDataSegmentedButton2
      ControlID       =   ""
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Left            =   310
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      SegmentCount    =   0
      Segments        =   ">>\n\nFalse\rLast\n\nFalse"
      SelectedSegmentIndex=   0
      SelectionStyle  =   0
      TabIndex        =   9
      Tooltip         =   ""
      Top             =   151
      Visible         =   True
      Width           =   120
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label2
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   507
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   0
      TabIndex        =   11
      Text            =   "Date:"
      TextAlignment   =   3
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   64
      Underline       =   False
      Visible         =   True
      Width           =   66
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label3
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   315
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   0
      TabIndex        =   11
      Text            =   "Score:"
      TextAlignment   =   3
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   64
      Underline       =   False
      Visible         =   True
      Width           =   76
      _mPanelIndex    =   -1
   End
   Begin WebButton ExportButton
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Export as CSV"
      ControlID       =   ""
      Default         =   True
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   739
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      TabIndex        =   12
      Tooltip         =   ""
      Top             =   110
      Visible         =   False
      Width           =   241
      _mPanelIndex    =   -1
   End
   Begin WebLabel ExportLabel
      Bold            =   True
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   456
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   0
      TabIndex        =   13
      Text            =   " "
      TextAlignment   =   2
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   151
      Underline       =   False
      Visible         =   True
      Width           =   524
      _mPanelIndex    =   -1
   End
   Begin WebTextField CPETextField
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
      Left            =   207
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   3
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   64
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label4
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   112
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   0
      TabIndex        =   11
      Text            =   "CPE:"
      TextAlignment   =   3
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   64
      Underline       =   False
      Visible         =   True
      Width           =   87
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
		  
		  
		  'Self.textResultStr = ""+ Tab + Tab +" " + Tab + Tab + Tab +" "+ Tab +""+ EndOfLine
		  'Self.textResultStr = Self.textResultStr +  EndOfLine
		  SqlDataListBox.HeaderAt(0) = "Nr."
		  SqlDataListBox.HeaderAt(1) = "CPE"
		  SqlDataListBox.HeaderAt(2) = "CVE"
		  SqlDataListBox.HeaderAt(3) = "CVSSv3.x"
		  SqlDataListBox.HeaderAt(4) = "CVSSv2"
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Populate(currentpage As Integer)
		  '======================================================
		  '=======================  Date & Score Search =========
		  '======================================================
		  
		  Dim Tab As String = Encodings.UTF8.Chr(9)
		  
		  
		  SqlDataListBox.RemoveAllRows
		  
		  var i,x, tmpPageRange as integer
		  
		  
		  tmpPageRange = pageRange
		  totalRows = Session.sqlData .RowCount
		  
		  if (totalRows mod pageRange) = 0 then
		    totalPages = totalRows / pageRange
		  else
		    totalPages = (totalRows / pageRange) + 1
		  end if
		  
		  
		  
		  totalPagesLabel.Text = "of " + totalPages.ToString
		  ResultsLabel.Text = totalRows.ToString + " Rows found."
		  ResultsLabel.Visible = True
		  
		  Session.sqlData.MoveToFirstRow
		  
		  var therec as integer = 1
		  
		  if currentpage <> 0 then
		    for x=0 to currentpage - 1
		      for i=1 to tmpPageRange
		        Session.sqlData.MoveToNextRow
		        therec= therec + 1
		      next
		    next
		  end if
		  
		  
		  if currentpage * pageRange + pageRange > totalRows then
		    tmpPageRange = totalRows - (currentpage * pageRange)
		  end if
		  For i=1 to tmpPageRange
		    SqlDataListBox.AddRow(Str(currentpage * pageRange + i), _
		    Session.sqlData.ColumnAt(0).StringValue.TrimRight, _
		    Session.sqlData.ColumnAt(1).StringValue.TrimRight, _
		    Session.sqlData.ColumnAt(2).StringValue.TrimRight, _
		    Session.sqlData.ColumnAt(3).StringValue.TrimRight)
		    Session.sqlData.MoveToNextRow
		  next
		  
		  
		  
		  
		  
		  SqlDataListBox.UpdateBrowser
		  CPEScoreDatePage.UpdateBrowser
		  
		  '======================================================
		  '=======================  End. ========================
		  '======================================================
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		cpage As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mday As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mmonth As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mTextFile As WebFile
	#tag EndProperty

	#tag Property, Flags = &h0
		mydaypickerStr As String
	#tag EndProperty

	#tag Property, Flags = &h0
		myear As String
	#tag EndProperty

	#tag Property, Flags = &h0
		pageRange As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		totalPages As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		totalRows As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Untitled As Integer
	#tag EndProperty


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
#tag Events SearchButton
	#tag Event
		Sub Pressed()
		  
		  if Session.sqlData <> Nil Then
		    Session.sqlData.close
		  end if
		  
		  SqlDataListBox.RemoveAllRows
		  cPageTextField.Text = "0"
		  ResultsLabel.Visible = False
		  totalPagesLabel.Text = "of 0 "
		  totalPages = 0
		  totalRows = 0
		  ExportButton.Visible = False
		  
		  
		  if ScoreDatePicker.SelectedDate = Nil then
		    Return
		  end if
		  if ScoreTextField.Text = "" then
		    Return
		  end if
		  if ScoreTextField.Text.ToInteger <=0 or ScoreTextField.Text.ToInteger > 10 then
		    Return
		  end if
		  if CPETextField.Text = "" then
		    Return
		  end if
		  
		  myear = ScoreDatePicker.SelectedDate.Year.ToString
		  
		  if ScoreDatePicker.SelectedDate.Month < 10 then
		    mmonth = "0" + ScoreDatePicker.SelectedDate.Month.ToString
		  else
		    mmonth = ScoreDatePicker.SelectedDate.Month.ToString
		  end if
		  if ScoreDatePicker.SelectedDate.Day < 10 then
		    mday = "0" + ScoreDatePicker.SelectedDate.Day.ToString
		  else
		    mday = ScoreDatePicker.SelectedDate.Day.ToString
		  end if
		  mydaypickerStr = myear+"/"+ mmonth +"/"+ mday
		  
		  
		  pageRange = 100
		  cpage = 1
		  cPageTextField.Text = cpage.ToString
		  
		  Dim Tab As String = Encodings.UTF8.Chr(9)
		  
		  Try
		    Session.mDb.Connect
		    Session.mDBisConnected = True
		    
		  Catch e As DatabaseException
		    MessageBox( "Error connecting to MySQL: " + e.Message)
		  End Try
		  
		  dim mysql As String
		  var score As String
		  var Date As String
		  dim cpe As String
		  
		  score = ScoreTextField.Text
		  cpe = CPETextField.Text
		  date = mydaypickerStr
		  
		  mysql = "SELECT cpe23uri, cve, base_score_3, base_score, published_date FROM cvss_vs_cpes WHERE cpe23uri LIKE '%" + cpe + "%' AND (base_score_3 >= " + score + "OR base_score >= " + score + ") AND (published_date >= '" + date + "'::date)"
		  
		  Try
		    Session.sqlData = session.mDB.SelectSQL(mysql)
		  Catch e As DatabaseException
		    MessageBox("DB Error: " + e.Message)
		  End Try
		  
		  Session.mDb.Close
		  Session.mDBisConnected = False
		  
		  
		  Populate(cpage-1)
		  ExportButton.Visible = True
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SqlDataSegmentedButton1
	#tag Event
		Sub Pressed(itemIndex as Integer)
		  Select Case itemIndex
		  Case 0 // First segment
		    cpage = 1
		    cPageTextField.Text = cpage.ToString
		    Populate(cpage-1)
		    
		  Case 1 // Second segment
		    if cpage -1 >= 1 then
		      cpage = cpage - 1
		      cPageTextField.Text = cpage.ToString
		      Populate(cpage-1)
		      
		    end if
		    
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cPageTextField
	#tag Event
		Sub TextChanged()
		  var tmpcpage as integer
		  
		  if totalPages = 0 then
		    cPageTextField.text = "0"
		    return
		  end if
		  
		  tmpcpage = cPageTextField.text.ToInteger
		  if tmpcpage < 1 or tmpcpage > totalPages then
		    cPageTextField.text = "1"
		    cpage = 1
		    Populate(cpage-1)
		  else
		    cPageTextField.text = tmpcpage.ToString
		    cpage = tmpcpage
		    Populate(cpage-1)
		    
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SqlDataSegmentedButton2
	#tag Event
		Sub Pressed(itemIndex as Integer)
		  Select Case itemIndex
		  Case 1 // First segment
		    cpage = totalPages
		    cPageTextField.Text = cpage.ToString
		    Populate(cpage-1)
		    
		  Case 0 // Second segment
		    if cpage + 1 <= totalPages then
		      cpage = cpage +1
		      cPageTextField.Text = cpage.ToString
		      Populate(cpage-1)
		      
		    end if
		    
		  End Select
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExportButton
	#tag Event
		Sub Pressed()
		  // mTextFile is a property of the web page
		  
		  mTextFile = New WebFile
		  mTextFile.MimeType = "text/plain"
		  
		  // Ensure the browser downloads the file rather
		  // than trying to display it.
		  mTextFile.ForceDownload = True
		  mTextFile.FileName = "CPEexport.csv"
		  
		  dim fstring As string
		  
		  Session.sqlData.MoveToFirstRow
		  fstring = "CPE,CVE,CVSSv3.x,CVSSv2" + EndOfLine
		  
		  ExportLabel.Text = "Preparing CSV. Please Wait.."
		  ExportLabel.UpdateBrowser
		  
		  for Each row as DatabaseRow In Session.sqlData
		    fstring = fstring + _
		    Session.sqlData.ColumnAt(0).StringValue.TrimRight + "," + _
		    Session.sqlData.ColumnAt(1).StringValue.TrimRight + "," + _
		    Session.sqlData.ColumnAt(2).StringValue.TrimRight + "," + _
		    Session.sqlData.ColumnAt(3).StringValue.TrimRight + EndOfLine
		    
		  next
		  
		  mTextFile.Data = fstring
		  If mTextFile.Download Then // This causes the file to be downloaded
		    // Download requested
		  End If
		  ExportLabel.Text = " "
		  
		  
		  
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
	#tag ViewProperty
		Name="cpage"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="mday"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="mmonth"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="mydaypickerStr"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="myear"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="pageRange"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="totalPages"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="totalRows"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Untitled"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
