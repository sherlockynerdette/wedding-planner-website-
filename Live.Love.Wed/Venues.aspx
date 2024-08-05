<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeFile="Venues.aspx.cs" Inherits="Live.Love.Wed.Venues" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Venues</title>

    <link href="css/Custom.css" rel="stylesheet" />
    <link href="css/Style.css" rel="stylesheet" />

 <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.0/css/jquery.dataTables.css" />  
        <script type="text/javascript" charset="utf8" src="//code.jquery.com/jquery-1.10.2.min.js"></script>  
        <script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.0/js/jquery.dataTables.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
  <h2>Mas's Shirt</h2>  

    <div class="panel panel-primary">
      <div class="panel-heading">Shirts</div>
      <div class="panel-body">

      <asp:TextBox ID="txtFilterGrid1Record" CssClass="form-control" runat="server" 
              placeholder="Search Products...." AutoPostBack="true" 
              ontextchanged="txtFilterGrid1Record_TextChanged" ></asp:TextBox>
      <br />
      <hr />
      <asp:repeater ID="rptrServices" runat="server">
           <ItemTemplate>
        <div class="col-sm-3 col-md-3">
            <a href="ServiceView.aspx?PID=<%# Eval("SID") %>" style="text-decoration:none;">
          <div class="thumbnail">              
              <img src="ServiceImages/<%# Eval("SID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>"/>
              <div class="caption"> 
                   <div class="serName"> <%# Eval ("SName") %> </div>
                   <div class="serPrice"> <span class="SerOgPrice" > <%# Eval ("SPrice","{0:0,00}") %> </span></div> 
                   
              </div>
          </div>
                </a>
        </div>
               
               </ItemTemplate>
       </asp:repeater>
      
      </div>
      <div class="panel-footer">  </div>
    </div>
    
</div>
</asp:Content>
