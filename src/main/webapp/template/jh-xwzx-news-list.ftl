<!DOCTYPE html>
     <html>
     <head lang="en">
         <meta charset="UTF-8">
         <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
         <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
         <meta http-equiv="X-UA-Compatible" content="IE=9" />
         <title>${site.displayName}-${channel.displayName}</title>
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
     		<@channelDirective channelId=channel.pid>
                     <div class="fontSize18 pd3 color-green">${channel.displayName}</div>
                     <ul class="news-list1 news-list1-sm fontSize16 clearfix">
     		<@channelListDirective channelId=channel.id order=1 excludeIds="50,51,52,53,60,61,211,45,46,47,57,58,58" >
     		 <#list channels as channel>
                         <li class="${(channel.id==own)?string('active','')}">
     		    <a href="${channel.url}"><span class="glyphicon glyphicon-play-circle"></span>${channel.displayName}</a> </li>
                       </#list> 
     		</@channelListDirective> 
                     </ul>
     		</@channelDirective>
                 </div>
                 <div class="col-md-8 pdTop1em">
     	    <@channelDirective channelId=own>
                     <div class="fontSize18 new-list2-t">${channel.displayName}</div>
     		<@contentListDirective channelId=channel.id pageSize=channel.pageSize pageNum=pageNum titleLeft=32 order=4>
                     <ul class="panel2-list panel2-list-pd news-list2">
     		  <#list contents as cmsContent>
     			<li><a target="_blank" href="${cmsContent.url}">
     			<span class="panel2-list-content">${cmsContent.title}</span>
     			<span class="panel2-list-time">${cmsContent.publishDate?string("yyyy-MM-dd")}</span></a></li>	
     		  </#list>
                     </ul>
     
     			${pagination} 
                        
     		</@contentListDirective>
                 
     	    </@channelDirective ></div>
             </div>
         </div>
        <#include "/template/jh-links.ftl">
     </div>
      <#include "/template/jh-footer.ftl">
     <script type="text/javascript" src="/html/jinhu-static/js/jquery-1.12.1.min.js"></script>
     <script type="text/javascript" src="/html/jinhu-static/js/jquery.placeholder.min.js"></script>
     <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
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
     
    
   
  
 