<%--
  Created by IntelliJ IDEA.
  User: Micle
  Date: 2018/6/22
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<p class="clear box layui-main login">

    <form class="layui-form layui-form-pane1" action="ulogin" method="post">
<p class="layui-form-item">
    <label class="layui-form-label">用户名：</label>
<p class="layui-input-block">
    <input type="text" name="user.name" lay-verify="uname" required
           placeholder="请输入用户名" autocomplete="off" class="layui-input">
</p>
</p>
<p class="layui-form-item">
    <label class="layui-form-label">密码：</label>
<p class="layui-input-block">
    <input type="password" name="user.pwd" lay-verify="" required
           placeholder="请输入密码" autocomplete="off" class="layui-input">
</p>
</p>
<p class="layui-form-item">
    <label class="layui-form-label">验证码：</label>
<p class="layui-input-block">
    <input type="text" name="yzm" lay-verify="" required
           placeholder="请输入验证码" autocomplete="off" class="layui-input"><br>
    <a href="/login.html"><img alt="验证码" src="/yzm"></a>
</p>
</p>
<p class="layui-form-item">
    <label class="layui-form-label"></label>
    <button class="layui-btn layui-btn-normal btn-center" type="submit">登录</button>
</p>
</form>
</p>

<script src="../../layui/layui.js"></script>
</body>
</html>
