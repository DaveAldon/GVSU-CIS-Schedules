<%@ Page EnableEventValidation="false" Language="C#" Inherits="CISFacultyWeb.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Default</title>
</head>
<body>
	<form id="form1" runat="server">
		<div id="queries">
			<asp:Button CssClass="redbutton" id="scrapeBtn" runat="server" Text="Refresh Database" AutoPostBack="false" OnClick="scrapeBtn_Click" />
        <asp:DropDownList ID="htmlScheduleCombo" runat="server"/> <asp:Button CssClass="button" id="viewBtn" runat="server" Text="View Schedule" AutoPostBack="false" OnClick="view_Click"/><br>
        <p>When does <asp:DropDownList ID="facultyListCombo" runat="server"/> have <asp:DropDownList ID="classCombo" runat="server"/><asp:Button CssClass="button" id="findOut1Btn" runat="server" Text="Find Out" AutoPostBack="false" OnClick="findOut1Btn_Click" /></p>
				<p>Who teaches <asp:DropDownList ID="classCombo3" runat="server"/> <asp:Button CssClass="button" id="findOut2Btn" runat="server" Text="Find Out" AutoPostBack="false" OnClick="findOut2Btn_Click"/></p>
        <p>Who is free at <asp:DropDownList ID="timeCombo" runat="server"/> <asp:Button CssClass="button" id="findOut3Btn" runat="server" Text="Find Out" AutoPostBack="false" OnClick="findOut3Btn_Click"/></p>
        <p>When is everyone free <asp:Button CssClass="button" id="findOut4Btn" runat="server" Text="Find Out" AutoPostBack="false" OnClick="findOut4Btn_Click"/></p>
				<div id="final">
		    	    <p>When is everyone in the customized list below free</p>
		            <div id="others">
		                <p><asp:DropDownList ID="bigFacList" runat="server"/></p>
		                <p><asp:Button CssClass="button" id="addBtn" runat="server" Text="Add" AutoPostBack="false" OnClick="addBtn_Click"/><asp:Button CssClass="button" id="removeBtn" runat="server" Text="Remove" AutoPostBack="false" OnClick="removeBtn_Click"/></p>
		                <p><asp:Button CssClass="button" id="findOut5Btn" runat="server" Text="Find Out" AutoPostBack="false" OnClick="findOut5Btn_Click"/></p>
		            </div>
					<asp:TextBox ID="listOfChosenText" TextMode="MultiLine" Wrap="True" Height="150px" Width="200px" runat="server" AutoPostBack="false"/>
				</div>
			</div>
      <div id="result">
				<h2>Result of Query</h2><asp:TextBox ID="resultTextBox" TextMode="MultiLine" Wrap="True" Height="500px" Width="100%" runat="server" AutoPostBack="false"/>
			</div>
			<div runat="server" id="webView"></div>
	</form>

    <style TYPE="text/css">
		html,body {
			height:100%;
		}
		#webView, #queries, #result {
	    display:table-cell;
	    height:100%;
	    vertical-align:top;
		}
		#webView {
			width: 33%;
			background-color: grey;
		}
		#queries {
			width: auto;
		}
		#result {
			width: 20%;
		}
		p {
    	margin: 1px;
		}
		* {
	    font-size: 100%;
	    font-family: Arial;
    }
		.button {
            height: 38px;
            text-align: center;
            border-radius: 28px;
            background: #13b5ea;
            background: -moz-linear-gradient(top, #13b5ea, #0f91bb);
            background: -webkit-gradient(linear, 0 0, 0 100%, from(#13b5ea), to(#0f91bb));
            background: -webkit-linear-gradient(top, #13b5ea, #0f91bb);
            background: -o-linear-gradient(top, #13b5ea, #0f91bb);
            background: linear-gradient(to bottom, #13b5ea, #0f91bb);
            -webkit-transition: 0.5s;
            -moz-transition: 0.5s;
            -o-transition: 0.5s;
            transition: 0.5s;
            color: #ffffff;
            text-decoration: none;
            font-size: 13px;
            line-height: 28px;
            margin: 5px 0;
            padding: 0 20px;
            border: 5px solid #c8e6f0;
		}
        .button:hover {
            -webkit-box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            -moz-box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            border-color: #ffffff;
		}
		.redbutton:hover {
            -webkit-box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            -moz-box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            border-color: #ffffff;
        }
        .redbutton {
			height: 38px;
            text-align: center;
            border-radius: 28px;
            background: #B33333;
            background: -moz-linear-gradient(top, #B33333, #800000);
            background: -webkit-gradient(linear, 0 0, 0 100%, from(#B33333), to(#800000));
            background: -webkit-linear-gradient(top, #B33333, #800000);
            background: -o-linear-gradient(top, #B33333, #800000);
            background: linear-gradient(to bottom, #B33333, #800000);
            border: 5px solid #FFCCCC;
			-webkit-transition: 0.5s;
            -moz-transition: 0.5s;
            -o-transition: 0.5s;
            transition: 0.5s;
            color: #ffffff;
            text-decoration: none;
            font-size: 13px;
            line-height: 28px;
            margin: 5px 0;
            padding: 0 20px;
            border: 5px solid #c8e6f0;
		}
		textarea {
      resize: none;
    }

	</style>
</body>
</html>
