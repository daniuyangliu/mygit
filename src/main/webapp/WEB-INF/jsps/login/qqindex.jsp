<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <script type="text/javascript" src="http://statics.2cto.com/js/jquery.min.js"></script>
</head>
<script type="text/javascript">

    var qqAuthWin,weiboAuthWin;

    /**
     * 关闭QQ子窗口
     */
    function closeQQWin(){
        var result = $("#qq").val();
        if(result != ""){
            console.log(result);
            qqAuthWin.close();
        }else{
            console.log("值为空");
        }
    }

    /**
     * QQ登录
     * http://localhost:9090/logback/qq.jsp  QQ互联上设置的回调地址
     */
    function loginQQ(){
        qqAuthWin = window.open("https://graph.qq.com/oauth2.0/authorize?response_type=code&client_id=CLIENT_ID&state=register&redirect_uri=http://localhost:80/qqlogin",
            'QQ授权登录','width=770,height=600,menubar=0,scrollbars=1,'+
            'resizable=1,status=1,titlebar=0,toolbar=0,location=1');
    }

    /**
     * 关闭微博子窗口
     */
    function closeWeiboWin(){
        var result = $("#weibo").val();
        if(result != ""){
            console.log(result);
            weiboAuthWin.close();
        }else{
            console.log("值为空");
        }
    }

    /**
     * 微博登录
     * http://localhost:9090/logback/weibo.jsp这个就是在微博上设置的回调地址
     */
    function loginWeibo(){
        weiboAuthWin = window.open("https://api.weibo.com/oauth2/authorize?client_id=CLIENT_ID&response_type=code&state=register&redirect_uri=http://localhost:9090/logback/weibo.jsp",
            '微博授权登录','width=770,height=600,menubar=0,scrollbars=1,'+
            'resizable=1,status=1,titlebar=0,toolbar=0,location=1');
    }
</script>
<body>
<input type="hidden" id="qq" value="">
<a  href="#" onClick="loginQQ()">QQ登录</a>

<br><br>
<hr>
<br>

<input type="hidden" id="weibo" value="">
<a href="#" onClick="loginWeibo()">微博登录</a>
</body>
</html>