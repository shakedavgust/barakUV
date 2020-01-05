<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageO.master" AutoEventWireup="true" CodeFile="HomeP.aspx.cs" Inherits="HomeP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
   <!-- Insert to your webpage before the </head> -->
    <script type="text/jscript" src="JQuery/jquery.js"></script>
    <script type="text/jscript" src="JQuery/amazingslider.js"></script>
    <script type="text/jscript" src="JQuery/initslider-0.js"></script>
    <!-- End of head section HTML codes -- watermark-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div style="margin:90px auto;max-width:715px; margin-right:172px;">
    
    <%
    if (Session["UserN"] != null)
        Response.Write("<h1 class='h1user'> שלום" + "&nbsp" + Session["UserN"] + "," + "</h1>");
%>



    <div id="amazingslider-0" style="display:block;position:relative;margin:16px auto 56px;">
        <ul class="amazingslider-slides" style="display:none;border-radius:15px">
            <li ><img src="JQuery/super-hero-comic-marvel-superheroes-home-theater-backdrops-522174.jpg" alt="MARVEL" /></li>
            <li><img src="JQuery/DC-Comics2.jpg" alt="DC-Comics" /></li>
            <li><img src="JQuery/62375.jpg" alt="Superman" /></li>
            <li><img src="JQuery/ff.jpg" alt="Heroes" /></li>
            <li><img src="JQuery/Untitled.jpg" alt="Abbey Heroes Road" /></li>
        </ul>
  
   
        <ul class="amazingslider-thumbnails" style="display:none;">
            <li><img src="JQuery/super-hero-comic-marvel-superheroes-home-theater-backdrops-522174-tn.jpg" /></li>
            <li><img src="JQuery/DC-Comics2-tn.jpg" /></li>
            <li><img src="JQuery/62375-tn.jpg" /></li>
            <li><img src="JQuery/ff-tn.jpg" /></li>
            <li><img src="JQuery/Untitled-tn.jpg" /></li>
        </ul>
        
  </div> 
  <br /> <br />
  <table>
  <tr>

 
    <td><div class="tdHome">
  <img src="MainPic/Untitled333.jpg" style="margin-top:15px; margin-right:10px;border-radius:8px" />
  <br /><br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; בוא להיות גיבור על<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; והירשם לאתר ! 
  </div></td>

  <td style="width:15px"> </td>
  <td><div class="tdHome">
  <img src="MainPic/Untitled55555.jpg" style="margin-top:15px; margin-right:10px;border-radius:8px" />
  <br /><br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; בחנות שלנו,  מגוון<br />
&nbsp;&nbsp;&nbsp;&nbsp; מוצרים של גיבורי על! 
  </div></td>

  <td style="width:15px"> </td>
  <td><div class="tdHome">
  <img src="MainPic/Untitled4444.jpg" style="margin-top:15px; margin-right:10px;border-radius:8px" />
    <br /><br />
  &nbsp;&nbsp;&nbsp;האתר מציע קנייה בטוחה<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; מאובטחת ומהנה! 
  </div></td>

  <td style="width:15px"> </td>
    <td><div class="tdHome">
    <img src="MainPic/Untitled212.jpg" style="margin-top:15px; margin-right:10px;border-radius:8px; margin-bottom:0px" />
     <br /> <br />
 <div><div style="margin-right:50px; margin-bottom:4px">עקבו אחרינו:</div>

  <div style="float:right; margin-right:36px" class="pImg1"></div>
  <div style="float:right" class="pImg2">   </div>
  <div style="float:right" class="pImg3">  </div>
 </div>
</td>

  </tr></table>

  
  

</asp:Content>

