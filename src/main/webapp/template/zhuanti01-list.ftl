<!DOCTYPE html>
   <html>
   <head lang="en">
       <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
       <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
       <meta http-equiv="X-UA-Compatible" content="IE=9" />
       <title>金湖政府网</title>
       <link href="/html/jinhu-static-z01/bootstrap/css/bootstrap.min.css" rel="stylesheet">
       <link href="/html/jinhu-static-z01/css/style.ts.css" rel="stylesheet">
       <!--[if lt IE 9]>
       <script src="/html/jinhu-static-z01/js/html5shiv.min.js"></script>
       <script src="/html/jinhu-static-z01/js/respond.min.js"></script>
       <![endif]-->
   </head>
   <body class="ztrd3-bg">
   <div class="container">
       <div class="ztrd3-logo"><!--
           <img src="/html/jinhu-static-z01/img/zt3_logo.png">-->
       </div>
   </div>
   <div class="container">
       <div class="jh-main">
           <div class="row">
               <div class="col-md-7">
                   <a href="#" class="thumbnail thumbnails thumbnails2 text-right">
                       <img src="/html/jinhu-static-z01/img/zt3_pic.png" class="thumbnail-border-green">
                   </a>
               </div>
               <div class="col-md-5">
   				<@contentListDirective channelId=own pageSize=1 pageNum=1 titleLeft=12 order=1>  
   				<#list contents as cmsContent>
                   <a href="${cmsContent.url}" class="fontSize16">
                       <h3 class="color-green text-center mgb30">${channel.displayName}</h3>
                       <p class="color-green mgb10">${cmsContent.title!}</p>
                       <p class="ztrd4-line-height">${cmsContent.brief!}
   					<span>【 详细 】</span></p>
                   </a>
   				</#list> 
   	
   				</@contentListDirective>
               </div>
           </div>
           <div class="ztrd3-pd border-top-green fontSize16">
   		<@contentListDirective channelId=own pageSize=channel.pageSize pageNum=pageNum titleLeft=32 order=10>  	
   		<ul class="panel2-list panel2-list-pd ztrd3-panel">
   		<#list contents as cmsContent>
   			 <li><a href="${cmsContent.url} "><span class="panel2-list-content">${cmsContent.title}</span><span class="panel2-list-time">${cmsContent.publishDate?string("yyyy-MM-dd")}</span></a></li>
   		</#list>	
               </ul>
               ${pagination}
           </@contentListDirective>
           </div>
       </div>
   </div>
   <#include "/template/jh-footer.ftl">
   <script type="text/javascript" src="/html/jinhu-static-z01/js/jquery-1.12.1.min.js"></script>
   <script type="text/javascript" src="/html/jinhu-static-z01/js/jquery.placeholder.min.js"></script>
   <script type="text/javascript" src="/html/jinhu-static-z01/bootstrap/js/bootstrap.min.js"></script>
   <script type="text/javascript" src="/html/jinhu-static-z01/js/js.js"></script>
   <script type="text/javascript">
       $(function () {
           $('input, textarea').placeholder();
       });
   </script>
   </body>
   </html>
   
  
 