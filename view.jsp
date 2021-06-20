<%-- 
    Document   : paymenthistory
    Created on : 8 Jun, 2021, 6:48:56 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                margin:0;
            }
            .header{
                background-color: #990073;
                padding: 20px;
                text-align: center;
            }
            .img{
                width: 200px;
                height: 180px;
            }
                        
            ul{
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
            }
            li{
                float:left;
            }
            li a{
                display:block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }
            li a:hover:not(.active) {
                 background-color: #111;
            }

            .active{
               background-color: #990073;
             }
             
li a, .dropbtn {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
  background-color: #111;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1;}

.dropdown:hover .dropdown-content {
  display: block;
}
  .b{
       margin-top:  0;
       margin-left: 0;
       padding: 0;
       width: 250px;
       height: 250px;
   }
       
   
.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: white;
  background-color: #990073;
  border: none;
  border-radius: 10px;
  box-shadow: 0 8px #999;
}

.button:hover {background-color: #990073}

.button:active {
  background-color: #99073;
  box-shadow: 0 4px #666;
  transform: translateY(4px);
}

.footer{
                background-color: #990073;
                padding: 10px;
                align: left;
            }
            .contact{
                width: 30px;
                height: 20px;
               
            }
            .phone{
                width: 30px;
                height: 20px;
            }
            .mail{
                width: 30px;
                height: 20px;
            }
            .address{
                width: 30px;
                height: 20px;
            }
            table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
  
}

tr:nth-child(even) {
  background-color: #ddd;
}
tr:nth-child(odd) {
  background-color: #f1f1f1;
}
table.center {
  margin-left: auto; 
  margin-right: auto;
}
        </style>
    </head>
    <body>
         <div class="header">
            <h1><img class="img" src="logospark.jpg"></h1>
            
            
      </div>
         <ul>
            <li><a class="active" href="#home">Home</a></li>
            
           
            <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Contact</a>
    <div class="dropdown-content">
        <h4>Contact</h4>
        <p><b>Chief Manager</b>:- Mr. XYz<br>  xyzkkk4@gmail.com<br>  9999988888</p>
        <p><b>Manager </b>:- Mr. stu<br>  stu32hy@gmail.com<br>   8888855554</p>
        <p><b>Deputy Manager</b>:- Mr. gyu<br>   gyu678@gmail.com<br>  4411775566</p>
       
        
    </div>
            <li><a href="about.html">About</a></li>
        </ul> 
         
        <h2 style="text-align: center">Customers:</h2>
        
     
  <%
      Connection con=null;
      Statement st=null;
      
      try{
          Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ju", "root","root");
                st=con.createStatement();
                String sql="SELECT * FROM bankdetails";
                ResultSet rt=st.executeQuery(sql);
                %>
                <table class="center" border=1 width=50% height=50% style="text-align: center">
                           <tr>
    <th>Name</th>
    <th>E-mail</th>
    <th>Balance</th>
    
  </tr>
          <%
                while(rt.next())
                {
                    String nm=rt.getString("name");
                    String email=rt.getString("email");
                    String bal=rt.getString("balance");
                    
                    %>
                    
                    <tr> <td><a href="transfer.jsp?nu=<%= ""+nm %>"><%= ""+nm %></a></td>
                        <td><%= ""+email %></td>
                        <td><%= ""+bal %></td>
                        
                    </tr>
                            <%
                    
                   
                }
                con.close();
      }catch(Exception e){
          out.println(""+e);
      }
      %>
 
      
        </table>
     
        
        <div class="footer">
            <img class="contact" src="phone.png"><b>+919413335004  ||   +919309369438</b><br>
            <img class="phone" src="contact.jpg"><b>0141-23039777</b><br>
            <img class="mail" src="mail.png"><b>thesparksbank2021@gmail.com</b><br>
            <img class="address" src="address.png"><b>Head office:--plot-234,kalyan vihar,jaipur(302019)</b>
           
        </div>
        
    </body>
</html>
