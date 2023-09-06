<%@page import="java.sql.*" %>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="abc.css"/>
    </head>
    <body>
        <div id='mydata'>
            <center>
                <form acrion="search.jsp">
                    <table cellpadding='10'>
                        <tr>
                            <td>Enter FirstName.</td>
                            <td><input type='text' placeholder='Enter FirstName.' name="u1" class='A'></td>
                        </tr>
                        <tr>
                            <th colspan="2"><input type="submit" class="B" name="b1" value="Search"></th>
                        </tr>
                    </table>
                </form>
                <%
                    String s1 = request.getParameter("b1");
                    if (s1 != null) {
                        String s11 = request.getParameter("u1");
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql:///sunbasedata?useSSL=false&allowPublicKeyRetrieval=true", "root", "Shubh@29");
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select * from customer_list where FirstName='" + s11 + "'");
                            if (rs.next()) {
                %>
                <table cellpadding="12">

                    <form acrion="customer_list.jsp">
                        <tr>
                            <td>First Name.</td>
                            <td><td><input type='text' value=<%= rs.getString(1)%> name="n1"></td>
                        </tr>
                        <tr>
                            <td>Last Name</td>
                            <td><td><input type='text' value=<%= rs.getString(2)%> name="n2"></td>
                        </tr><tr>
                            <td>Street</td>
                            <td><td><input type='text' value=<%= rs.getString(3)%> name="n3"></td>
                        </tr><tr>
                            <td>Address</td>
                            <td><td><input type='text' value=<%= rs.getString(4)%> name="n4"></td>
                        </tr><tr>
                            <td>CIty</td>
                            <td><td><input type='text' value=<%= rs.getString(5)%> name="n5"></td>
                        </tr><tr>
                            <td>State</td>
                            <td><td><input type='text' value=<%= rs.getString(6)%> name="n6"></td>
                        </tr><tr>
                            <td>Email</td>
                            <td><td><input type='text' value=<%= rs.getString(7)%> name="n7"></td>
                        </tr><tr>
                            <td>Phone</td>
                            <td><td><input type='text' value=<%= rs.getString(8)%> name="n8"></td>
                        </tr>

                        <tr>
                            <th colspan="3"><input type="submit" class="B" name="b2" value="Update"></th>
                        </tr>
                    </form>
                </table>      

                <%
                            } else {
                            }
                        } catch (Exception e) {
                            out.println(e);
                        }

                    }
                %>

            </center>
    </body>
</html>

<%
    String s2 = request.getParameter("b2");
    if (s2 != null) {
        String s21 = request.getParameter("n1");
        String s22 = request.getParameter("n2");
        String s23 = request.getParameter("n3");
        String s24 = request.getParameter("n4");
        String s25 = request.getParameter("n5");
        String s26 = request.getParameter("n6");
        String s27 = request.getParameter("n7");
        String s28 = request.getParameter("n8");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql:///sunbasedata?useSSL=false&allowPublicKeyRetrieval=true", "root", "Shubh@29");
            Statement st = con.createStatement();
            st.executeUpdate("update customer_list set lastName='" + s22 + "',Street='" + s23 + "',Address='" + s24 + "',CIty='" + s25 + "',State='" + s26 + "',Email='" + s27 + "',Phone='" + s28 + "' where FirstName='" + s21 + "'");

            response.sendRedirect("customer_list.jsp");

        } catch (Exception e) {
            out.println(e);
        }

    }

%>