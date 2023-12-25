<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="dangkythongtin.aspx.cs" Inherits="Thicuoiky.dangkythongtin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:50%">
    <tr>
        <td colspan="3">
            <div class="row-1-col-1">ĐĂNG KÝ THÔNG TIN</div>
        </td>
    </tr>
    <tr>
        <td>Họ tên</td>
        <td>
            <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" ErrorMessage="Nhập họ tên" ControlToValidate="txtHoTen" ForeColor="Red"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td>User</td>
        <td>
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="rfvUser" runat="server" ErrorMessage="Nhập username" ControlToValidate="txtUser" ForeColor="Red"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td>Mật khẩu</td>
        <td>
            <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="rfvMatKhau" runat="server" ErrorMessage="Nhập mật khẩu" ControlToValidate="txtMatKhau" ForeColor="Red"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td>Nhập lại mật khẩu</td>
        <td>
            <asp:TextBox ID="txtNLMatKhau" runat="server" TextMode="Password"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="rfvNLMatKhau" runat="server" ErrorMessage="Nhập mật khẩu lần 2" ControlToValidate="txtNLMatKhau" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cmvMatKhau" runat="server" ErrorMessage="Mật khẩu không khớp" ControlToValidate="txtNLMatKhau" ControlToCompare="txtMatKhau" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>Năm sinh</td>
        <td>
            <asp:TextBox ID="txtNamSinh" runat="server"></asp:TextBox></td>
        <td>
            <asp:CompareValidator ID="cmvNamSinh" runat="server" ErrorMessage="Nhập năm sinh" ControlToValidate="txtNamSinh" Type="Integer" Operator="DataTypeCheck" ForeColor="Red"></asp:CompareValidator></td>
    </tr>
    <tr>
        <td>E-mail</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
        <td>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Nhập địa chỉ email" ControlToValidate="txtEmail" ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" ForeColor="Red"></asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td>Địa chỉ</td>
        <td>
            <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="rfvDiaChi" runat="server" ErrorMessage="Nhập địa chỉ" ControlToValidate="txtDiaChi" ForeColor="Red"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td>Sở thích</td>
        <td>
            <asp:TextBox ID="txtSoThich" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="rfvSoThich" runat="server" ErrorMessage="Nhập sở thích" ControlToValidate="txtSoThich" ForeColor="Red"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center">
            <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" OnClick="btnDangKy_Click" /></td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center">
            <asp:Label ID="lblThongBao" runat="server"></asp:Label></td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center">
            <asp:ValidationSummary ID="vsTomTatLoi" runat="server" ForeColor="#FF3300" />
        </td>
    </tr>
</table>
</asp:Content>
