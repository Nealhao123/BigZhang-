<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/6
  Time: 18:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>访问商家页面</title>
</head>
<body>
    <form id="bookcz" action="${pageContext.request.contextPath}/book/addBook">
        输入book_id:<input type="text" name="book_id" ><br>
        输入增加的数量:<input type="text" name="number" >
        <input type="button" onclick="submitInfo()" value="点击操作">
    </form>


<script type="text/javascript">
    function submitInfo() {
            var fromm = document.getElementById("bookcz");
            fromm.submit();
    }
</script>
</body>
</html>
