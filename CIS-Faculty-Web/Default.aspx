<%@ Page Language="C#" Inherits="CISFacultyWeb.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Default</title>
</head>
<body>
	<form id="form1" runat="server">
		<asp:Button id="scrapeBtn" runat="server" Text="Refresh Database" AutoPostBack="false" OnClick="scrapeBtn_Click" /> <div id="result"> <h2>Result of Query</h2><asp:TextBox ID="resultTextBox" TextMode="MultiLine" Wrap="True" Height="500px" Width="100%" runat="server" AutoPostBack="false"/></div>
  
        <asp:DropDownList ID="facultyListCombo" runat="server"/> <br>
			
        <p>When does <asp:DropDownList ID="htmlScheduleCombo" runat="server"/> have <asp:DropDownList ID="classCombo" runat="server"/><asp:Button id="findOut1Btn" runat="server" Text="Find Out" AutoPostBack="false" OnClick="findOut1Btn_Click" /></p>

		<p>Who teaches <asp:DropDownList ID="classCombo3" runat="server"/> <asp:Button id="findOut2Btn" runat="server" Text="Find Out" AutoPostBack="false" OnClick="findOut2Btn_Click"/></p>

        <p>Who is free at <asp:DropDownList ID="timeCombo" runat="server"/> <asp:Button id="findOut3Btn" runat="server" Text="Find Out" AutoPostBack="false" OnClick="findOut3Btn_Click"/></p>

        <p>When is everyone free <asp:Button id="findOut4Btn" runat="server" Text="Find Out" AutoPostBack="false" OnClick="findOut4Btn_Click"/></p>

		<div id="final">
    	    <p>When is everyone in the customized list below free</p>
            <div id="others">
                <p><asp:DropDownList ID="bigFacList" runat="server"/></p>
                <p><asp:Button id="addBtn" runat="server" Text="Add" AutoPostBack="false" OnClick="addBtn_Click"/><asp:Button id="removeBtn" runat="server" Text="Remove" AutoPostBack="false" OnClick="removeBtn_Click"/></p>
                <p><asp:Button id="findOut5Btn" runat="server" Text="Find Out" AutoPostBack="false" OnClick="findOut5Btn_Click"/></p>
            </div>
			<asp:TextBox ID="listOfChosenText" TextMode="MultiLine" Wrap="True" Height="300px" Width="80%" runat="server" AutoPostBack="false"/>
		</div>
	</form>
    <style TYPE="text/css">
		textarea {
            resize: none;
        }
        #result {
            float: right;
			width: 50%;
			}
		
		#final {
            float: left;
			width: 50%;
			}
	</style>
</body>
</html>
