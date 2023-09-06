<html>
    
    <link rel="stylesheet" href="abc.css"/>
    <body>     
        <form action="delete1.jsp">
            <div id="mydata">
                <center>
                     <%
                        String s = request.getParameter("s1");

                        if (s != null) {
                    %>
                    <%= s%>
                    <%}%>
                    <table cellpadding="15">
                        <tr>
                            <td>Enter FirstName</td>
                            <td><input type="text" placeholder="Enter FirstName" class="A" name="un"></td>
                        </tr>

                        <tr>
                            <th colspan="2"> <input type="submit" value="Delete" class="B"></th>
                        </tr>
                    </table>
                </center>
            </div>
        </form>
    </body>
</html>
