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
        <div class="panel panel-default panel2">
            <div class="panel-heading panel2-t panel2-t1 fontSize18">政府信息公开专栏</div>
            <div class="panel-body">
                <div class="jh-article-title fontSize22 text-center color-green pdTop1em2"><span>您认为用何种方式宣传防灾减灾能起到良好的效果？</span></div>
                <div class="jh-article-info text-center">
                    <span>共有&nbsp;&nbsp;&nbsp;&nbsp;6&nbsp;&nbsp;&nbsp;&nbsp;人投票</span>
                </div>
                <div class="pd6 row">
                    <div class="col-lg-offset-2 col-lg-8 col-md-offset-1 col-md-10">
                        <table class="table table-bordered table-hover table1">
                            <thead>
                            <tr>
                                <th class="color-green">选项</th>
                                <th class="text-center color-green">百分百</th>
                                <th class="text-center color-green">投票人数</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>开展防灾减灾演习</td>
                                <td class="text-center">28.57%</td>
                                <td class="text-center">2</td>
                            </tr>
                            <tr>
                                <td>制作防灾减灾宣传视频、动画等</td>
                                <td class="text-center">28.57%</td>
                                <td class="text-center">2</td>
                            </tr>
                            <tr>
                                <td>在街头组织宣传活动发放宣传手册</td>
                                <td class="text-center">14.29%</td>
                                <td class="text-center">1</td>
                            </tr>
                            <tr>
                                <td>通过媒体进行专题宣传报道</td>
                                <td class="text-center">4.29%</td>
                                <td class="text-center">1</td>
                            </tr>
                            <tr>
                                <td>利用官方应急网站发布权威信息</td>
                                <td class="text-center">14.29%</td>
                                <td class="text-center">1</td>
                            </tr>
                            <tr>
                                <td>将防灾小知识直接推送到手机</td>
                                <td class="text-center">28.57%</td>
                                <td class="text-center">2</td>
                            </tr>
                            <tr>
                                <td>进行防灾减灾教育培训</td>
                                <td class="text-center">28.57%</td>
                                <td class="text-center">2</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="pdTop1em2 text-center">
                            <button class="btn btn-default btn-download">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;关&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;闭&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
                        </div>
                    </div>
                </div>
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