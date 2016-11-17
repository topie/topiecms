<!DOCTYPE html>
    <html>
    <head lang="en">
        <#include "/template/jh-meta.ftl">
        <title>金湖政府网</title>
        <link href="/html/jinhu-static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="/html/jinhu-static/css/style.ts.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="/html/jinhu-static/js/html5shiv.min.js"></script>
        <script src="/html/jinhu-static/js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
    <#include "/template/jh-head.ftl">
        <#include "/template/jh-index-daohang.ftl">
        <div class="container bg-white">
        <div class="jh-main">
            <div class="clearfix weibo-square">
		<div class="fontSize22 text-center color-green pdt10 mgb30"><span>微博广场</span></div>
		    <div class="border-green" ></div>
		    <!--<div class="color-green mgb20"><img src="/html/jinhu-static/img/green1.png" style="margin-right:10px;">书记信箱</div>-->
		    <div class="row pdt10">
		    <@microcobolListDirective siteId=6>
			<#list microcobols as micr>
			<div class="col-md-1 col-sm-1 col-xs-2 add-edage">
			    <div class="thumbnail thumbnails">
				<a href="${micr.link!}" target="_blank"><img title="${micr.name!}" alt="${micr.name!}" src="${micr.logo!}" class="thumbnail-border-gray" style="width:100%;"></a>
				<p style="white-space: nowrap;overflow: hidden;text-align: center;" title="${micr.name!}">${micr.name!}</p>
			    </div>
			</div> 
			</#list>
                 </@microcobolListDirective>
		</div>
            <div class="boder-gray-d"></div>
        </div>
    </div>
    <#--<#include "/template/jh-links.ftl">-->
        </div>
        <#include "/template/jh-footer.ftl">
    <script type="text/javascript" src="/html/jinhu-static/js/jquery-1.12.1.min.js"></script>
    <script type="text/javascript" src="/html/jinhu-static/js/jquery.placeholder.min.js"></script>
    <script type="text/javascript" src="/html/jinhu-static/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/html/jinhu-static/js/js.js"></script>
    <script type="text/javascript">
        $(function () {
            $('input, textarea').placeholder();
        });
    </script>
    </body>
    </html>
    
   
  
 