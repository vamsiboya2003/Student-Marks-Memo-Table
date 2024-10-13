<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display</title>
</head>
<body>
<h1><marquee scrollamount="20">Student marks board</marquee></h1>
<table border="1">

<tr> </tr>
<th Style="background-color:red">Student name: </th>
<td Style="background-color:yellow;color:red"><%out.println(request.getParameter("tbname")); %> </td>


<tr> </tr>
<th Style="background-color:pink">Mobile no: </th>
<td Style="background-color:green;color:red"> <%out.println(request.getParameter("tbmobileno"));%></td>


<tr> </tr>
<th Style="background-color:yellow">Result: </th>
<td Style="background-color:#123abc;color:white"> <%out.println(request.getAttribute("final-result")); %></td>




</table>
<table border="1">


<h1> <marquee  scrollamount="20" >Student Marks Memo</marquee></h1>
<tr></tr>
<th Style="background-color:#ee82ee">Student Subject</th>
<th Style="background-color:#ee82ee"> Total marks</th>
<th Style="background-color:#ee82ee"> Student Obtained Marks</th>
<th Style="background-color:#ee82ee"> Pass/Fail</th>


<tr ></tr>
<th Style="background-color:orange"> Maths</th>
<td Style="background-color:pink"> 100</td>
<td Style="background-color:#ab4e52"> <%out.println(request.getParameter("tbmaths")); %></td>
<td  Style="background-color:grey"> <% int i=Integer.parseInt(request.getParameter("tbmaths"));

     if(i>0&&i<=35)
     {
    	 out.println('F');
     }
     else if(i>35&&i<=100)
     {
    	 out.println('P');
     }
     else
     {
    	 out.println("Not Consider");
     }
%></td>


<tr> </tr>
<th Style="background-color:#92000a"> Physics</th>
<td Style="background-color:#b22222 "> 100</td>
<td Style="background-color:#c45224"> <%out.println(request.getParameter("tbphysics"));%></td>
<td Style="background-color:#c32456"> <% int i1=Integer.parseInt(request.getParameter("tbphysics"));

     if(i1>0&&i1<=35)
     {
    	 out.println('F');
     }
     else if(i1>35&&i1<=100)
     {
    	 out.println('P');
     }
     else
     {
    	 out.println("Not Consider");
     }
%></td>


<tr> </tr>
<th Style="background-color:#789643"> Chemestry</th>
<td Style="background-color:#86c890"> 100</td>
<td Style="background-color:#4567e9"> <% out.println(request.getParameter("tbchemestry"));%></td>
<td Style="background-color:#82b456"> <% int i2=Integer.parseInt(request.getParameter("tbchemestry"));

     if(i2>0&&i2<=35)
     {
    	 out.println('F');
     }
     else if(i2>35&&i2<=100)
     {
    	 out.println('P');
     }
     else
     {
    	 out.println("Not Consider");
     }
%></td>

<tr></tr>
<th Style="background-color:#812344"> Biology</th>
<td Style="background-color:#a02345">100</td>
<td Style="background-color:#84c698"><% out.println(request.getParameter("tbbiology")); %></td>
<td Style="background-color:#85b788"> <% int i3=Integer.parseInt(request.getParameter("tbbiology"));

     if(i3>0&&i3<=35)
     {
    	 out.println('F');
     }
     else if(i3>35&&i3<=100)
     {
    	 out.println('P');
     }
     else
     {
    	 out.println("Not Consider");
     }
%></td>

</table>



</table>

</body>
</html>