<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: ANN
  Date: 2019/6/19
  Time: 22:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户订单</title>
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
            <h3><img src="../img/7.jpg">订单信息</h3>
    </div>

    <div class="menu">
        <h3>亲爱的用户欢迎您</h3>
            <div class="top1">
                <form action="selectLikeUser" method="post"><input type="text" name="name" placeholder="输入用户名进行查询">
                    <button type="submit" class="b1">查询</button>&nbsp;&nbsp;
                    <a href="#" ></a>
                </form>
            </div>
            <div class="topright">
                <h2>您的订单信息如下</h2>
            </div>
    </div>

    <div>
        <table class="table">
            <hr/>
            <thead>
            <tr>
                <th>序号</th>
                <th>编号</th>
                <th>价格</th>
                <th>标题</th>
                <th>地址</th>
                <th>数量</th>
            </tr>
            </thead>
            <s:iterator value="#request.list" var="od">
                <tr>
                    <td  width="150px" height="10px"><s:property value="id"></s:property></td>
                    <td  width="150px" height="10px"><s:property value="num"></s:property></td>
                    <td  width="150px" height="10px"><s:property value="price"></s:property></td>
                    <td  width="200px" height="10px"><s:property value="title"></s:property></td>
                    <td  width="200px" height="10px"><s:property value="address"></s:property></td>
                    <td  width="150px" height="10px"><s:property value="amount"></s:property></td>
                    <td  width="150px" height="10px"><s:property value="name"></s:property></td>
                   <%-- <td>
                            &lt;%&ndash; <a href="itemcorr.jsp?id=${id}&&num=${num}&&price=${price}&&title=${title}&&address=${address}&&amount=${amount}" style="text-decoration: none">修改</a>&ndash;%&gt;
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/deleteOrder.action?num=${num}"  style="text-decoration: none">删除</a>
                            &lt;%&ndash;<a href="/deleteOrder.action?num=${num}+1"  style="text-decoration: none">下一页</a>
                            <a href="/deleteOrder.action?num=${num}-1"  style="text-decoration: none">上一页</a>
                            <a href="/deleteOrder.action?num=0"  style="text-decoration: none">首页</a>&ndash;%&gt;
                    </td>--%>
                </tr>
            </s:iterator>
        </table>
    </div>
</body>
</html>
