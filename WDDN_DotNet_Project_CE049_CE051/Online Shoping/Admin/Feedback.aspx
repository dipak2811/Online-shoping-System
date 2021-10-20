<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Online_Shoping.Admin.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">

    <title></title>

    <style type="text/css">

        .style1

        {

            color: #FF3300;

        }

    </style>

</head>

<body>

    <form id="form1" runat="server">

    <div>

        <fieldset style="width: 40%;">

            <legend>Feedback</legend>

            <table cellpadding="2" cellspacing="5" >

               

                <tr>

                    <td width="80px">

                    </td>

                    <td>

                    </td>

                </tr>

                <tr>

                    <td width="80px">

                        Name<span style="color: #CC3300"> *</span>

                    </td>

                    <td>

                        <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"

                            ErrorMessage="Name Required" ForeColor="#FF3300"

                            ControlToValidate="txtName"></asp:RequiredFieldValidator>

                    </td>

                </tr>

                <tr>

                    <td>

                        Subject <span class="style1">*</span>

                    </td>

                    <td>

                        <asp:TextBox ID="txtSubject" runat="server" Width="200px"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"


 
                            ErrorMessage="Subject Required" ForeColor="#FF3300"


 
                            ControlToValidate="txtSubject"></asp:RequiredFieldValidator>

                    </td>

                </tr>

                <tr>

                    <td>

                        E-mail<span style="color: #CC3300"> *</span>

                    </td>

                    <td>

                        <asp:TextBox ID="txtEmail" runat="server" Width="300px"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"

                            ErrorMessage="Email Required" ForeColor="#FF3300"

                            ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"

                            ErrorMessage="Not a vailed email" ControlToValidate="txtEmail"

                            ForeColor="#FF3300"

                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                    </td>

                </tr>

                <tr>

                    <td>

                        Inquiry<span style="color: #CC3300"> </span>

                    </td>

                    <td>

                        <asp:TextBox ID="txtInquiry" runat="server" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>

                    </td>

                </tr>

                <tr>

                    <td>

                        &nbsp;

                    </td>

                    <td>

                        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>

                    </td>

                </tr>

                <tr>

                    <td>

                        &nbsp;

                    </td>

                    <td>

                        <asp:Button ID="btnSubmit" runat="server" Text="Send" Width="100px" OnClick="btnSubmit_Click1" />

                    </td>

                </tr>

                <tr>

                    <td>

                        &nbsp;

                    </td>

                    <td>

                        &nbsp;

                    </td>

                </tr>

            </table>

        </fieldset>

    </div>

    </form>
   
             <div>
        <asp:HyperLink ID="HyperLink1" href="Login.aspx" runat="server">HomePage</asp:HyperLink>
    </div>
</body>

</html>
