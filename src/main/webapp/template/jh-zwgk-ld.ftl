<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=9" />
    <title></title>
    <link href="/html/jinhu-static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/html/jinhu-static/css/style.ts.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="/html/jinhu-static/js/html5shiv.min.js"></script>
    <script src="/html/jinhu-static/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<#include "/template/jh-head.ftl">
<#include "/template/jh-daohang.ftl">
<div class="container bg-white">
<#include "/template/jh-current.ftl">
    <div class="jh-main">
        <div class="row">
            <div class="col-md-4">
                <div class="fontSize18 pd3 color-green">新闻中心</div>
                <div class="panel panel-default panel1">
                    <div class="panel-heading panel1-t"><a href="csgk.html" class="panel1-ton fontSize18">县政府</a></div>
                    <ul class="fontSize12 zwgk-ld-list">
                        <li class="active"><a href="#"><span class="fontSize14 zwgk-ld-span">徐亚平</span>县委副书记，县政府代县长、党组书记</a></li>
                        <li><a href="#"><span class="fontSize14 zwgk-ld-span">王建军</span>县委常委，县政府常务副县长、党组副书记</a></li>
                        <li><a href="#"><span class="fontSize14 zwgk-ld-span">王清国</span>县委常委，县政府副县长（挂职）</a></li>
                        <li><a href="#"><span class="fontSize14 zwgk-ld-span">沈启涛</span>县政府副县长、党组成员</a></li>
                        <li><a href="#"><span class="fontSize14 zwgk-ld-span">徐红兵</span>县政府副县长、党组成员</a></li>
                        <li><a href="#"><span class="fontSize14 zwgk-ld-span">丁成龙</span>县政府副县长（挂职）</a></li>
                        <li><a href="#"><span class="fontSize14 zwgk-ld-span">黄永清</span>县政府副县长（挂职）</a></li>
                        <li><a href="#"><span class="fontSize14 zwgk-ld-span">邵&nbsp;&nbsp;&nbsp;钧</span>县政府副县长、党组成员，县公安局局长</a></li>
                        <li><a href="#"><span class="fontSize14 zwgk-ld-span">高昌萍</span>县政府副县长</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-8">
                <div class="fontSize18 zwgk-ld-t">县政府</div>
                <div class="zwgk-ld-list1">
                    <div class="zwgk-ld-name clearfix"><span class="fontSize22">姓名：徐亚平</span><button class="btn btn-default btn-download"><span class="glyphicon glyphicon-envelope"></span><span>&nbsp; 给我写信 &nbsp;</span></button></div>
                    <p class="fontSize16">职务：县委副书记，县政府代县长、党组书记</p>
                    <p>分工：</p>
                </div>
                <div class="fontSize16 pd4 color-green">相关新闻</div>
                <ul class="panel2-list panel2-list-pd news-list2">
                    <li><a href="#"><span class="panel2-list-content">春到三河滩</span><span class="panel2-list-time">2016-08-08</span></a></li>
                    <li><a href="#"><span class="panel2-list-content">金湖县大佛寺首场大型佛七法会圆满结束</span><span class="panel2-list-time">2016-08-06</span></a></li>
                    <li><a href="#"><span class="panel2-list-content">醉美的金湖 最美的马拉松</span><span class="panel2-list-time">2016-08-05</span></a></li>
                </ul>
            </div>
        </div>
    </div>
       
   <#include "/template/jh-links.ftl">
</div>
 <#include "/template/jh-footer.ftl">
<script type="text/javascript" src="/html/jinhu-static/js/jquery-1.12.1.min.js"></script>
<script type="text/javascript" src="/html/jinhu-static/js/jquery.placeholder.min.js"></script>
<script type="text/javascript" src="/html/jinhu-static/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/html/jinhu-static/js/js.js"></script>
<script type="text/javascript">
    $(function () {
        $('input, textarea').placeholder();
        $('#navTab1 a').click(function (e) {
            e.preventDefault();
            $(this).tab('show');
        });
        $('#navTab2 a').click(function (e) {
            e.preventDefault();
            $(this).tab('show');
        });
        $('#navTab3 a').click(function (e) {
            e.preventDefault();
            $(this).tab('show');
        });
    });
</script>
</body>
</html>