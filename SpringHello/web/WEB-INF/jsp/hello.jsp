<%--
  Created by IntelliJ IDEA.
  User: Micle
  Date: 2018/6/22
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>结果页面</title>
    <script type="text/javascript" src="../../script/hello.js"></script>
    <script language="JavaScript">
        function showHelloWorld() {
            alert("HelloWorld from JSP.JS");
            try{
                func1();
            }
            catch (e) {
                alert(e.toString());
            }
        }
    </script>
</head>
<body>
    <input type="text" id="tb1" value="Neal," >
    <button id="btn1" onclick="showHelloWorld();">点击</button>
</body>
</html>
