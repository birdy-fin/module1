<%--
  Created by IntelliJ IDEA.
  User: s5
  Date: 2019/6/7
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>删除成功页面</title>
<head>
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
            height:100px;
            line-height:100px;
            float: left;
            display: inline-block;
        }
        .top>.topright {
            width:50%;
            height:100px;
            float: right;
            display: inline-block;
            padding: 20px 100px;
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

        .content a{
            text-decoration: none;

        }
    </style>

    <script src="js/ajax.js"></script>

    <script>
        $(function() {
            $("li").click(function(){
                $(this).toggleClass("current")
            })
        });
    </script>

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
    <br/>
    <br/>
    <h2>删除成功</h2>
</div>

<div id="footer">
    aaa
</div>
