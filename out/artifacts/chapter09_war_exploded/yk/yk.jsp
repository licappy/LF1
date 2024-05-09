<%--
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
    <title>游客网站</title>
    <style>
        li{
            list-style: none;
        }
        .nav1 a:hover{/*定义鼠标停留在导航项时的样式*/
            color: #C43C88;
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
        .div2{
            position: absolute;
            top: 680px;
            left: 210px;
            border-radius: 10px;
        }
        #box {
            position: relative;/*相对定定位，原位置不会释放*/
            width: 760px;
            height: 520px;
            background: #fff;
            border-radius: 5px;
            border: #C43C88 inset 6px;
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
        .l{
            position: absolute;
            width:200px;
            top:125px;
            left: 160px;
        }
        .r{
            position: absolute;
            left:1020px;
            top:125px;
        }
        .xgrj{
            position: absolute;
            width:570px;
            height:400px;
            left:770px;
            top:680px;
            border: #C43C88 dashed;
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
            width:550px;
            height:450px;
            position: absolute;
            top:160px;
            left: 1060px;
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
            font-size: 16px;
        }
        .td1{
            width:260px;
        }
        .div3{
            margin-bottom: 10px;
        }
        .div4{
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div style="width:1338px;">
    <div class="div4">
        <div class="div1" style="float:left;">
            <img width="120" height="70" src="../pic/1.jpg">
        </div>
        <div>
            <ul class="nav1">
                <li>
                    <a href="yk.jsp" target="_self">首页</a>
                </li>
                <li>
                    <a href="class.jsp" target="_self">课程介绍</a>
                </li>
                <li>
                    <a href="book.jsp" target="_self">教材介绍</a>
                </li>
                <li>
                    <a href="learn.jsp" target="_self">学习网站</a>
                </li>
            </ul>
        </div>
        <div style="float:right;font-size: 20px">
            请先登录!&nbsp;&nbsp;&nbsp;&nbsp;<input style="font-size: 18px" type="submit" value="登录" onclick="check()">
        </div>
    </div>
    <div class="div3">
        <marquee >欢迎您访问Java网站！！</marquee>
    </div>
    <div>
        <div class=l id="prev">
            <a href="#"><img src="../img/left.png" ></a>
        </div>
        <div class=r id="next">
            <a href="#"><img src="../img/right.png" ></a>
        </div>
        <div id="box">
            <ul  id="imagesUI" class="list">
                <li class="current" style="opacity: 1;"><img src="../pic/6.webp"></li>
                <li style="opacity: 0;"><img src="../pic/2.jpg" ></li>
                <li style="opacity: 0;"><img src="../pic/3.jpg" ></li>
                <li style="opacity: 0;"><img src="../pic/4.jpg" ></li>
                <li style="opacity: 0;"><img src="../pic/5.webp" ></li>
            </ul>
        </div>
    </div>
    <div class="div2">
        <a href="book.jsp"><img width="380px" height="400px" src="../pic/7.jpg"></a>
    </div>
    <div class=xgrj>
        <table >
            <tr ><td><h1 style="color: #C43C88">Java相关软件和API</h1></td><td><a href="http://www.javathinker.net" >更多>></a> </td></tr>
            <tr><td>
                <a href='https://www.oracle.com/java/technologies/downloads/#java17' target='_blank' title='JDK17(Windows)'>JDK17(Windows)</a>
            </td>
            </tr>
            <tr><td>
                <a href='http://www.javathinker.net/software/httpd-2.4.4-win32.zip' target='_blank' title='Apache HTTP服务器2.4'>Apache HTTP服务器2.4</a>
            </tr>
            <tr><td>
                <a href='http://www.javathinker.net/software/eclipse-inst-win64.exe' target='_blank' title='Eclipse集成开发工具'>Eclipse集成开发工具</a>
            </tr>
            <tr><td>
                <a href='http://www.javathinker.net/software/ideaIC-2020.2.1.exe' target='_blank' title='Intellij IDEA开发工具'>Intellij IDEA开发工具</a>
            </tr>
            <tr><td>
                <a href='https://docs.oracle.com/javaee/7/api/' target='_blank' title='JavaEE 7 API文档'>JavaEE 7 API文档</a>
            </tr>
            <tr><td>
                <a href='https://tomcat.apache.org/tomcat-9.0-doc/servletapi/index.html' target='_blank' title='Servlet4 API文档'>Servlet4 API文档</a>
            </tr>
            <tr><td>
                <a href='http://www.javathinker.net/software/spring-framework-5.2.8.RELEASE.zip' target='_blank' title='Spring5.2.8'>Spring5.2.8</a>
            </tr>
            <tr><td>
                <a href='https://docs.oracle.com/en/java/javase/17/docs/api/index.html' target='_blank' title='Java17 API文档'>Java17 API文档</a>
            </tr>
            <tr><td>
                <a href='https://www.ruby-lang.org/zh_cn/downloads/' target='_blank' title='Ruby脚本开发工具'>Ruby脚本开发工具</a>
            </tr>
            <tr><td>
                <a href='http://www.javathinker.net/software/apache-cxf-3.3.4.zip' target='_blank' title='CXF3.3.4软件包'>CXF3.3.4软件包</a>
            </tr>
        </table>
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
    function check() {
        window.location.href = '../login.jsp'
    }
    var left = document.getElementById('prev');//获取前一个按钮
    var right = document.getElementById('next');//获取后一个按钮
    var imageUI=document.getElementById('imagesUI');//获取指定ul
    var lis = imageUI.getElementsByTagName('li');//获取ul中的所有li
    var index = 0;//下标
    var t = 0;
    left.onclick = function (){
        for(var i = 0;i <lis.length;i++){ //寻找当前正在显示图片的序号
            if(lis[i].style.opacity == 1){
                index = i;
                lis[i].style.opacity = 0;
                break;
            }
        }
        if(index == 0){
            index = 4;
        }
        else{
            index = index-1;
        }
        lis[index].style.opacity = 1;
    }
    right.onclick = function (){
        for(var i = 0;i <lis.length;i++){ //寻找当前正在显示图片的序号
            if(lis[i].style.opacity == 1){
                index = i;
                lis[i].style.opacity = 0;
                break;
            }
        }
        if(index == 4){
            index = 0;
        }
        else{
            index = index+1;
        }
        lis[index].style.opacity = 1;
    }
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
