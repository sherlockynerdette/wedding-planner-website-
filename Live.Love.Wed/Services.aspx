<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Live.Love.Wed.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Services</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />

    <link href="css/Custom.css" rel="stylesheet" />
    <link href="css/Style.css" rel="stylesheet" />
    <div class="row">
      <div class="col-md-12">
          <button id="btnCart2" runat="server" class="btn btn-primary navbar-btn pull-right" onserverclick="btnCart2_ServerClick" type="button">
                        Cart <span id="CartBadge" runat="server" class="badge"> 0 </span>
                    </button>
                    <h3>
                        <asp:Label ID="Label1" runat="server" Text="Showing All Products"></asp:Label>
                    </h3>
                    <hr />
                    
      </div>
    </div>

    <div class="row" style="padding-top:50px">

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
              <img src="ServiceImages/<%# Eval("SID") %>/<%# Eval("Name") %><%# Eval("Extention") %>" alt="<%# Eval("Name") %>"/>
              <div class="caption">
                   <div class="serName"> <%# Eval ("SName") %> </div>
                   <div class="serPrice"> <%# Eval ("SPrice","{0:0,00}") %> </div> 
                   
              </div>
          </div>
                </a>
        </div>
               
               </ItemTemplate>
       </asp:repeater>
    </div>



    <%--second product--%>
</asp:Content>
