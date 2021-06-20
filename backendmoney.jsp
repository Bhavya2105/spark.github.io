<%-- 
    Document   : otp
    Created on : 5 Jun, 2021, 6:33:07 PM
    Author     : HP
--%>

<%@page import="java.sql.PreparedStatement"%>
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
        <%
          String sender=session.getAttribute("naam").toString();
         
           String paise=session.getAttribute("rs").toString();
            String receiver=request.getParameter("nt"); 
            Connection con=null;
            Statement st=null;
            int b=0,t=0;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ju","root","root");
                st=con.createStatement();
                String sql="SELECT balance from bankdetails WHERE name='"+receiver+"'";
                ResultSet rset=st.executeQuery(sql);
                while(rset.next()){
                    String bal=rset.getString("balance");
                    b=Integer.parseInt(bal);  
                   
                }
                int total=0;
                int money=0;
                money=Integer.parseInt(paise);
                total=b+money;
                String amount= String.valueOf(total);
                session.setAttribute("amount",amount);
               String state="UPDATE bankdetails SET Balance='"+amount+"' WHERE name='"+receiver+"'";
               st.executeUpdate(state);
               
               
               String sqel="SELECT balance from bankdetails WHERE name='"+sender+"'";
               PreparedStatement ps=con.prepareStatement(sqel);
               
                 ResultSet rst= ps.executeQuery(sqel);
                while(rst.next()){
                    String bal=rst.getString("balance");
                    t=Integer.parseInt(bal);   
                   
                }
                int total1=0;
                
                total1=t-money;
                String amount1= String.valueOf(total1);
                session.setAttribute("amount1",amount1);
               String state1="UPDATE bankdetails SET balance='"+amount1+"' WHERE name='"+sender+"'";
               ps.executeUpdate(state1);
               
               
               
               
            }catch(Exception e){
                out.println(""+e);
            }
            
            %>
             <script>
                   alert("Money Transfered Successfully!");
                    window.location.href = "index.html";
               </script>
            <div class="footer">
            <img class="contact" src="phone.png"><b>+919413335004  ||   +919309369438</b><br>
            <img class="phone" src="contact.jpg"><b>0141-23039777</b><br>
            <img class="mail" src="mail.png"><b>pbnbank2021@gmail.com</b><br>
            <img class="address" src="address.png"><b>Head office:--plot-234,kalyan vihar,jaipur(302019)</b>
           
        </div>
    </body>
</html>

