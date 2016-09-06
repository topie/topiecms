<!DOCTYPE html>
        <html>
        <head lang="en">
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
            <meta http-equiv="X-UA-Compatible" content="IE=9" />
            <title>${site.displayName!}-${cmsContent.title!}</title>
          	<meta name="keywords" content="${cmsContent.keywords!}" />
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
            <ol class="breadcrumb fontSize16 jh-breadcrumb">
                <span class="jh-dotted">·</span>
                <@currentLocationDirective contentId=own divider="   /   ">${current}</@currentLocationDirective>
            </ol>
        	
            <div class="jh-main jh-article">
                <div class="jh-article-title fontSize22 text-center"><span style="${cmsContent.titleStyle!}">${cmsContent.title?default("")}</span></div>
                <div class="jh-article-info text-center">
                    <span>发布日期：<#if cmsContent.publishDate??>${(cmsContent.publishDate?string("yyyy-MM-dd"))}</#if></span>
                    <span>出处：${cmsContent.origin?default("")}</span>
                    <span>作者：${cmsContent.author?default("")}</span>
                    <span class="jh-share-btn">
   			<div class="bdsharebuttonbox "><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div></span>
                </div>
               <!--<div class="thumbnail jh-article-thumbnail">
        	<#if cmsContent.titleImageUrl?? &&(cmsContent.titleImageUrl!='')>
               
                    <img src="${cmsContent.titleImageUrl}">
                
        	</#if>
                 </div>-->
                <div class="jh-article-p">
                    ${cmsContent.contentText?default("")}
                </div>
            </div>
        		<#if cmsAttachments??>
        		   <div class="jh-article-download">
        				   <#list cmsAttachments as cmsAttachment>
        				   <button class="btn btn-default btn-lg btn-download">
        				   <span class="glyphicon glyphicon-save-file"></span><span>&nbsp; 
        				   <a href='${cmsAttachment.attachmentUrl}'>${cmsAttachment.attachmentName?default("未命名")}</a>
        				   &nbsp;</span>
        				   </button>
        				   </#list>
        			   </div>
        		  
        	 </#if>
         
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
        
       
      
     
    
   
  
 