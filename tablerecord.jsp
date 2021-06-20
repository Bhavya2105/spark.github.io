<%-- 
    Document   : paytory
    Created on : 8 Jun, 2021, 3:32:20 PM
    Author     : HP
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            LocalDateTime myDateObj = LocalDateTime.now();  
    
    DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");  
    
    String formattedDate = myDateObj.format(myFormatObj);  
            
             String sender=session.getAttribute("naam").toString();
         
          String rs=request.getParameter("p1");
          session.setAttribute("rs",rs);
            Connection con=null;
            Statement st=null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ju", "root","root");
                st=con.createStatement();
                String st1="INSERT INTO transrecords  VALUES('"+sender+"','"+rs+"', '"+formattedDate+"')";
                
                st.execute(st1);
               request.getRequestDispatcher("transferto.jsp").include(request, response);
                 
                
            }catch(Exception e){
                out.println(""+e);
            }
            %>
    </body>
</html>

