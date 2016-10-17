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
          <style type="text/css">
      		.rcmz-bg-white{background:#fffaf0}
      		.rcmz-bg-white .rcmz_bg{height:377px; background:url(/html/jinhu-static/img/wrong_bg.jpg) no-repeat center top;}
      		.rcmz-bg-white .rcmz_logo{padding:150px 0 120px 0; text-align:center;}
      		.rcmz-bg-white .rcmz_fhsy_div{width:80%; text-align:right;}
      		.rcmz-bg-white .zsyz_fhsy{display:inline-block;}
      		.rcmz-bg-white .addwidth{width:90%; margin:0 auto;}
      		.rcmz-bg-white .ft-bg-red{margin:2.5em 0 3em 0; background:#97040c; height:1em;}
      		.rcmz-bg-white .color-green{color:#97040c;}
      		.rcmz-bg-white .lxyz-add-border{border-bottom:1px solid #97040c;}
            .ft .ft-bg{background-color:#97040c;border-bottom: 3px solid #6B0019;}
               .ft {
                    background-color: #fffaf0; 
               }
         		
               .color-green{color:#97040c;}
               a:focus, a:active, a:hover {
                  color: #97040c;
              }
      		
      	</style>
      </head>
      <body>
      <body class="rcmz-bg-white">
      <div class="rcmz_bg">
      	<div class="rcmz_logo"><img src="/html/jinhu-static/img/fault.png"></div>
      	<div class="rcmz_fhsy_div"><a href="${site.url}" class="zsyz_fhsy" target="_blank" title="返回首页"><img src="/html/jinhu-static/img/fhsy2.png"></a></div>
      </div>
      
      <div class="container">
          <div class="jh-main addwidth">
      	
      		<@channelListDirective channelId=own>
      			<#list channels as channel>
      			  
      			  <div class="col-md-6 pdTop1em pdb20">
                     <div class="wxqd-panel">
      			    
      					 <div class="wxqd-panel-t wxqd-red">
      						<a href="${channel.url}" target="_blank" class="wxqd-panel-tbg"><span class="color-white fontSize18">${channel.displayName}</span> </a>
      						<div class="wxqd-panel-tw"></div>
      					  </div>
      				   
      				  <@contentListDirective channelId=channel.id pageSize=6 pageNum=1 titleLeft=20 order=2> 
      					  <div class="wxqd-panel-c bg-white" style="height:200px;">
      						  <ul class="panel2-list panel2-list-pds wxqd-red">
      						   <#list contents as cmsContent>
      							  <li><span class="jh-dotted color-oldgray">·</span>
      							  <a title="${cmsContent.title!}" href="${cmsContent.url!}" target="_blank">
      							  <span class="panel2-list-content">${cmsContent.shortTitle!}</span>
      							  <span class="panel2-list-time">${cmsContent.publishDate?string("yyyy-MM-dd")}</span></a></li>
      							</#list> 
      						  </ul>
      					  </div>
      				  </@contentListDirective>
                      </div>
           	       </div>		  
      			</#list>
      	    </@channelListDirective>
      	
          </div>
      </div>
      
      <#include "/template/jh-footer.ftl">
      
      <script type="text/javascript" src="/html/jinhu-static/js/visit-record.js"></script>  
      <script type="text/javascript" src="/html/jinhu-static/js/search-jinhu.js"></script>   
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
      
     
    
   
  
 