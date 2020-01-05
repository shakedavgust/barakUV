<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="MainP.aspx.cs" Inherits="MainP" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" type="text/css" href="StyleSheet.css" />

</head>
<body style="background-image:url('MainPic/2ללא שם.bmp')">
<div class="divMainp">
<div  class="divMainp2">
<center><h1 style="font-family: Tahoma; font-size: 60px; font-weight: bolder; color: #9E0606;">ברוך הבא</h1></center>

<h2 style="font-family: Tahoma; font-size: 16px; font-weight: normal; color: #000000; margin-right:8px;" dir="rtl"  >
ברוכים להבאים לאתר I Need A Hero
<br />
אתר זה מציג לכלל הגולשים מידע חינוי בנוגע לקומיקסים גיבורי על וכד'.
<br /><br />
בנוסף האתר מציע ללקוחותיו שירשמו, את חנות האתר בה יוכלו לרכוש מוצרים שונים-
<br />
קומיקסים, תחפושות, פוסטרים, בובות צעצוע ועוד, הקשורים לגיבורי על.
<br /><br /></h2>
<h2 style="font-family: Tahoma; font-size: 16px; font-weight: bold; color: #000000; margin-right:8px;" dir="rtl"  >
אז הרשמו עכשיו ותוכלו להנות מכל תוכן האתר!
<br /></h2>
    <br />
<a class="AvMainp"  href="RegisterP.aspx">
<center style="font-family: Tahoma; font-size: 17px;font-weight: bold;color: #FFFFFF; margin-top:6px;">
הרשם כאן
</center>
</a>
    <br />
</div>
<table dir="rtl">
<tr>
<td style="width:650px" ></td>
<td>
<a class="MainA"  href="LoginP.aspx">התחבר</a>
</td>
<td style="width:750px"></td>

<td style="margin-right:40px">

    <asp:Image ID="Image1" runat="server"  ImageUrl="~/MainPic/4.png" />
</td>
</tr>
</table>
</div>
</body>
</html>
