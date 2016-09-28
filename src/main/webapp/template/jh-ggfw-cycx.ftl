<!DOCTYPE html>
       <html>
       <head lang="en">
            <#include "/template/jh-meta.ftl">
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
              <div class="clearfix refer">
		    <div class="color-green mgb20"><img src="/html/jinhu-static/img/green.png" style="margin-right:10px;">${channel.displayName!}</div>
		    <div class="row pdt10"> 
		    <@contentListDirective channelId=own>
		    <#list contents as content>
			<div class="col-xs-12 col-sm-4">
			    <ul class="panel2-list panel2-list-sm">
				<li><span class="jh-dotted">·</span><a href="${content.url!}" target="_blank">${content.title!}</a></li>
			    </ul>
			</div>
		    </#list>
		    </@contentListDirective>
		   </div>
	      </div>
	      </div>
       </div>
        <#include "/template/jh-footer.ftl">
       <script type="text/javascript" src="/html/jinhu-static/js/jquery-1.12.1.min.js"></script>
       <script type="text/javascript" src="/html/jinhu-static/js/jquery.placeholder.min.js"></script>
       <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
       <script type="text/javascript" src="/html/jinhu-static/js/js.js"></script>
       <script type="text/javascript">
           $(function () {
               $('input, textarea').placeholder();
             
           });
       </script>
       </body>
       </html>
       
      
     
    
   
  
 