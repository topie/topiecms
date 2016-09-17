<!DOCTYPE html>
        <html>
        <head lang="en">
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
            <meta http-equiv="X-UA-Compatible" content="IE=9" />
            <title>${site.displayName!}</title>
          	<meta name="keywords" content="" />
            <link href="/html/jinhu-static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
            <link href="/html/jinhu-static/css/style.ts.css" rel="stylesheet">
            <!--[if lt IE 9]>
            <script src="/html/jinhu-static/js/html5shiv.min.js"></script>
            <script src="/html/jinhu-static/js/respond.min.js"></script>
            <![endif]-->
        </head>
        <body>
        
        <#include "/template/jh-head.ftl"/>
        <#include "/template/jh-daohang.ftl"/>
        <div class="container bg-white">
            
                <div class="jh-main">
			<div class="fontSize18 new-list2-t">在线访谈</div>
			<div class="zmhd-zxft-article fontSize18">
			    <div class="jh-article-title fontSize22 text-center color-green pdt10 mgb30"><span>${cmsInterview.title!}</span></div>
			    <p>访谈时间：${cmsInterview.startTime!}</p>
					 <p>访谈嘉宾：${cmsInterview.guests!}</p>
					 
			    <p>访谈摘要： ${cmsInterview.desc!}</p>
			    <div class="border-green"></div>
			    <div><span class="zmhd-zxft-bg mgb30">访谈图片</span></div>
			    <div class="row">
				<#list cmsInterview.info.images as image>
				<div class="col-xs-6">
				    <div class="thumbnail thumbnails">
					<img src="${image.imgUrl!}" class="thumbnail-border-gray">
				    </div>
				</div>
				</#list>
				
			    </div>
			    <div class="border-dotted-gray"></div>
			    <div><span class="zmhd-zxft-bg mgb30">文字直播</span></div>
			    <#list cmsInterview.info.records as record>
				<p><span class="color-green">${record.roleName!}：</span>${record.content!}</p>				
			    </#list>
			   
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
            });
        </script>
        </body>
        </html>
        
       
      
     
    
   
  
 