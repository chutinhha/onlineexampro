<%@ Page Title="" Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true"
    CodeFile="Instruction.aspx.cs" Inherits="Instruction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="900px">
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td align="right">
                Welcome,
                <asp:Label ID="lbuser" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Instruction
                <br />
                &nbsp;&nbsp;&nbsp;Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
                Some Instruction Some Instruction Some Instruction Some Instruction Some Instruction
            </td>
        </tr>
        <tr>
            <td align="center">
                <table>
                    <tr>
                        <td>
                            <asp:Button ID="btnStart" runat="server" Text="Start Exam" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
