<!DOCTYPE html>
           <html>
           <head lang="en">
                <#include "/template/jh-meta.ftl">
               <title>${site.displayName!}-${cmsVideo.name!}</title>
             	<meta name="keywords" content="" />
               <link href="/html/jinhu-static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
               <link href="/html/jinhu-static/css/style.ts.css" rel="stylesheet">
               <!--[if lt IE 9]>
               <script src="/html/jinhu-static/js/html5shiv.min.js"></script>
               <script src="/html/jinhu-static/js/respond.min.js"></script>
               <![endif]-->
	       <style>
		.jhvideo{
			width:60%;
			margin-left: auto;
			margin-right: auto;
		}
	       </style>
           </head>
           <body>
           
           <#include "/template/jh-head.ftl"/>
           <#include "/template/jh-daohang.ftl"/>
           <div class="container bg-white">
              
               <div class="jh-main jh-article">
                   <div class="jh-article-title fontSize22 text-center"><span style="">${cmsVideo.name?default("")}</span></div>
                   <div class="jh-article-info text-center">
                       <span>发布日期：<#if cmsVideo.publishDate??>${(cmsVideo.publishDate?string("yyyy-MM-dd"))}</#if></span>
                       <span>出处：${cmsVideo.origin?default("")}</span>
                       <span>作者：${cmsVideo.director?default("")}</span>
                       <div class="jh-share-btn" style="margin-top: -15px;">
   			
			<span  class="bdsharebuttonbox">
			<a href="#" class="bds_more" data-cmd="more"></a>
			<a href="#" class="bds_qzone" data-cmd="qzone"></a>
			<a href="#" class="bds_tsina" data-cmd="tsina"></a>
			<a href="#" class="bds_tqq" data-cmd="tqq"></a>
			<a href="#" class="bds_renren" data-cmd="renren"></a>
			<a href="#" class="bds_weixin" data-cmd="weixin"></a>
			</span>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdPic":"","bdStyle":"0","bdSize":"16"},"share":{},"image":{"viewList":["qzone","tsina","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
			
		</div></div>
 <div class="jh-article-p">
                  <div class="thumbnail ">
           		<div class="mgt30 jhvideo" >
                                          
<p align="center"><object id="MediaPlayer1" type="application/x-oleobject" viewastext="" classid="CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6" width="418" height="376" codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701standby=Loading">
<param value="http://www.jinhu.gov.cn/webmedia/jhvod/20160922.wmv" name="URL" />
<param value="1" name="rate" />
<param value="0" name="balance" />
<param value="0.2715284" name="currentPosition" />
<param value="" name="defaultFrame" />
<param value="1" name="playCount" />
<param value="-1" name="autoStart" />
<param value="0" name="currentMarker" />
<param value="-1" name="invokeURLs" />
<param value="" name="baseURL" />
<param value="70" name="volume" />
<param value="0" name="mute" />
<param value="full" name="uiMode" />
<param value="0" name="stretchToFit" />
<param value="0" name="windowlessVideo" />
<param value="-1" name="enabled" />
<param value="-1" name="enableContextMenu" />
<param value="0" name="fullScreen" />
<param value="" name="SAMIStyle" />
<param value="" name="SAMILang" />
<param value="" name="SAMIFilename" />
<param value="" name="captioningID" />
<param value="0" name="enableErrorDialogs" />
<param value="11060" name="_cx" />
<param value="9948" name="_cy" /></object></p>

  				<!--<video  width="100%" height="" controls="controls">
  				  <source src="http://www.w3school.com.cn/i/movie.ogg" type="video/ogg">
  				  <source src="http://www.w3school.com.cn/i/movie.mp4" type="video/mp4">
  				  <source src="${cmsVideo.videoUrl!}" type="video/mp4">
  				  <source src="${cmsVideo.videoUrl!}" type="video/ogg">
  				  
  				</video>-->
  			</div>
                    </div>
                  </br>
                       ${cmsVideo.introduce?default("")}
                   </div>
               </div>
           	
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