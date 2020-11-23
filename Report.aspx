<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Studenteport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
    {
        width: 739px;
    }
        .style2
        {
            width: 202px;
        }
        .style3
        {
            text-align: right;
            color: Green;
            width: 157px;
        }
        .style4
        {
            width: 561px;
        }
    .style5
    {
        text-align: right;
        color: Green;
        width: 249px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            LMS - Badharudeen</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table class="style1">
                <tr>
                   
                    
                    <td class="lbl">
                            Author Name :
                            <asp:TextBox ID="txtsearch" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:Button ID="btnseach" runat="server" CssClass="btn" 
                                onclick="btnseach_Click" Text="View" />
                    </td>
                    <td class="lbl">
                            Publisher Name :
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" CssClass="btn" 
                                onclick="btnseach_Click" Text="View" />
                    </td>
                    <td class="lbl">
                            Book Name :
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:Button ID="Button2" runat="server" CssClass="btn" 
                                onclick="btnseach_Click" Text="View" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
                                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
                                <asp:MultiView ID="MultiView1" runat="server">
                                    <asp:View ID="View1" runat="server">
                                        <table class="tbl">
                                            <tr>
                                                <td class="tblhead">
                                                    <asp:Label ID="lbl" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                                        CellPadding="2" ForeColor="Black" GridLines="None" 
                                                        onrowcommand="GridView1_RowCommand" style="text-align: center" Width="748px">
                                                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                                        <Columns>
                                                            <asp:BoundField DataField="StudentName" HeaderText="StudentName" />
                                                            <asp:BoundField DataField="BranchName" HeaderText="Branch" />
                                                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                                                            <asp:TemplateField HeaderText="View">
                                                                <ItemTemplate>
                                                                    <asp:LinkButton ID="lnkview" runat="server" CommandArgument='<%#Eval("sid") %>' 
                                                                        CssClass="lnk" Text="View"></asp:LinkButton>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                        <FooterStyle BackColor="Tan" />
                                                        <HeaderStyle BackColor="#FF6600" Font-Bold="True" />
                                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                                            HorizontalAlign="Center" />
                                                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View2" runat="server">
                                        <table class="tbl">
                                            <tr>
                                                <td class="tblhead">
                                                    &nbsp;Detail Information</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table align="center" class="style4">
                                                        <tr>
                                                            <td class="style5">
                                                                Book ID : </td>
                                                            <td>
                                                                <asp:Label ID="lblid" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style5">
                                                                Book Name: </td>
                                                            <td>
                                                                <asp:Label ID="lblbookname" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style5">
                                                                Author Name :</td>
                                                            <td>
                                                                <asp:Label ID="lblauthor" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style5">
                                                                Publisher Name: </td>
                                                            <td>
                                                                <asp:Label ID="lblpublisher" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style5">
                                                                Category :</td>
                                                            <td>
                                                                <asp:Label ID="lblcategory" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        
                                                        
                                                       
                                                        <tr>
                                                            <td class="lbl">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:Button ID="Button12" runat="server" CssClass="btn" 
                                                                    onclick="Button12_Click" Text="BACK" Width="80px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                </asp:MultiView>
        </td>
    </tr>
    <tr>
        <td>
                                &nbsp;</td>
    </tr>
</table>
</asp:Content>

