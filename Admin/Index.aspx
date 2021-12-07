<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="COWINSYSTEM.Admin.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../stylesheetHome.css" />
    <link rel="stylesheet" href="../assets/slide.css" />
</head>

<body>
    <form id="form1" runat="server">
    <!--Menu bar-->
    <div class="nav">
       <div class="logo">Cowin system</div>

       <label for="btn" class="icon">
         <span class="fa fa-bars"></span>
       </label>
       <input type="checkbox" class="inputs" id="btn" />
       <ul>
         <li><a href="Index.aspx">Home</a></li>
         <li><a href="addvaccinator.aspx">Add Vaccinator</a></li>
         <li><a href="../Faq.aspx">FAQ</a></li>
         <li><asp:Button ID="logout" runat="server" Text="LOGOUT" style=" margin-top:10%;" 
                 onclick="logout_Click" /></li>
       </ul>
     </div>
     <!--Modal Content-->
     <div class="container">
     <div class="row">
     <div class="col-100">
     <center><p class="heading">Vaccination Till Now</p></center>
     <p>Register Benificiary:&nbsp&nbsp&nbsp&nbsp<asp:Label ID="reg" runat="server"/></p><br/>
     <p>Partially Vaccinated:&nbsp&nbsp<asp:Label ID="pv" runat="server"/></p><br/>
     <p>Fully Vaccinated:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="fv" runat="server"/></p><br/>
     </div>
     </div>
     <div class="row">
     <div class="col-100">
     <center><p class="heading">Vaccinator Details</p>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
             DataKeyNames="Vid" DataSourceID="SqlDataSource1" BackColor="White" 
             BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
             ForeColor="Black" GridLines="Horizontal" Height="53px" Width="638px">
         <Columns>
             <asp:TemplateField HeaderText = "Se.No" ItemStyle-Width="50">
               <ItemTemplate>
               <asp:Label ID="lblRowNumber" style="background-color:transparent;" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
               </ItemTemplate>

<ItemStyle Width="50px"></ItemStyle>
               </asp:TemplateField>
             <asp:BoundField DataField="Vid" HeaderText="Vid" InsertVisible="False" 
                 ReadOnly="True" SortExpression="Vid" />
             <asp:BoundField DataField="Username" HeaderText="Username" 
                 SortExpression="Username" />
             <asp:BoundField DataField="Rmn" HeaderText="RMN" SortExpression="Rmn" />
             <asp:BoundField DataField="role" HeaderText="Role" SortExpression="role" />
             <asp:BoundField DataField="status" HeaderText="Status" 
                 SortExpression="status" />
             <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
         </Columns>
         <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
         <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
         <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F7F7F7" />
         <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
         <SortedDescendingCellStyle BackColor="#E5E5E5" />
         <SortedDescendingHeaderStyle BackColor="#242121" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:CowinConnectionString %>" 
             SelectCommand="SELECT [Vid], [Username], [Rmn], [role], [status], [date] FROM [vaccinator]">
         </asp:SqlDataSource>
     </center>     
     </div> 
     </div>
     </div>
     </form>
</body>

</html>