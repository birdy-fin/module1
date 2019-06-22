<%--
  Created by IntelliJ IDEA.
  User: 冯雪冰
  Date: 6/19 0019
  Time: 1:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欧莱雅</title>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <link rel="stylesheet" type="text/css" href="css/normalize.css">
    <script src="/js/jquery.js"> </script>
    <script src="/js/index.js"></script>
    <script type="text/javascript" src="/js/jquery-1.11.0.min.js"></script>
    <script src="js/jquery.emojiRatings.js"></script>
    <script>
        $(document).ready(function(){
            $(".like").click(function(){
                alert("收藏成功！");
                $(this).text("取消收藏");
            })

            $(".car").click(function(){
                alert("添加成功！");
                $(this).text("取消添加");
            })

            $(".buy").click(function(){
                alert("购买成功！");
                $(this).text("取消购买");
            })

            $("#element2").emojiRating({
                emoji: 'U+2764',
                fontSize: 80,
                count: 5
            });
        })
    </script>
    <style type="text/css" rel="stylesheet">
        .like{
            padding: 2% 5% 2%;
            background-color: #fff2ea;
            text-decoration: none;
            font-weight: 500;
            color: #7d360f;
            font-size: 25px;
            border: 1px solid #fac2a0;
            border-radius: 6%;
        }
        .buy{
            padding: 2% 5% 2%;
            background-color: #fff2ea;
            text-decoration: none;
            font-weight: 500;
            color: #7d360f;
            font-size: 25px;
            border: 1px solid #fac2a0;
            border-radius: 6%;
        }
        .car{
            padding: 2% 5% 2%;
            background-color: #fff2ea;
            text-decoration: none;
            font-weight: 500;
            color: #7d360f;
            font-size: 25px;
            border: 1px solid #fac2a0;
            border-radius: 6%;
        }
        #up{
            width:80%;
            height:330px;

        }
    </style>
</head>
<body>
<div id="header">
    <div id="left-menu">
        <a class="loginbutton" href="collect.jsp">我的收藏</a>
    </div>
</div>
<div id="mainmenu">
    <div id="container">
        <a href="index.jsp"><span>首页</span>/</a>
        <a href="#"><span>购物车</span>/</a>
        <a href="#"><span>订单</span>/</a>
        <a href="#"><span>登录</span>/</a>
        <a href="#"><span>注册</span>/</a>

    </div>
</div>
</div>
<div id="center" style="float:right;width:80%;height:80%;margin-top: 5%">

    <img src="images/LO.jpg" style="width:400px;height:400px;">
    <div id="right" style="float:right; width:50%;margin-right:15%;">
        <div id="up">
            <h2 name="goods.name">欧莱雅复颜抗皱紧致护肤化妆品套装1</h2>
            <p name="goods.price">价格：349</p>
            <p>欧莱雅复颜抗皱紧致护肤化妆品套装1（水130ml+乳110ml+赠品：水65ml赠品*2或水65ml+乳50ml）
                复颜套装，增强皮肤表层弹性，帮助肌肤更赋弹性，重拾紧致，水润紧致。
                赠品随机发货 介意慎拍  改善痘痘，焕肤去角质，618最高买199赠199~</p>
        </div>
        <a href="addlike.action?goods.id=01" class="like" name="like">收藏</a>
        <a href="" class="car" name="car">加购物车</a>
        <a href="" class="buy" name="buy">购买</a>

    </div>
</div>
</body>
</html>
