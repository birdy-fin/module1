<%--
  Created by IntelliJ IDEA.
  User: 冯雪冰
  Date: 6/1 0001
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="css/style.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/slide.js"></script>
</head>
<body>
<div id="body" style="width: 80%;margin-left: 14%">
    <div id="menu">
        <div id = "bt" style="position:absolute;margin-left: 58%;height: 32px ">
            <table width = "200"   >
                <tr>
                    <td><input type = "button" value = "登      录" onclick = "window.open('login.jsp')"></td>
                    <td><input type = "button" value = "注      册" onclick = "window.open('register.jsp')"></td>
                </tr>
            </table>
        </div>
        <ul id="nav">
            <li class="mainlevel" id="mainlevel_01"><a href="#" target="_blank">热门活动</a>
                <ul id="sub_01">
                    <li><a href="" target="_blank">欧莱雅</a></li>
                    <li><a href="" target="_blank">美肤宝</a></li>
                    <li><a href="" target="_blank">法兰琳卡</a></li>
                    <li><a href="" target="_blank">百雀羚</a></li>
                    <li><a href="" target="_blank">护舒宝</a></li>
                </ul>
            </li>

            <li class="mainlevel" id="mainlevel_02"><a href="#" target="_blank">爆款推荐</a>
                <ul id="sub_02">
                    <li><a href="#" target="_blank">姬芮</a></li>
                    <li><a href="#" target="_blank">雪花秀</a></li>
                    <li><a href="#" target="_blank">御泥坊</a></li>
                    <li><a href="#" target="_blank">相宜本草</a></li>
                    <li><a href="#" target="_blank">韩束</a></li>
                </ul>
            </li>
            <li class="mainlevel" id="mainlevel_03"><a href="showlike.action" target="_blank">我的收藏</a>
            </li>

            <li class="mainlevel" id="mainlevel_04"><a href="" target="_blank">购物车</a>
            </li>

            <li class="mainlevel" id="mainlevel_05"><a href="#" target="_blank">订单</a>
            </li>

            <li class="mainlevel" id="mainlevel_06"><a href="#" target="_blank">后台管理</a>
            </li>
                <div class="clear"></div>

        </ul>
    </div>
</div>
</body>
</html>
