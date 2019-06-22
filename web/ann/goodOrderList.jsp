<%--
  Created by IntelliJ IDEA.
  User: ANN
  Date: 2019/6/18
  Time: 19:31
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="S" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,ly.action.*" %>
<html>
<head>
    <title>所有订单</title>
    <style>
        .all{
            padding: 0;
            margin: 0;
        }
       .top{
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
        .menu h2{
            color: black;
        }
        .content{
            background-color:honeydew;
            color: white;
            text-align: left;
            padding: 5px;
        }
        .footer{
            background-color: black;
            color: white;
            text-align: left;
            padding: 5px;
            text-align: center;
            margin-bottom: 0;
        }

    </style>
</head>
<body>
    <div class="all">
        <div class="top">
          <h3><img src="../img/7.jpg">订单管理系统</h3>
        </div>

        <div class="menu">
        <div class="top_1">
            <div class="topleft">
                <form action="selectLikeOrder" method="post"><input type="text" name="title" placeholder="输入商品名字进行查询">
                    <button type="submit" class="b1">查询</button>&nbsp;&nbsp;
                    <a href="#" ></a>
                </form>
            </div>
            <div class="topright">
                <h2>所有订单列表</h2>
            </div>
        </div>
    </div>

        <div class="content">
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
                    <td>
                       <%-- <a href="itemcorr.jsp?id=${id}&&num=${num}&&price=${price}&&title=${title}&&address=${address}&&amount=${amount}" style="text-decoration: none">修改</a>--%>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/deleteOrder.action?num=${num}"  style="text-decoration: none">删除</a>
                        <%--<a href="/deleteOrder.action?num=${num}+1"  style="text-decoration: none">下一页</a>
                        <a href="/deleteOrder.action?num=${num}-1"  style="text-decoration: none">上一页</a>
                        <a href="/deleteOrder.action?num=0"  style="text-decoration: none">首页</a>--%>
                    </td>
                </tr>
            </s:iterator>


        </table>

        </div>
        <%--<s:debug/>--%>
        <p><s:if test="#s!=null">
           <%-- <s:property value="s"/>--%>
            <%=request.getAttribute("s") %>
        </s:if> </p>

        <div class="footer">
        <p>design by:fairy group</p>
    </div>
    </div>

</body>
</html>
