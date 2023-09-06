<%@page import="java.sql.*" %>
<html>
    <head>        
        <link rel="stylesheet" href="abc.css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    </head>
    <body>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql:///sunbasedata?useSSL=false&allowPublicKeyRetrieval=true", "root", "Shubh@29");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from customer_list");
        %>
        <div id="mymenu">
            <center>
                  
                <table cellpadding="8" bg.color="white">
                    <tr>      
                         <caption> Customer List</caption>
                    <td> First Name</td>
                    <td> Last Name</td>
                    <td> Street</td>
                    <td> Address</td>
                    <td> CIty</td>
                    <td> State</td>
                    <td> Email </td>
                    <td> Phone </td>
                    <td> Action </td>
                    <td></td>
                   
                    <form action="insert.jsp">
                        <button class="C" > Add Customer</button>
                         </form>
                     </tr>
                    <%
                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(6)%></td>
                        <td><%=rs.getString(7)%></td>
                        <td><%=rs.getString(8)%></td>
                    <form action="delete.jsp"> 
                        <td><button  style="background-color: red; color: #ffffff; border-radius: 8px 10px; " ><i class="material-icons">delete</i></i></button></td>
                    </form>
                    <form action="edit.jsp">
                        <td><button style="background-color: green; color: #ffffff; border-radius: 8px 10px; "><i class="material-icons">edit</i></button></td> 
                    </form>
                    </tr>

                    <%
                            }
                            con.close();
                        } catch (Exception e) {
                            out.println(e);
                        }
                    %>
                </table>
            </center>
        </div>
    </body>
</html>
