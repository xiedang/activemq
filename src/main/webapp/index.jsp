<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: qa
  Date: 2018/11/5
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="cp" value="${pageContext.request.contextPath}"></c:set>
<html>
<body>
<h2>Hello World!</h2>
<table border="1px" width="100%" bgcolor="aqua" id="table">
    <thead>
    <tr>
        <td>用户Id</td>
        <td>用户名</td>
        <td>密码</td>
        <td>姓名</td>
        <td>电话</td>
        <td>住址</td>
        <td>出生日期</td>
        <td>籍贯</td>
        <td>性别</td>
    </tr>
    </thead>
    <tbody>
    </tbody>
</table>
</body>
</html>
<script type="text/javascript" src="${cp}/js/jquery-3.3.1.min.js"></script>
<script charset="utf-8">
    $(function () {
        $.get('http://localhost:8080/logistics-front/user/selectAll',{},function (data) {
            $.each(data,function (i,v) {
                var html="<tr><td>"+v.id+"</td><td>"+v.username+"</td><td>"+v.password+"</td><td>"+v.username+"</td><td>"+v.userInfo.name+"</td>"
                    +v.userInfo.phone+"</td><td>"+v.userInfo.address+"</td><td>"+v.userInfo.birthDate+"</td><td>"+v.userInfo.nativePlace+
                    "</td><td>"+v.userInfo.sex+"</td></tr>";
                $("#table").append(html);
            })
        },"jsonp")
    })
</script>