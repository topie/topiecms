<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="/WEB-INF/tlds/c.tld" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title>后台管理 | 登录</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link
            href="<%=basePath%>assets/global/plugins/font-awesome/css/font-awesome.min.css"
            rel="stylesheet" type="text/css"/>
    <link
            href="<%=basePath%>assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
            rel="stylesheet" type="text/css"/>
    <link
            href="<%=basePath%>assets/global/plugins/bootstrap/css/bootstrap.min.css"
            rel="stylesheet" type="text/css"/>
    <link
            href="<%=basePath%>assets/global/plugins/uniform/css/uniform.default.css"
            rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="<%=basePath%>assets/admin/pages/css/login2.css"
          rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL SCRIPTS -->
    <!-- BEGIN THEME STYLES -->
    <link href="<%=basePath%>assets/global/css/components-rounded.css"
          id="style_components" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>assets/global/css/plugins.css" rel="stylesheet"
          type="text/css"/>
    <link href="<%=basePath%>assets/admin/layout/css/layout.css"
          rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>assets/admin/layout/css/themes/default.css"
          rel="stylesheet" type="text/css" id="style_color"/>
    <link href="<%=basePath%>assets/admin/layout/css/custom.css"
          rel="stylesheet" type="text/css"/>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="<%=basePath%>favicon.ico" />
</head>
<style type="text/css">   
        #ie6-warning{background:#FF0; position:absolute;top:0; left:0;font-size:12px; line-height:24px; color:#F00; padding:0 10px; }  
        #ie6-warning img{float:right; cursor:pointer; margin-top:4px;} 
        #ie6-warning a{text-decoration:none;color:#2f0 !important}  
</style>
    
	<!--[if lte IE 7]>   
<div id="ie6-warning" style="z-index:100;">
<img src="../../../images/cha.png" width="14" height="14" onclick="closeme();" alt="关闭提示" />
您正在使用 Internet Explorer 7 低版本的IE浏览器。为更好的浏览本页，建议您将浏览器升级到 
<a href="http://www.microsoft.com/china/windows/internet-explorer/ie8howto.aspx" target="_blank">IE8</a>  
或以下浏览器：<a href="http://www.firefox.com.cn/download/">Firefox</a>/ <a href="http://www.google.cn/chrome"> Chrome</a>/ <a href="http://chrome.360.cn/index_main.html">360极速模式</a>
</div>
<script type="text/javascript">  
    togo = 0; 
    function closeme(){    
        var div = document.getElementById("ie6-warning");    
        div.style.display ="none";
    };
    function position_fixed(el, eltop, elleft){
        // check if this is IE6
        if(!window.XMLHttpRequest)
            window.onscroll = function(){
                el.style.top = (document.documentElement.scrollTop + eltop)+"px";
                el.style.left = (document.documentElement.scrollLeft + elleft)+"px";
            }
        else 
            el.style.position = "fixed";
    };
    position_fixed(document.getElementById("ie6-warning"),0, 0);
</script>   
<![endif]-->
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login">
<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
<div class="menu-toggler sidebar-toggler"></div>
<!-- END SIDEBAR TOGGLER BUTTON -->
<!-- BEGIN LOGO -->
<div class="logo">
    <a href="#"> <img
            src="<%=basePath%>assets/admin/layout3/img/logo-big-white.png"
            style="height: 19px;" alt="TOPIECMS"/> </a>
