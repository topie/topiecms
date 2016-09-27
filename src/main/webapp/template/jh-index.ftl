<!DOCTYPE html>
                                                                 <html>
                                                                 <head lang="en">
                                                                     <#include "/template/jh-meta.ftl">
								     <meta name="keywords" content="金湖,金湖县,金湖县政府,金湖政府网" />
                                                                     <title>${site.displayName!}</title>
                                                                     <link href="/html/jinhu-static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                                                                     <link href="/html/jinhu-static/css/style.ts.css" rel="stylesheet">
								     
									<script type="text/javascript" src="/html/jinhu-static/js/advertise.js"></script>
									<script type="text/javascript" src="/html/jinhu-static/js/qiehuan.js"></script>
                                                                     <!--[if lt IE 9]>
                                                                     <script src="/html/jinhu-static/js/html5shiv.min.js"></script>
                                                                     <script src="/html/jinhu-static/js/respond.min.js"></script>
                                                                     <![endif]-->
                                                                 </head>
                                                                 <body>
                                                                 <#include "/template/jh-head.ftl">
                                                                 <#include "/template/jh-index-daohang.ftl">
                                                                 <div class="container bg-white">
                                                                     <div class="jh-main" style="padding-top: 20px;">
                                                                         
                                                                                 <div class="row mgt10" style="margin-bottom: 20px;">
                                                                                     <div class="col-md-7">
                                                                                         <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                                                             <!-- Indicators -->
                                                                                             <ol class="carousel-indicators carousel-indicators1">
                                                                                                 <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                                                                                 <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                                                 				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                                                 				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
                                                                                             </ol>
                                                                 
                                                                                             <!-- Wrapper for slides -->
                                                                                             <div class="carousel-inner" role="listbox">
                                                                 			    <@pictureListDirective pageSize=4 pageNum=1 >
                                                                 			     <#list contents as cmsContent>
                                                                 			      <div class="item ${(cmsContent_index==0)?string('active','')}">
                                                                                                           <a href="${cmsContent.url}" target="_blank"><img src="${cmsContent.titleImageUrl!}" style="height: 406px;width: 100%;"/></a>
                                                                 					  <div class="carousel-caption carousel-caption1">
                                                                                                               <p><a target="_blank" href="${cmsContent.url}" style="color:white;">${cmsContent.title}</a></p>
                                                                                                             </div>
                                                                                                 </div>
                                                                 				</#list> 
                                                                                                </@pictureListDirective>
                                                                                             </div>
                                                                 
                                                                                             <!-- Controls -->
                                                                                             <!--<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                                                                                 <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                                                                                 <span class="sr-only">Previous</span>
                                                                                             </a>
                                                                                             <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                                                                                 <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                                                                                 <span class="sr-only">Next</span>
                                                                                             </a>-->
                                                                                         </div>
                                                                                         <div class="ggfw-list-bg text-center mgt10">
                                                                                             <div class="row">
                                                                 			    <@channelDirective channelId=19>
                                                                                            	<div class="col-xs-3">
                                                                                                     <div class="ggfw-list-bg2">
                                                                                                         <a target="_blank" style="color:white" href="${channel.url}">${channel.displayName!}</a>
                                                                                                     </div>
                                                                                                 </div>
                                                                                                  <@channelListDirective channelId=channel.id order=4 >
                                                                 				 <div class="col-xs-9 fontSize14">
                                                                                                     <div class="row ggfw-list-pd ggfw-list-pd2">
                                                                                                    <#list channels as cmschannel>
                                                                                					
                                                                                                         <div class="col-xs-4">
                                                                                                             <a target="_blank" href="${cmschannel.url}">${cmschannel.displayName}</a>
                                                                                                         </div>
                                                                 					</#list>
                                                                                                        
                                                                                                     </div>
                                                                                                 </div>
                                                                 				</@channelListDirective>
                                                                 				</@channelDirective>
                                                                                             </div>
                                                                                         </div>
                                                                                     </div>
                                                                                     <div class="col-md-5 pdTop1em">
                                                                                       <@topOneDirective titleLeft=20>
                                                                                			
                                                                                				<p class="fontSize22 color-green"><a href="${cmsContent.url!}" style="${cmsContent.titleStyle!}" target="_blank">${cmsContent.title!}</a></p>
        
                                                                 				</@topOneDirective >
                                                                                       
                                                                                         
                                                                                         <div>
                                                                                             <!-- Nav tabs -->
                                                                 			    <@channelListDirective channelId=4 order=4 excludeIds="17,18,19,211,225,240">
                                                                                             <ul class="nav nav-tabs fontSize16 navTab1 navTab1s text-center" role="tablist" id="navTab1">
                                                                 			<#list channels as channel>
                                                                 				<li role="presentation" class='${(channel_index==0)?string("active","")}'>
                                                                 				<a href="#con_${channel_index}" aria-controls="con_${channel_index}" role="tab" data-toggle="tab">${channel.displayName!}</a></li>
                                                                 			</#list> 
                                                                                             </ul>
                                                                                             <!-- Tab panes -->
                                                                                             <div class="tab-content navTab1-content pTextIndent">
                                                                 			    <#list channels as channel>
                                                                                                 <div role="tabpanel" class="tab-pane ${(channel_index==0)?string('active','')}" id="con_${channel_index}">
                                                                                                     <ul class="panel2-list">
                                                                                                       <#if channel.id==16>
                                                                                                         
                                                                                                         <@videoListDirective channelId=16 pageSize=8 pageNum=1 order=1 titleLeft=20 >
                   	<#list cmsVideos as video>
                         <li><span class="jh-dotted">·</span><a href="${video.url!}" target="_blank"><span class="panel2-list-content">${video.name!}</span>
                                                                 					<span class="panel2-list-time">${video.publishDate?string("yyyy-MM-dd")}</span></a></li>
                   		
                   	</#list>
                   	
                   </@videoListDirective>
                   
                                                                                                         </#if>
                                                                 				    <@contentListDirective channelId=channel.id pageSize=8 pageNum=1 titleLeft=20  order=10>
                                                                                			<#list contents as cmsContent>
                                                                                				<li><span class="jh-dotted">·</span><a href="${cmsContent.url}" target="_blank"><span class="panel2-list-content">${cmsContent.title}</span>
                                                                 					<span class="panel2-list-time">${cmsContent.publishDate?string("yyyy-MM-dd")}</span></a></li>
                                                                 				</#list>
                                                                 				</@contentListDirective >
                                                                                                         </ul>
                                                                                                 </div>
                                                                 				</#list> 
                                                                                             </div>
                                                                 				</@channelListDirective>
                                                                                         </div>
                                                                                         <div class="border-gray clearfix mgt10">
                                                                                             <!-- Nav tabs -->
                                                                                             <ul class="nav nav-tabs fontSize16 navTab1 navTab7 text-center" role="tablist" id="navTab4">
                                                                 			    <@channelDirective channelId=17>
                                                                                                 <li role="presentation" class="active"><a href="#gggs" aria-controls="gggs" role="tab" data-toggle="tab" aria-expanded="true">${channel.displayName}</a></li>
                                                                                			</@channelDirective>
                                                                                			<@channelDirective channelId=18>
                                                                                                 <li role="presentation" class=""><a href="#zscd" aria-controls="zscd" role="tab" data-toggle="tab" aria-expanded="false">${channel.displayName}</a></li>
                                                                                			  </@channelDirective>
                                                                                             </ul>
                                                                                             <!-- Tab panes -->
                                                                                             <div class="tab-content navTab1-content navTab3-content1 pTextIndent">
                                                                                                 <div role="tabpanel" class="tab-pane active" id="gggs">
                                                                                                     <ul class="panel2-list panel2-list-sm">
                                                                 				    <@contentListDirective channelId=17 pageSize=3 pageNum=1 order=10>
                                                                 					<#list contents as cmsContent>
                                                                 						<li><span class="jh-dotted">·</span><a href="${cmsContent.url}" target="_blank">${cmsContent.title}</a></li>
                                                                 					</#list> 
                                                                 					</@contentListDirective>
                                                                                                         </ul>
                                                                                                 </div>
                                                                                                 <div role="tabpanel" class="tab-pane" id="zscd">
                                                                                                     <ul class="panel2-list">
                                                                 				    <@contentListDirective channelId=18 pageSize=3 pageNum=1 order=10>
                                                                 					<#list contents as cmsContent>
                                                                 						<li><span class="jh-dotted">·</span><a href="${cmsContent.url}" target="_blank">${cmsContent.title}</a></li>
                                                                 					</#list> 
                                                                 					</@contentListDirective>
                                                                                                     </ul>
                                                                                                 </div>
                                                                                             </div>
                                                                                         </div>
                                                                                     
                                                                             </div>
                                                                         </div>
                                                                      <!--广告-->
						<@advertisingListDirective siteId=6 type='AD1' checkDate='ture'>
							<#if advertisings?size gt 0>
							<div class="row mgt10" style="margin-bottom:20px; padding:0 14px 0 14px;">
								<div id="AD1"> </div> 
							</div>
							</#if>
							<script type="text/javascript">
                       					<#list advertisings as ad>
								PImgPlayer.addItem( "${ad_index+1}", "${ad.link!}", "${ad.imageUrl!}");
									
                       					</#list>
							<#if advertisings?size gt 0>
                       					
							 PImgPlayer.init( "AD1","100%",100);
							</#if>
							</script>
                       				</@advertisingListDirective>
                                                                         
                                                                         <div class=""><!--政务公开-->
                                                                             <div class="index-toff border-gray1"><@channelDirective channelId="5">
                                                                                 <a href="${channel.url}"  target="_blank" class="index-ton color-green fontSize30">政务公开</a></@channelDirective>
                                                                             </div>
                                                                             <div class="row">
                                                                                 <div class="col-md-3">
                                                                                     <div class="panel panel-default panel1">
                                                                                         <div class="panel-heading panel1-t"><a href="javascript:;" class="panel1-ton fontSize18">基本政务信息</a></div>
                                                                                         <div class="panel-body">
                                                                                             <div class="row index-jbzw text-center fontSize12">
                                                                 			    <@channelListDirective channelId=5 order=4 excludeIds="28,29,30,31,32,33,34,35,36,37">
                                                                                			<#list channels as channel>
                                                                 				<#if channel.displayName?length lt 5>
                                                                 					<div class="col-xs-6"><a href="${channel.url}" target="_blank" class="index-jbzw-btn index-jbzw-btns">${channel.displayName}</a> </div>
                                                                                			</#if>
                                                                 				<#if channel.displayName?length gt 4>
                                                                 				<div class="col-xs-6">
                                                                                <a href="${channel.url}" target="_blank" class="index-jbzw-btn">
                                                                                  ${channel.displayName?substring(0,4)}<br>
                                                                                  ${channel.displayName?substring(4)}
                                                                                </a>
                                                                                </div>
                                                                 					<dd style="line-height:22px;"><a href="${channel.url}" target="_blank"></a></dd>
                                                                 				</#if>
                                                                                            </#list>
                                                                                   </@channelListDirective>
                                                                                             </div>
                                                                                         </div>
                                                                                     </div>
                                                                                 </div>
                                                                                 <div class="col-md-5">
                                                                                     <div class="border-gray clearfix">
                                                                                         <!-- Nav tabs -->
                                                                                         <ul class="nav nav-tabs fontSizeActive navTab1 navTab3 navTab1s  text-center" role="tablist" id="navTab2">
                                                                 			<@channelDirective channelId=29>
                                                                                			    <li role="presentation" class="active"><a href="#zfwj" aria-controls="zfwj" role="tab" data-toggle="tab">${channel.displayName}</a></li>
                                                                                			</@channelDirective>
                                                                                			<@channelDirective channelId=32>
                                                                                			    <li role="presentation"><a href="#zcjd" aria-controls="zcjd" role="tab" data-toggle="tab">${channel.displayName}</a></li>
                                                                                			</@channelDirective>
                                                                                			<@channelDirective channelId=34>
                                                                                			    <li role="presentation"><a href="#rsxx" aria-controls="rsxx" role="tab" data-toggle="tab">${channel.displayName}</a></li>
                                                                                			</@channelDirective>
                                                                 				<@channelDirective channelId=33>
                                                                                			    <li role="presentation"><a href="#tjsj" aria-controls="tjsj" role="tab" data-toggle="tab">${channel.displayName}</a></li>
                                                                                			</@channelDirective>
                                                                                         </ul>
                                                                                         <!-- Tab panes -->
                                                                                         <div class="tab-content navTab1-content navTab3-content1 pTextIndent">
                                                                                             <div role="tabpanel" class="tab-pane active" id="zfwj">
                                                                                                 <ul class="panel2-list panel2-list-sm">
                                                                 				<@contentListDirective channelId=29 pageSize=9 pageNum=1 order=10>
                                                                                				<#list contents as cmsContent>
                                                                                					<li><span class="jh-dotted">·</span><a href="${cmsContent.url}" target="_blank">${cmsContent.title}</a></li>
                                                                                				</#list> 
                                                                                			</@contentListDirective>
                                                                                                    
                                                                                                 </ul>
                                                                                             </div>
                                                                                             <div role="tabpanel" class="tab-pane" id="zcjd">
                                                                                                 <ul class="panel2-list panel2-list-sm">
                                                                                                     <@contentListDirective channelId=32 pageSize=9 pageNum=1 order=10>
                                                                                				<#list contents as cmsContent>
                                                                                					<li><span class="jh-dotted">·</span><a href="${cmsContent.url}" target="_blank">${cmsContent.title}</a></li>
                                                                                				</#list> 
                                                                                			</@contentListDirective>
                                                                                                 </ul>
                                                                                             </div>
                                                                                             <div role="tabpanel" class="tab-pane" id="rsxx">
                                                                                                 <ul class="panel2-list panel2-list-sm">
                                                                                                     <@contentListDirective channelId=34 pageSize=9 pageNum=1 order=10>
                                                                                				<#list contents as cmsContent>
                                                                                					<li><span class="jh-dotted">·</span><a href="${cmsContent.url}" target="_blank">${cmsContent.title}</a></li>
                                                                                				</#list> 
                                                                                			</@contentListDirective>
                                                                                                 </ul>
                                                                                             </div>
                                                                                             <div role="tabpanel" class="tab-pane" id="tjsj">
                                                                                                 <ul class="panel2-list panel2-list-sm">
                                                                                                     <@contentListDirective channelId=33 pageSize=9 pageNum=1 order=10>
                                                                                				<#list contents as cmsContent>
                                                                                					<li><span class="jh-dotted">·</span><a href="${cmsContent.url}" target="_blank">${cmsContent.title}</a></li>
                                                                                				</#list> 
                                                                                			</@contentListDirective>
                                                                                                 </ul>
                                                                                             </div>
                                                                                         </div>
                                                                                     </div>
                                                                                 </div>
                                                                                 <div class="col-md-4 pdTop1em">
                                                                                     <div class="panel panel-default panel1">
                                                                                         <div class="panel-heading panel1-t"><a href="javascript:;" class="panel1-ton fontSize18">重点政务信息</a></div>
                                                                                         <div class="panel-body">
                                                                                             <div class="row ggfw-btn-pd text-center">
                                                                 			     <@channelListDirective channelId=28 order=4>
                                                                                			<#list channels as channel>
                                                                                			<div class="col-xs-4">
                                                                 				<#if channel.displayName?length gt 4>
                                                                                                     <a href="${channel.url}" target="_blank" class="ggfw-btn">${channel.displayName?substring(0,4)}<span class="hidden-xs hidden-md">${channel.displayName?substring(4)}</span></a>
                                                                 				 </#if>
                                                                 				 <#if channel.displayName?length lt 5>
                                                                                                     <a href="${channel.url}" target="_blank" class="ggfw-btn">${channel.displayName}</a>
                                                                 				 </#if>
                                                                                                 </div>
                                                                                			</#list>
                                                                                		</@channelListDirective>
                                                                                              
                                                                                             </div>
                                                                                         </div>
                                                                                     </div>
                                                                                 </div>
                                                                             </div>
                                                                         </div>
                                                                          <!--广告-->
						<@advertisingListDirective siteId=6 type='AD2' checkDate='ture'>
							<#if advertisings?size gt 0>
							<div class="row mgt10" style="margin-bottom:20px; padding:0 14px 0 14px;">
								<div id="AD1"> </div> 
							</div>
							</#if>
							<script type="text/javascript">
                       					<#list advertisings as ad>
								PImgPlayer.addItem( "${ad_index+1}", "${ad.link!}", "${ad.imageUrl!}");
									
                       					</#list>
							<#if advertisings?size gt 0>
							 PImgPlayer.init( "AD2","100%",100);
							</#if>
							</script>
                       				</@advertisingListDirective>
                                                                         <div class="">
                                                                             <div class="index-toff border-gray1">
  <@channelDirective channelId="6">
                                                                                 <a href="${channel.url}"  target="_blank"  class="index-ton color-green fontSize30">公共服务</a></@channelDirective>
                                                                             </div>
                                                                             <div class="row">
                                                                                 <div class="col-md-9">
                                                                                     <div class="panel panel-default panel1">
										     <@channelDirective channelId=38>
                                                                                         <div class="panel-heading panel1-t"><a href="${channel.url!}" class="panel1-ton fontSize18" target="_blank">${channel.displayName!}</a></div>
										     </@channelDirective>
                                                                                         <iframe src="http://222.184.56.249:8088/hawbsprj/jhxq.do" width="100%" height="381px" frameborder="0"></iframe>
                                                                                     </div>
                                                                                     <div class="clearfix">
                                                                                         <div class="col-sm-2 ggfw-cycx1 box-center color-green">
                                                                                             <div><span class="ggfw-cycx1-circle"><span class="glyphicon glyphicon-search"></span></span> <span>常用查询</span></div>
                                                                                         </div>
                                                                                         <div class="col-sm-10 ggfw-cycx2">
                                                                                             <div class="row ggfw-btn-pd ggfw-btn-pd1 text-center">
                                                                                                <@contentListDirective channelId=44 pageSize=12 pageNum=1>
												<#list contents as content>
												<div class="col-xs-4 col-md-2">
                                                                                                      <a href="${content.url!}" target="_blank" class="ggfw-btn">${content.title!}</a>
                                                                                                  </div>
                                                                                                    	
                                                                                                    </#list></@contentListDirective>
                                                                                             </div>
                                                                                         </div>
                                                                                     </div>
                                                                                 </div>
                                                                                 <div class="col-md-3">
                                                                                     <div class="panel panel-default panel2">
                                                                 		   
                                                                                         <div class="panel-heading panel2-t panel2-t1 fontSize18">专题通道</div>
                                                                                         <div class="panel-body">
                                                                                        <@channelDirective channelId=41>
                                                                                             <div class="color-green pd3 dis-b"><a target="_blank" href="${channel.url!}" class="color-green"><span class="mgr10"><img src="/html/jinhu-static/img/index_zytd_icon1.png"></span>${channel.displayName}</a></div>
                                                                                    </@channelDirective>
                                                                                             <div class="index-zttd-list clearfix fontSize12">
                                                                 			     <@channelListDirective channelId=41 order=4>
                                                                                			<#list channels as channel>
                                                                                				<div class="col-xs-3 col-md-4 col-lg-3"><a href="${channel.url}" target="_blank">${channel.displayName}</a></div>
                                                                 				</#list>
                                                                                		</@channelListDirective>
                                                                                             </div>
              
                                                                                           <@channelDirective channelId=42>                                                                               <div class="color-green pd3 dis-b"><a href="${channel.url}" class="color-green" target="_blank"><span class="mgr10"><img src="/html/jinhu-static/img/index_zytd_icon2.png"></span>绿色通道</a></div>
                                                                                             </@channelDirective>
                                                                                             <div class="index-zttd-list clearfix fontSize12">
                                                                 			    <@channelListDirective channelId=42 order=4>
                                                                                			<#list channels as channel>
                                                                                			   <div class="col-xs-2">
                                                                                                     <a href="${channel.url}" target="_blank" class="thumbnail thumbnails text-center">
                                                                                                         <img src="${channel.channelIcon!}">
                                                                                                         <p>${channel.displayName}</p>
                                                                                                     </a>
                                                                                                 </div>
                                                                 				</#list>
                                                                                			</@channelListDirective>
                                                                                                <!-- <div class="col-xs-2">
                                                                                                     <a href="#" class="thumbnail thumbnails text-center">
                                                                                                         <img src="/html/jinhu-static/img/ggfw_lstd_icon9.png">
                                                                                                         <p>投资<span class="hidden-md">者</span></p>
                                                                                                     </a>
                                                                                                 </div>-->
                                                                                             </div>
                                                                                             <div class="index-zttd-list1 clearfix fontSize12">
                                                                                                 <div class="col-xs-6">
                                                                 				<@channelDirective channelId=39>
                                                                                                    	<a href="${channel.url}" class="color-green index-zttd-alink1" target="_blank">${channel.displayName}</a>
                                                                                			</@channelDirective>
                                                                                                 </div>
                                                                                                 <div class="col-xs-6">
                                                                 				
                                                                                		    <@channelDirective channelId=40>
                                                                                                    	<a href="${channel.url}" class="color-green index-zttd-alink2" target="_blank">书记县长<br>权力清单</a>
                                                                                		    </@channelDirective>
                                                                                                 </div>
                                                                                             </div>
                                                                                         </div>
                                                                                     </div>
                                                                                     <div class="panel panel-default panel2">
                                                                 		    <@channelDirective channelId=43>
                                                                                         <div class="panel-heading panel2-t fontSize18"><a href="${channel.url}" target="_blank">${channel.displayName}</a></div>
                                                                                	    </@channelDirective>
                                                                                         <div class="panel-body">
                                                                                             <ul class="panel2-list panel2-list-sm">
                                                                 			    <@contentListDirective channelId=43 pageSize=3 pageNum=1 titleLeft=20 order=1>
                                                                 				<#list contents as cmsContent>
                                                                 					<li><a href="${cmsContent.url}" target="_blank" title="${cmsContent.title!}">${cmsContent.title!}</a></li>
                                                                 				</#list> 
                                                                 			</@contentListDirective>
                                                                                             </ul>
                                                                                         </div>
                                                                                     </div>
                                                                                 </div>
                                                                             </div>
                                                                         </div>
                                                                          <!--广告-->
						<@advertisingListDirective siteId=6 type='AD3' checkDate='ture'>
							<#if advertisings?size gt 0>
							<div class="row mgt10" style="margin-bottom:20px; padding:0 14px 0 14px;">
								<div id="AD1"> </div> 
							</div>
							</#if>
							<script type="text/javascript">
                       					<#list advertisings as ad>
								PImgPlayer.addItem( "${ad_index+1}", "${ad.link!}", "${ad.imageUrl!}");
									
                       					</#list>
							<#if advertisings?size gt 0>
                       					
							 PImgPlayer.init( "AD3","100%",100);
							</#if>
							</script>
                       				</@advertisingListDirective>
                                                                         <div class="">
                                                                             <div class="index-toff border-gray1"><@channelDirective channelId=7>
                                                                                 <a href="${channel.url!}" target="_blank" class="index-ton color-green fontSize30">政民互动</a></@channelDirective>
                                                                             </div>
                                                                             <div class="row">
                                                                                 <div class="col-md-4">
                                                                                     <div class="panel panel-default panel1">
                                                                 		    <@channelDirective channelId=51>
                                                                                         <div class="panel-heading panel1-t"><a href="${channel.url}" class="panel1-ton fontSize18">${channel.displayName}</a></div>
                                                                                         <div class="panel-body">
                                                                                             <a href="${channel.url}" target="_blank" class="thumbnail thumbnails thumbnailb">
                                                                                                 <img src="/html/jinhu-static/img/index_zxft_pic.png">
                                                                                             </a>
                                                                 				<ul class="panel2-list mgt10 panel2-list-pd1">
                                                                                			<@interviewListDirective channelId=51 pageSize=1 pageNum=1 >
                                   	<#list cmsInterviews as v>
                                   	    <li><span class="jh-dotted">·</span>主题： <a href="${v.url!}" target="_blank">${v.title!}</a></li>
                                   	    <li><span class="jh-dotted">·</span>嘉宾：   ${v.guests!}</li>
                                   	    <li><span class="jh-dotted">·</span>时间：   ${v.startTime!}—${v.endTime!}</li>
                                   	</#list>
                                   </@interviewListDirective>
                                                                 				</ul>
                                                                                                 </div>
                                                                                                    <div class="panel-footer">
                                                                                			 <a href="${channel.url}" target="_blank">更多访谈</a>
                                                                                		     </div>
                                                                                		      </@channelDirective>
                                                                                     </div>
                                                                                 </div>
                                                                                 <div class="col-md-5">
                                                                                     <div class="border-gray">
                                                                                         <!-- Nav tabs -->
                                                                                         <ul class="nav nav-tabs fontSizeActive navTab1 navTab3 navTab1s  text-center" role="tablist" id="navTab3">
                                                                 			 <@channelDirective channelId=52>
                                                                 			 <li role="presentation" class="active">
                                                                 			 <a href="#wsdc" aria-controls="wsdc" role="tab" data-toggle="tab" aria-expanded="false">${channel.displayName}</a></li>
                                                                 			</@channelDirective>
                                                                 		    <@channelDirective channelId=53>
                                                                 			<li role="presentation"><a href="#myzj" aria-controls="myzj" role="tab" data-toggle="tab" aria-expanded="false">${channel.displayName}</a></li>
                                                                 		    </@channelDirective>
                                                                 		    <@channelDirective channelId=54>
                                                                 			<li role="presentation"><a href="#zjfk" aria-controls="zjfk" role="tab" data-toggle="tab" aria-expanded="true">${channel.displayName}</a></li>
                                                                 		    </@channelDirective>
                                                                 		     <@channelDirective channelId=50>
                                                                 			<li role="presentation"><a href="#lxhf" aria-controls="lxhf" role="tab" data-toggle="tab" aria-expanded="true">来信回复</a></li>
                                                                 		    </@channelDirective>
                                                                                         </ul>
                                                                                         <!-- Tab panes -->
                                                                                         <div class="tab-content navTab1-content navTab3-content pTextIndent">
                                                                                             <div role="tabpanel" class="tab-pane active" id="wsdc">
                                                                                                 <ul class="panel2-list">
                                                                 				<@voteListDirective channelId=52 pageSize=9 titleLeft="30">
                          			 
                          				<#list cmsVotes as vote>
                          					
                                            <li><span class="jh-dotted">·</span><a href="${vote.filed1}" target="_blank">${vote.title}</a></li>
                          				</#list>
                          				
                          			</@voteListDirective>
                                                                                                  
                                                                                                 </ul>
                                                                                             </div>
                                                                                             <div role="tabpanel" class="tab-pane" id="myzj">
                                                                                                 <ul class="panel2-list">
                                                                                                     <@contentListDirective channelId=53 pageSize=9 pageNum=1 order=1 titleLeft="30">
                                                                 				<#list contents as cmsContent>
                                                                 					<li><span class="jh-dotted">·</span><a href="${cmsContent.url}" target="_blank">${cmsContent.title}</a></li>
                                                                 				</#list> 
                                                                                			</@contentListDirective>
                                                                                                 </ul>
                                                                                             </div>
                                                                                             <div role="tabpanel" class="tab-pane" id="zjfk">
                                                                                                 <ul class="panel2-list">
                                                                                                    <@contentListDirective channelId=54 pageSize=9 pageNum=1 order=1 titleLeft="30">
                                                                 				<#list contents as cmsContent>
                                                                 					<li><span class="jh-dotted">·</span><a href="${cmsContent.url}" target="_blank">${cmsContent.title}</a></li>
                                                                 				</#list> 
                                                                                			</@contentListDirective>
                                                                                                 </ul>
                                                                                             </div>
                                                                                             <div role="tabpanel" class="tab-pane" id="lxhf">
                                                                                                 <ul class="panel2-list">
                                                                                                     <@contentListDirective channelId=50 pageSize=9 pageNum=1 order=1 titleLeft="30">
                                                                 				<#list contents as cmsContent>
                                                                 					<li><span class="jh-dotted">·</span><a href="${cmsContent.url}" target="_blank">${cmsContent.title}</a></li>
                                                                 				</#list> 
                                                                                			</@contentListDirective>
                                                                                                 </ul>
                                                                                             </div>
                                                                                         </div>
                                                                                     </div>
                                                                                 </div>
                                                                                 <div class="col-md-3">
                                                                                     <div class="index-border-gray2 pdTop1em">
                                                                                         <div class="row">
                                                                 			<@channelDirective channelId=45>
                                                                 			 <div class="col-xs-4 col-md-12">
                                                                                                 <a href="${channel.url}" target="_blank" class="thumbnail thumbnails thumbnails2">
                                                                                                     <img src="/html/jinhu-static/img/shuji.png">
                                                                                                 </a>
                                                                                             </div>
                                                                 			    </@channelDirective>
                                                                 			    <@channelDirective channelId=46>
                                                                 				<div class="col-xs-4 col-md-12">
                                                                                                 <a href="${channel.url}" target="_blank" class="thumbnail thumbnails thumbnails2">
                                                                                                     <img src="/html/jinhu-static/img/shuji1.png">
                                                                                                 </a>
                                                                                             </div>
                                                                 			    </@channelDirective>
                                                                 			    <@channelDirective channelId=47>
                                                                 				<div class="col-xs-4 col-md-12">
                                                                                                 <a href="${channel.url}" target="_blank" class="thumbnail thumbnails thumbnails2">
                                                                                                     <img src="/html/jinhu-static/img/shuji2.png">
                                                                                                 </a>
                                                                                             </div>
                                                                 			    </@channelDirective>
                                                                                         </div>
                                                                                         <div class="clearfix">
                                                                                             <div class="index-pd-none">
                                                                 				<@channelDirective channelId=60>
                                                                                                 <div class="col-xs-6">
                                                                 				<a href="${channel.url}" target="_blank" class="color-green pd3 dis-b"><span class="mgr5"><img src="/html/jinhu-static/img/icon1.png"></span>${channel.displayName}</a>
                                                                                			    </div>
                                                                                                 </@channelDirective>
                                                                                			    <@channelDirective channelId=59>
                                                                                                 <div class="col-xs-6">
                                                                 				<a href="${channel.url}" target="_blank" class="color-green pd3 dis-b"><span class="mgr5"><img src="/html/jinhu-static/img/icon2.png"></span>12345</a>
                                                                                			   </div>
                                                                                                  </@channelDirective>
                                                                                			    <@channelDirective channelId=57>
                                                                                                 <div class="col-xs-6">
                                                                 				<a href="${channel.url}" target="_blank" class="color-green pd3 dis-b"><span class="mgr5"><img src="/html/jinhu-static/img/icon3.png"></span>${channel.displayName}</a>
                                                                                			    </div>
                                                                                                 </@channelDirective>
                                                                                			    <@channelDirective channelId=58>
                                                                                                 <div class="col-xs-6">
                                                                 				<a href="${channel.url}" target="_blank" class="color-green pd3 dis-b"><span class="mgr5"><img src="/html/jinhu-static/img/icon4.png"></span>${channel.displayName}</a>
                                                                                			    </div>
                                                                                                 </@channelDirective>
                                                                                                
                                                                                             </div>
                                                                                         </div>
                                                                                     </div>
                                                                                 </div>
                                                                             </div>
                                                                         </div>
                                                                     </div>
								   <@advertisingListDirective siteId=6 type='ADFLOAT' checkDate='ture'>
                       					<#list advertisings as ad> 
								<div id="gg${ad.id!}" style="position: absolute; left: 196.803px; top: 414.163px; z-index:9999;" >
									<table cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
										<td>
											<p class="ParagraphIndentN" style="padding:0px; margin:0 auto;">
											<a href="${ad.link!}">
												<img lang="1" watermarksize="0" watermarkpos="0" alt="" src="${ad.imageUrl!}" width="${ad.imageWidth!}" height="${ad.imageHeight!}">
											</a>
										    </p>
										</td>
									    </tr>
									    <tr>
										<td bgcolor="#cccccc" align="right">
											<div onclick="closeDL(&quot;gg${ad.id!}&quot;)" style="cursor:pointer;" align="right"><font color="black" style="font-size:12px;">关闭</font>
											</div>
										</td>
									    </tr>
									 </tbody>
								      </table>
								</div>
								<script type="text/javascript">
										function closeDL(StrID){document.getElementById(StrID).style.display='none';}
										var ad0=new AdMove("gg${ad.id!}");
										ad0.Run();
								</script>
                       					</#list>
                       				</@advertisingListDirective>
                                                                    <#include "/template/jh-links.ftl">
                                                                 </div>
                                                                  <#include "/template/jh-footer.ftl"> 
                                                                 <script type="text/javascript" src="/html/jinhu-static/js/jquery-1.12.1.min.js"></script>
                                                                 <script type="text/javascript" src="/html/jinhu-static/js/jquery.placeholder.min.js"></script>
                                                                 <script type="text/javascript" src="/html/jinhu-static/bootstrap/js/bootstrap.min.js"></script>
                                                                 <script type="text/javascript" src="/html/jinhu-static/js/js.js"></script>
                                                                 <script type="text/javascript" src="/html/jinhu-static/js/visit-record.js"></script>   
                                                                 <script type="text/javascript">
                                                                     $(function () {
                                                                         $('input, textarea').placeholder();
                                                                         $('.ggfw-cycx1').height($('.ggfw-cycx2').height()-1);
                                                                         $(window).resize(function() {
                                                                             $('.ggfw-cycx1').height($('.ggfw-cycx2').height()-1);
                                                                         });
                                                                     });
                                                                 </script>
                                                                 </body>
                                                                 </html>
                                                                 
                                                                
                                                               
                                                              
                                                             
                                                            
                                                           
                                                          
                                                         
                                                        
                                                       
                                                      
                                                     
                                                    
                                                   
                                                  
                                                 
                                                
                                               
                                              
                                             
                                            
                                           
                                          
                                         
                                        
                                       
                                      
                                     
                                    
                                   
                                  
                                 
                                
                               
                              
                             
                            
                           
                          
                         
                        
                       
                      
                     
                    
                   
                  
                 
                
               
              
             
            
           
          
         
        
       
      
     
    
   
  
 