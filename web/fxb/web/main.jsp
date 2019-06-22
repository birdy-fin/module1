<%--
  Created by IntelliJ IDEA.
  User: 冯雪冰
  Date: 6/10 0010
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script src="jquery-1.9.0.js"></script>
    <style>
        * {
            padding:0;
            margin:0;
        }
        html {
            height:100%;
        }
        body {
            height:100%;
        }
        .box {
            text-align:center;
            position:absolute;
            width:100px;
            height:100px;
        }
        </style>
</head>
<body>
<div id="bd">
    <div id="content" style="height: 50%;width: 100%;">
        <h3 style="text-align: center">|口红/唇膏|</h3>
        <div id="main" style="margin-left: 18%;margin-top: 1%">
            <div id="main1" style="float: left;text-align: center;margin-right: 1%">
               <a href="MAC.jsp"> <img src="images/MAC.jpg" width="250px" height="250px"><p>MAC魅可 子弹头口红<br>￥139 </p></a>
            </div>
            <div id="main2" style="float: left;text-align: center;margin-right: 1%">
                <a href="Dior.jsp"><img src="images/Dior.jpg" width="250px" height="250px"><p>Dior迪奥口红<br>￥269</p></a>
            </div>
            <div id="main3" style="float: left;text-align: center;margin-right: 1%">
                <a href="TF.jsp"><img src="images/TF.jpg" width="250px" height="250px"><p>汤姆福特新品细管口红润唇膏<br>¥329.00</p></a>
            </div>
            <div id="main4" style="float: left;text-align: center">
                <a href="tz.jsp"><img src="images/tz.jpg" width="250px" height="250px"><p>透真气色唇膏<br>¥49.90</p></a>
            </div>
        </div>
    </div>
    <br>
    <div id="content1" style="width: 100%;height: 50%;margin-top: 3%;">
    <h3 style="text-align: center">|护肤套装|</h3>
        <div id="main0" style="margin-left: 18%;margin-top: 1%">
            <div id="main01" style="float: left;text-align: center;margin-right: 1%">
                <a href="AHC.jsp"><img src="images/AHC.jpg" width="250px" height="250px"><p>A.H.C 玻尿酸神仙水水乳套盒<br>￥129</p></a>
            </div>
            <div id="main02" style="float: left;text-align: center;margin-right: 1%">
                <a href="PE.jsp"><img src="images/PE.jpg" width="250px" height="250px"><p>百雀羚(PECHOIN)水嫩倍现臻美套装 <br>￥249</p></a>
            </div>
            <div id="main03" style="float: left;text-align: center;margin-right: 1%">
               <a href="LO.jsp"><img src="images/LO.jpg" width="250px" height="250px"><p>欧莱雅复颜抗皱紧致护肤化妆品套装<br>￥349</p></a>
            </div>
            <div id="main04" style="float: left;text-align: center;margin-right: 1%">
                <a href="in.jsp"><img src="images/in.jpg" width="250px" height="250px"><p>悦诗风吟 绿茶精萃平衡保湿水乳两件套装 <br>￥128</p></a>
            </div>
        </div>
    </div>
</div>
<div class="box" id="box1" style="bottom:50%;left:0;">
    <img src="images/in1.jpg" width=100>
</div>
<div class="box" id="box2" style="bottom:50%;right:0;">
    <img src="images/in1.jpg" width=100>
</div><script>
    var id = function(o) {
        return document.getElementById(o)
    }
    var scroll = function(o) {
        var space = id(o).offsetTop;
        id(o).style.top = space + 'px';
        void
            function() {
                var goTo = 0;
                var roll = setInterval(function() {
                        var height = document.documentElement.scrollTop + document.body.scrollTop + space;
                        var top = parseInt(id(o).style.top);
                        if (height != top) {
                            goTo = height - parseInt((height - top) * 0.9);
                            id(o).style.top = goTo + 'px';
                        }
                    },
                    50);
            } ()
    }
    scroll('box1');
    scroll('box2');
    </script>
    </body>
</html>
