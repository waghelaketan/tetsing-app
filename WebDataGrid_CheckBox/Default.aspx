<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="Infragistics35.Web.v10.3, Version=10.3.20103.2217, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.Web.UI.GridControls" tagprefix="ig" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <ig:WebDataGrid ID="WebDataGrid1" runat="server" AutoGenerateColumns="False" 
            Height="435px" Width="852px" oninitializerow="WebDataGrid1_InitializeRow">
            <Columns>
                <ig:BoundDataField DataFieldName="EmployeeID" Key="EmployeeID">
                    <Header Text="EmployeeID" />
                </ig:BoundDataField>
                <ig:BoundDataField DataFieldName="Name" Key="Name">
                    <Header Text="Name" />
                </ig:BoundDataField>
                <ig:BoundDataField DataFieldName="Department" Key="Department">
                    <Header Text="Department" />
                </ig:BoundDataField>
                <ig:TemplateDataField Key="flag1">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("flag1") %>' 
                            oncheckedchanged="CheckBox1_CheckedChanged" AutoPostBack="true"/>
                    </ItemTemplate>
                    <Header Text="flag1" />
                </ig:TemplateDataField>
                <ig:TemplateDataField Key="flag2">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("flag2") %>' />
                    </ItemTemplate>
                    <Header Text="TemplateField_0" />
                </ig:TemplateDataField>
            </Columns>
        </ig:WebDataGrid>
    
    </div>
    </form>
</body>
</html>
