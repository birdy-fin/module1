<%@ page import="fin.Dao.StoreDao" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: s5
  Date: 2019/5/20
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<style>
    *{
        padding: 0;
        margin: 0;
    }
    #header {
        background-color: black;
        color: white;
        text-align: left;
        padding: 5px;
    }
    #header h3 {
        padding-left: 20px;
    }
    #header h3 img{
        border-radius: 20px;
        width: 55px;
        height: 55px;
    }
    #nav {
        line-height: 30px;
        background-color: #eeeeee;
        height: 600px;
        width: 200px;
        float: left;
        padding: 5px;
    }
    #nav h4 {
        font-size: 20px;
        padding-left:20px;
        color: gray;
        line-height: 30px;
        padding-top: 10px;
    }
    #nav ul {
        width: 120px;
        margin-left: 35px;
        margin-top: 20px;
    }
    #nav li {
        list-style-type: none;
        font-size: 20px;
        border-bottom: dashed gainsboro;
        margin-bottom: 15px;
        float: left;
        cursor: pointer;
    }
    #nav h4 img{
        border-radius: 300px;
        width: 50px;
        height: 50px;
    }
    .content {
        display: none;
    }
    .current .content {
        display: block;
        cursor: pointer;
    }
    .content>p {
        font-size: 17px;
        float: right;
    }
    #nav ul li span img {
        width: 18px;
        height: 18px;
        margin-right: 10px;
    }
    .top {
        width: 1000px;
        float: left;
        padding-left: 50px;
    }

    .top>.topleft {
        padding-top: 20px;
        float: left;
        display: inline-block;
    }

    .top>.topright {
        width:50%;
        float: right;
        display: inline-block;
        padding-top:40px;
        margin-right: 100px;
        color: gray;
    }

    .topright h2 {
        font-size: 20px ;
    }

    #footer {
        background-color: black;
        color: white;
        clear: both;
        text-align: center;
        padding: 5px;
    }


    #content {
        padding-left:250px;
        margin-right: 50px;
    }

    .table tr {
        border: 1px solid silver;
    }

    .table td {
        border: 1px solid silver;
        height: 5px;
    }

</style>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>

<script src="js/ajax.js"></script>

<script>
    $(function() {
        $("li").click(function(){
            $(this).toggleClass("current")
        })
    });
</script>

<title>商品信息列表页面</title>
</head>
<body>
<div id="header">
    <h3><img src="img/7.jpg">商城管理后台</h3>
</div>

<div id="nav">
    <h4><img src="img/1.jpg">后台管理</h4>
    <ul>
        <li><span><img src="img/5.jpg"></span>用户管理</li>
        <li >
            <span><img src="img/4.jpg"></span>商品管理
            <div class="content">
                <p><a href="readitem.action" style="color: lightslategray" style="font-weight:bold" >所有商品</a></p>
            </div>
        </li>
        <li><span><img src="img/4.jpg"></span>订单管理</li>
    </ul>
</div>

<div class="top">
    <div class="topleft">
        <form action="rereadItem.action">
            <input type="text" name="item.title">
            <button class="b1" >查询</button>&nbsp;&nbsp;
        </form>
        <a href="itemadd.jsp"> <button class="b2">添加</button></a>

    </div>
    <div class="topright">
        <h2>所有商品列表</h2>
    </div>
</div>

<div id="content">
    <table class="table">
        <thead>
        <tr>
            <th width="40px" height="10px">编号</th>
            <th width="70px" height="10px">标题</th>
            <th width="30px" height="10px">价格</th>
            <th width="30px" height="10px">数量</th>
            <th width="40px" height="10px">操作</th>
        </tr>
        </thead>
        <s:iterator value="#request.list" var="item">
            <tr>
                <td  ><s:property value="num"></s:property></td>
                <td ><s:property value="title"></s:property></td>
                <td  ><s:property value="price"></s:property></td>
                <td ><s:property value="amount"></s:property></td>
                <td>
                    <a href="itemcorr.jsp?num=${num}&&title=${title}&&price=${price}&&amount=${amount}" style="text-decoration: none; color: grey;">修改</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="itemdelete.action?item.num=${num}"  style="text-decoration: none; color: grey;" >删除</a>
                </td>
            </tr>
        </s:iterator>
    </table>


</div>

<div id="footer">
    <p>as</p>
</div>

</body>
</html>

