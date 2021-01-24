<%-- 
    Full_Name: Nada Abdelrahman 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multiplication Table</title>
        <style>
            .headTable{background-color: blue;width: 5%;color: white;font-size:20px}
            .td0{background-color:darkred; width:5%; color: white; font-size: 21px}
            .td1{background-color:blue; width:5%; color: white; font-size: 21px}
            .td2{font-weight:bold ; width:5%; color: black; font-size: 17px}
            .numbers{background-color:blue;color: white}

        </style>
    </head>
    <body>
        <h1>Thanks for using Mini-Multiplication Table</h1>
        <%
            String counterNumber = request.getParameter("counter");
            int counter;
            counter = Integer.parseInt(counterNumber.trim());
        %>
        <table border="2" width="35%">
            <tr>
                <td class="td0" >Multiply</td>
                <%
                        for (int i = 1; i <= counter; i++) {%>
                <th class="headTable"> <%=i%> </th>
                    <%}%>
            </tr>

            <% for (int i = 1; i <= counter; i++) {%>
            <tr>
                <td class="td1"><%=i%></td>
                <% for (int j = 1; j <= counter; j++) {
                           if (i <= counter && j <= counter && i == j) {%>
                <td class="td0"><%=(i) * j%></td>
                <%} else {%>
                <td class="td2"><%=(i) * j%></td>
                <%}%>


                <%}
                        }%>



        </table>
        <br>   
        <button onclick="window.location.href = 'index.html';">
            Back
        </button>
    </body>
</html>
