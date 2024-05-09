<%@ page import="Bean.Student" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: 86133
  Date: 2023/5/27
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>学生网站</title>
    <style>
        li{
            list-style: none;
        }
        .nav1 a:hover{/*定义鼠标停留在导航项时的样式*/
            color: #75d74b;
        }
        .div1{
            position: relative;
            top:-23px;
            left: 180px;
        }
        .nav1{
            padding-left: 280px;
        }
        .nav1 li{
            margin-left: 30px;
            text-align: center;
            list-style: none;
            float: left;
        }
        .nav1 a{
            text-decoration: none;
            color: black;
            font-size: 20px;
        }
        #box {
            position: relative;/*相对定定位，原位置不会释放*/
            width: 760px;
            height: 520px;
            background: #fff;
            border-radius: 5px;
            border: #75d74b inset 6px;
            left:230px;
        }
        #box .list {
            position: relative;
            width:540px;
            height:450px;
            left:10px;
            top: 20px;
            background:#000;
        }
        #box .list li img{
            width: 740px;
            height:450px;
            left:0px;
            position:absolute;/*绝对定位，原位置会释放出来*/
        }
        .xgrj div{
            position: relative;
        }
        .xgrj table{
            margin-left:80px;
            margin-top: 40px;
            width:500px;
        }
        .xgrj a{
            text-decoration: none;
            color: black;
        }
        .zxdt{/*定义最新动态模块样式*/
            position: absolute;
            width:550px;
            height:450px;
            left:1060px;
            top:160px;
        }
        .zxdt div{
            position: relative;
        }
        .zxdt table{
            margin-left:50px;
            width:400px;
        }
        .zxdt a{
            text-decoration: none;
            color: black;
            font-size: 20px;
        }
        .td1{
            width:320px;
        }
        .div2{
            margin-bottom: 10px;
        }
        .div3{
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div style="width:1338px;">
    <div class="div3">
        <div class="div1" style="float:left;">
            <img width="120" height="70" src="../pic/1.jpg">
        </div>
        <div>
            <ul class="nav1">
                <li>
                    <a href="stu.jsp" target="_self">首页</a>
                </li>
                <li>
                    <a href="class.jsp" target="_self">课程资源</a>
                </li>
                <li>
                    <a href="uploadzy.jsp" target="_self">作业</a>
                </li>
                <li>
                    <a href="../lybsubmit.jsp" target="_self">留言板</a>
                </li>
                <li>
                    <a href="../yk/yk.jsp" target="_self">退出登录</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="div2">
        <marquee>
            <%
                String sname = String.valueOf(session.getAttribute("name"));
                out.write("欢迎你"+sname +"同学，访问Java网站！！");
            %>
        </marquee>
    </div>
    <div>
        <div id="box">
            <ul id="imagesUI" class="list">
                <li class="current" style="opacity: 1;"><img src="../img/OIP-C4.jpg"></li>
                <li style="opacity: 0;"><img src="../img/6.jpg" ></li>
                <li style="opacity: 0;"><img src="../img/3.jpg" ></li>
                <li style="opacity: 0;"><img src="../img/OIP-C6.jpg" ></li>
                <li style="opacity: 0;"><img src="../img/OIP-C5.jpg" ></li>
            </ul>
        </div>
    </div>
    <div class=zxdt>
        <table >
            <tr ><td class=td1><h2 >最新动态</h2></td>
                <td><a href="https://www.gwng.edu.cn/xkxy/1093/list.htm" >更多>></a> </td></tr>
            <tr><td>
                <a href='https://www.gwng.edu.cn/2023/0523/c24a83736/page.htm' target='_blank' title='党委书记许志超组织座谈会调研基层党建及学生工作'>党委书记许志超组织座谈会调研...</a>
            </td>
            </tr>
            <tr><td>
                <a href='https://mp.weixin.qq.com/s/lXvHR35blJJCSedFztXQdg' target='_blank' title='华为云网络实验室揭牌仪式'>华为云网络实验室揭牌仪式</a>
            </td>
            </tr>
            <tr><td>
                <a href='https://www.gwng.edu.cn/2023/0523/c24a83776/page.htm' target='_blank' title='副校长赵福春调研数字化转型建设'>副校长赵福春调研数字化转型建设</a>
            </td>
            </tr>
            <tr><td>
                <a href='https://www.gwng.edu.cn/2023/0526/c24a83858/page.htm' target='_blank' title='专家“把脉会诊”精准指导我校学科建设'>专家“把脉会诊”精准指导...</a>
                <td>
            </tr>
            <tr><td>
                <a href='https://www.gwng.edu.cn/xkxy/2020/1124/c1094a55030/page.htm' target='_blank' title='计算机与软件工程系开展实践教学周活动'>计算机与软件工程系开展实践...</a>
            </td>
            </tr>
            <tr><td>
                <a href='https://mp.weixin.qq.com/s/X9D-nDtYGrWZn_alhpD5Mg' target='_blank' title='计算机学院考研访谈第三期'>计算机学院考研访谈第三期</a>
            </td>
            </tr>
            <tr><td>
                <a href='https://mp.weixin.qq.com/s/c0JPhe83jslcLcmpNnA2TQ' target='_blank' title='计算机学院三下乡 | 暑假将至，我们又来啦！'>计算机学院三下乡 | 暑假将至...</a>
            </td>
            </tr>
            <tr><td>
                <a href='https://mp.weixin.qq.com/s/uqd6lIRMqjR7JzuehFKD5g' target='_blank' title='联合杯|篮球比赛再创佳绩！'>联合杯|篮球比赛再创佳绩！</a>
            </td>
            </tr>
            <tr><td>
                <a href='https://mp.weixin.qq.com/s/gjr_FP7PbecNL_A4SeZOUA' target='_blank' title='“书香满溢，照暖童心”活动回顾'>"书香满溢，照暖童心"活动回顾</a>
            </td>
            </tr>
            <tr><td>
                <a href='https://mp.weixin.qq.com/s/izP1At_RlywROUBP7GN3ag' target='_blank' title='凝心“剧”力，悦动青春 | 5.25心理剧宣传活动顺利进行'>凝心“剧”力，悦动青春 | 5.25...</a>
            </td>
            </tr>
        </table>
    </div>
</div>
<script>
    var imageUI=document.getElementById('imagesUI');//获取指定ul
    var lis = imageUI.getElementsByTagName('li');//获取ul中的所有li
    var index = 0;//下标
    var t = 0;
    /*自动播放*/
    function autoPlay()
    {
        lis[t].style.opacity = 0;
        if(t>=4) t = 0;
        else t = t+1;
        lis[t].style.opacity = 1;
    }
    var box = document.getElementById('box');
    var play1 = setInterval(autoPlay,1000);
    box.onload = play1;
    box.onmouseover = function () {/*鼠标移动到之后停止跳转*/
        clearInterval(play1);
    }
    box.onmouseout = function() {
        play1 = setInterval(autoPlay, 1000);
    }
</script>
</body>
</html>