</div>
<!-- END LOGO -->
<!-- BEGIN LOGIN -->
<div class="content">
    <!-- BEGIN LOGIN FORM -->
    <form class="login-form" action="<%=basePath%>j_spring_security_check"
          method="post">
        <div class="form-title">
            <span class="form-title">欢迎.</span> <span class="form-subtitle">请登录.</span>
        </div>
        <div
                class="alert alert-danger
		<c:if test="${param.error!=true}">display-hide</c:if>
		<c:if test="${param.error==true}">display-show</c:if> ">
            <button class="close" data-close="alert"></button>
            <span>${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message}</span>
        </div>
        <div class="form-group">
            <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
            <label class="control-label visible-ie8 visible-ie9">用户名</label> <input
                class="form-control form-control-solid placeholder-no-fix"
                type="text" id="username"  autocomplete="off" placeholder="请输入用户名" 
                name="j_username"/>
        </div>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">密码</label> <input
                class="form-control form-control-solid placeholder-no-fix"
                type="password" autocomplete="off" placeholder="请输入密码"
                name="j_password"/>
        </div>
        <%-- <c:if test="${param.error==true}"> --%>
            <%-- <div class="form-group">
                <a id="flashImage" title="看不清,换一张" href="javascript:void(0)"> <img
                        id="imageF" src="<%=basePath%>randomImage"
                        style="width:100%;height:34px;border: 1px solid #e5e5e5;"
                        class="m-wrap form-control-solid placeholder-no-fix"/>
                </a>
            </div> --%>
            <div class="form-group" style="margin-bottom: 70px;">
                <label class="control-label visible-ie8 visible-ie9">验证码</label>
                <div class="col-dm-7 col-sm-7">
                <input
                        class="form-control form-control-solid placeholder-no-fix"
                        type="text" autocomplete="off" placeholder="请输入验证码"
                        name="j_captcha" style="margin-left: -15px;"/>
                 </div><div class="col-dm-5 col-sm-5"><a id="flashImage" title="看不清,换一张" href="javascript:void(0)"> <img
                        id="imageF" src="<%=basePath%>randomImage"
                        style="width:100%;height:34px;border: 1px solid #e5e5e5;margin-left: -15px;margin-top: 4px;"
                        class="m-wrap form-control-solid placeholder-no-fix"/>
                </a></div>
            </div>
        <%-- </c:if> --%>
        <div class="form-actions">
            <button type="submit" class="btn btn-primary btn-block uppercase">登录</button>
        </div>
        <div class="form-actions">
            <div class="pull-left">
                <label class="rememberme check"> <input type="checkbox"
                                                        name="_spring_security_remember_me" value="true"/>免登录</label>
            </div>
            <div class="pull-right forget-password-block">
                <a href="javascript:;" id="forget-password" class="forget-password">忘记密码?</a>
            </div>
        </div>
        <!-- <div class="login-options">
            <h4 class="pull-left">或者使用第三方授权登录</h4>
            <ul class="social-icons pull-right">
                <li><a class="social-icon-color sina"
                       data-original-title="sina" href="#"></a></li>
                <li><a class="social-icon-color wechat"
                       data-original-title="wechat" href="#"></a></li>
            </ul>
        </div> -->
        <!-- <div class="create-account">
            <p>
                <a href="javascript:;" id="register-btn">注册账号</a>
            </p>
        </div> -->
    </form>
    <!-- END LOGIN FORM -->
    <!-- BEGIN FORGOT PASSWORD FORM -->
    <form id="resetPassword" class="forget-form" action="<%=basePath%>/resetPassword" method="get">
        <div class="form-title">
            <span class="form-title">忘记密码 ?</span> <span
                class="form-subtitle">输入你的电子邮箱重置密码.</span>
        </div>
        <div class="form-group">
            <input class="form-control placeholder-no-fix" type="text"
                   autocomplete="off" placeholder="Email" name="email"/>
        </div>
        <div class="form-actions">
            <button type="button" id="back-btn" class="btn btn-default">返回</button>
            <button type="button" id="resetPasswordBtn" class="btn btn-primary uppercase pull-right">提交</button>
        </div>
    </form>
    <!-- END FORGOT PASSWORD FORM -->
</div>
<div class="copyright hide">2015 © 中国. 金湖.
</div>
<!-- END LOGIN -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="<%=basePath%>assets/global/plugins/respond.min.js"></script>
<script src="<%=basePath%>assets/global/plugins/excanvas.min.js"></script>
<![endif]-->
<script>
    var dm_root = "<%=basePath%>";
</script>
<script src="<%=basePath%>assets/global/plugins/jquery.min.js"
        type="text/javascript"></script>
<script src="<%=basePath%>assets/global/plugins/jquery-migrate.min.js"
        type="text/javascript"></script>
<script
        src="<%=basePath%>assets/global/plugins/bootstrap/js/bootstrap.min.js"
        type="text/javascript"></script>
<script src="<%=basePath%>assets/global/plugins/jquery.blockui.min.js"
        type="text/javascript"></script>
<script
        src="<%=basePath%>assets/global/plugins/uniform/jquery.uniform.min.js"
        type="text/javascript"></script>
<script src="<%=basePath%>assets/global/plugins/jquery.cokie.min.js"
        type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script
        src="<%=basePath%>assets/global/plugins/jquery-validation/js/jquery.validate.min.js"
        type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<%=basePath%>assets/global/scripts/metronic.js"
        type="text/javascript"></script>
<script src="<%=basePath%>assets/admin/pages/scripts/base64.js"
        type="text/javascript"></script>
<script src="<%=basePath%>assets/admin/pages/scripts/login.js"
        type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function () {
        Metronic.init(); // init metronic core components
        Login.init();
        document.getElementById("username").focus(); 
    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
