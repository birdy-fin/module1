<%--
  Created by IntelliJ IDEA.
  User: 冯雪冰
  Date: 6/21 0021
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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

    <img src="images/PE.jpg" style="width:400px;height:400px;">
    <div id="right" style="float:right; width:50%;margin-right:15%;">
        <div id="up">
            <h2 name="goods.name">百雀羚(PECHOIN)水嫩倍现臻美套装</h2>
            <p name="goods.price">价格：249.90</p>
            <p>
                百雀羚(PECHOIN)水嫩倍现臻美套装 (洁面95g+水100ml+乳100ml）通用 护肤套装 保湿补水 护肤控油
            </p>
        </div>
        <a href="addlike.action?goods.id=04" class="like" name="like">收藏</a>
        <a href="" class="car" name="car">加购物车</a>
        <a href="" class="buy" name="buy">购买</a>

    </div>
</div>
</body>
</html>
