<%--
  Created by IntelliJ IDEA.
  User: 冯雪冰
  Date: 6/17 0017
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>我的收藏</title>
    <style>
        .top{
            padding: 0;
            margin: 0;
            background-color: black;
            color: white;
            text-align: left;
            padding: 5px;
        }
        .top h3{
            padding-left: 20px;
        }
        .top h3 img{
            border-radius: 20px;
            width: 55px;
            height: 55px;
        }
        .menu{
            background-color:lightgray;
            color: white;
            text-align: left;
            padding: 5px;
        }
        .menu h3{
            color: lightcoral;
        }
        .menu h2{
            color: black;
        }
    </style>
</head>
<body>
<div class="top">
    <h3><img src="images/7.jpg">我的收藏</h3>
    <h3 style="margin-left: 10%;margin-top: -2.8%"><a href="index.jsp">返回首页</a> </h3>
</div>

<div class="menu">
    <h3>亲爱的用户欢迎您</h3>
    <div class="top1">
            <a href="show.action" target="_blank"> 搜索已收藏的护肤套装</a>&nbsp;&nbsp;&nbsp;
            <a href="select.action" target="_blank"> 搜索已收藏的口红/唇膏</a>
    </div>
    <div class="topright">
        <h2>您的收藏信息如下</h2>
    </div>
</div>
<div id="main" style="margin-top: 5%">
    <c:choose>
        <c:when test="${!empty userlist}">
            <c:forEach items="${userlist}" var="listinfo" >
                <div class="mangas" style="float:left;margin-left:1%;">
                    <img src="/images/${listinfo.img}" style="width:180px;height:240px;"><br>
                    商品名称:${listinfo.name }<br>
                    价格:${listinfo.price}<br>
                    <a href="cancel.action?goods.id=${listinfo.id}"><input type="button" value="取消收藏"></a>
                </div>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <tr align="center"><td colspan="8"><span class="STYLE1">无信息!</span></td></tr>
        </c:otherwise>
    </c:choose>
</div>
</body>
</html>
