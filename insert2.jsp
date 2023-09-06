<%@page import="java.sql.*" %>
<%
    String s1 = request.getParameter("u1");
    String s2 = request.getParameter("u2");
    String s3 = request.getParameter("u3");
    String s4 = request.getParameter("u4");
    String s5 = request.getParameter("u5");
    String s6 = request.getParameter("u6");
    String s7 = request.getParameter("u7");
    String s8 = request.getParameter("u8");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql:///sunbasedata?useSSL=false&allowPublicKeyRetrieval=true", "root", "Shubh@29");
        Statement st = con.createStatement();
        st.executeUpdate("insert into customer_list values('" + s1 + "','" + s2 + "','" + s3 + "','" + s4 + "','" + s5 + "', '"+s6+"','"+s7+"','"+s8+"')");
        response.sendRedirect("customer_list.jsp?s1=Data Insert!!");
        con.close();
    } catch (Exception e1) {
        out.println(e1);
    }
%>