<%-- 
    Document   : Login
    Created on : Apr 17, 2018, 7:33:02 PM
    Author     : TAMU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="login.jsp"> 
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Masuk</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>ID Customer</td>
                        <td><input type="text" name="idCustomer" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Belum Terdaftar?? <a href="registrasi.jsp">Daftar Disini</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
