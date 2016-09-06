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
          <#include "/template/jh-daohang2.ftl">
          <div class="jh-main">
              <div class="panel panel-default panel1">
      	<@channelDirective channelId=12><!--政务要闻-->
      		  <div class="panel-heading panel1-t"><a href="${channel.url}" class="panel1-ton fontSize18">${channel.displayName}</a></div>
      			<div class="panel-body">
                      <div class="row">
                          <div class="col-md-5">
                              <a href="#" class="thumbnail thumbnails thumbnailb">
                                  <img src="/html/jinhu-static/img/xwzx_zwyw_pic.png">
                              </a>
                          </div>
                          <div class="col-md-7 pdTop1em">
                              <!-- Nav tabs --><@contentListDirective channelId=17 pageSize=1 titleLeft=17 order=1>
      			  <#list contents as cmsContent>
      			<a href="${cmsContent.url}" target="_blank"><p class="fontSize22 color-green">${cmsContent.title!}</p></a>
    			</#list>
    			</@contentListDirective>
      			<@contentListDirective channelId=channel.id pageSize=8 titleLeft=26 order=4>
                   <ul class="panel2-list">
      			  <#list contents as cmsContent>
      				<li><span class="jh-dotted">·</span><a target="_blank" href="${cmsContent.url}"><span class="panel2-list-content">${cmsContent.title}</span><span class="panel2-list-time">${cmsContent.publishDate?string("yyyy-MM-dd")}</span></a></li>	
      			  </#list>
                     </ul>
      			</@contentListDirective>
                          </div>
                      </div>
                   </div>
      	 </@channelDirective>
               </div> 
              <div class="row">
                  <div class="col-md-6">
                      <div class="panel panel-default panel1">
      		<@channelDirective channelId=13><!--各镇动态-->
                          <div class="panel-heading panel1-t"><a href="${channel.url}" class="panel1-ton fontSize18">${channel.displayName}</a></div>
                          <div class="panel-body">
                              <ul class="panel2-list panel2-list-pd">
      			<@contentListDirective channelId=channel.id pageSize=7 titleLeft=32 order=4>
      			  <#list contents as cmsContent>
      				<li><a target="_blank" href="${cmsContent.url}"><span class="panel2-list-content">${cmsContent.title}</span><span class="panel2-list-time">${cmsContent.publishDate?string("yyyy-MM-dd")}</span></a></li>	
      			  </#list>
      			  </@contentListDirective>
                              </ul>
                          </div>
      		    </@channelDirective>
                      </div>
                  </div>
                  <div class="col-md-6">
                      <div class="panel panel-default panel1">
      		<@channelDirective channelId=14><!--部门信息-->
                          <div class="panel-heading panel1-t"><a href="${channel.url}" class="panel1-ton fontSize18">${channel.displayName}</a></div>
                          <div class="panel-body">
                              <ul class="panel2-list panel2-list-pd">
      			<@contentListDirective channelId=channel.id pageSize=7 titleLeft=32 order=4>
      			  <#list contents as cmsContent>
      			  <li><a target="_blank" href="${cmsContent.url}"><span class="panel2-list-content">${cmsContent.title}</span><span class="panel2-list-time">${cmsContent.publishDate?string("yyyy-MM-dd")}</span></a></li>	
      			  </#list>
      			  </@contentListDirective>
                                 </ul>
                          </div>
      		     </@channelDirective>
                      </div>
                  </div>
                  <div class="col-md-6">
                      <div class="panel panel-default panel1">
      		<@channelDirective channelId=15><!--媒体聚焦-->
                          <div class="panel-heading panel1-t"><a href="${channel.url}" class="panel1-ton fontSize18">${channel.displayName}</a></div>
                          <div class="panel-body">
                              <ul class="panel2-list panel2-list-pd">
      			<@contentListDirective channelId=channel.id pageSize=7 titleLeft=32 order=4>
      			  <#list contents as cmsContent>
      			  <li><a target="_blank" href="${cmsContent.url}"><span class="panel2-list-content">${cmsContent.title}</span><span class="panel2-list-time">${cmsContent.publishDate?string("yyyy-MM-dd")}</span></a></li>	
      			  </#list>
      			  </@contentListDirective>
                                 </ul>
                          </div>
      		   </@channelDirective>
                      </div>
                  </div>
                  <div class="col-md-6">
                      <div class="panel panel-default panel1">
      		<@channelDirective channelId=16><!--视频新闻-->
                          <div class="panel-heading panel1-t"><a href="${channel.url}" class="panel1-ton fontSize18">${channel.displayName}</a></div>
                          <div class="panel-body">
                              <ul class="panel2-list panel2-list-pd">
      			<@contentListDirective channelId=channel.id pageSize=7 titleLeft=32 order=4>
      			  <#list contents as cmsContent>
      			  <li><a target="_blank" href="${cmsContent.url}"><span class="panel2-list-content">${cmsContent.title}</span><span class="panel2-list-time">${cmsContent.publishDate?string("yyyy-MM-dd")}</span></a></li>	
      			  </#list>
      			  </@contentListDirective>
                                 </ul>
                          </div>
      		   </@channelDirective>
                      </div>
                  </div>
              </div>
              <div class="row">
                  <div class="col-md-4">
                      <div class="ggfw-list-bg text-center">
      		<@channelDirective channelId=19><!-- 热点专题-->
                          <div class="ggfw-list-bg2">
                             ${channel.displayName}
                          </div>
                          <div class="row ggfw-list-pd1">
      			<@channelListDirective channelId=channel.id order=4 pageSize=6>
      			<#list channels as channel>
      				<div class="col-xs-6">
      				    <a href="${channel.url}">${channel.displayName}</a>
      				</div>
      			</#list>
      			</@channelListDirective>
                          </div>
      		    </@channelDirective>
                      </div>
                  </div>
                  <div class="col-md-4 pdTop1em">
                      <div class="panel panel-default panel2">
      		<@channelDirective channelId=17><!-- 公告公示-->
                          <div class="panel-heading panel2-t fontSize18"><a href="${channel.url}">${channel.displayName}</a></div>
                          <div class="panel-body">
                              <ul class="panel2-list panel2-list-sm">
      			<@contentListDirective channelId=channel.id pageSize=3 titleLeft=18 order=4>
      			  <#list contents as cmsContent>
                                  <li><span class="jh-dotted">·</span><a href="${cmsContent.url}">${cmsContent.title}</a></li>
                                  </#list>
      			</@contentListDirective>
                              </ul>
                          </div>
      		    </@channelDirective>
                      </div>
                  </div>
                  <div class="col-md-4">
                      <div class="panel panel-default panel2">
      		<@channelDirective channelId=18><!-- 中国政声网政声传递-->
                          <div class="panel-heading panel2-t fontSize18"><a href="${channel.url}">${channel.displayName}</a></div>
                          <div class="panel-body">
                              <ul class="panel2-list panel2-list-sm">
                               <@contentListDirective channelId=channel.id pageSize=3 titleLeft=18 order=4>
      			  <#list contents as cmsContent>
                                  <li><span class="jh-dotted">·</span><a href="${cmsContent.url}">${cmsContent.title}</a></li>
                                  </#list>
      			</@contentListDirective>
                              </ul>
                          </div>
      		    </@channelDirective>
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
      
     
    
   
  
 