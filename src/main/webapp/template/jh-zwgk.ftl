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
                     <div class="row">
                         <div class="col-md-4">
                             <div class="panel panel-default panel2">
                               <@channelDirective channelId=20>
                                 <div class="panel-heading panel2-t fontSize18"><a href="${channel.url!}">领导信息</a></div></@channelDirective>
                                 <div class="panel-body">
                                     <ul class="list-group zwgk-list-group fontSize12">
                                         <a href="javascript:void(0);" class="color-green fontSize16 pd2 dis-b">县政府</a>
                                         <!--<li class="list-group-item"><div class="zwgk-list-c"><span class="zwgk-list-name">徐亚平</span>县委副书记，县政府代县长、党组书记</div></li>
                                         <li class="list-group-item"><div class="zwgk-list-c"><span class="zwgk-list-name">王建军</span>县委常委，县政府常务副县长、党组副书记</div></li>
                                         <li class="list-group-item"><div class="zwgk-list-c"><span class="zwgk-list-name">王清国</span>县委常委，县政府副县长（挂职）</div></li>
                                         <li class="list-group-item"><div class="zwgk-list-c"><span class="zwgk-list-name">沈启涛</span>县政府副县长、党组成员</div></li>
                                         <li class="list-group-item"><div class="zwgk-list-c"><span class="zwgk-list-name">徐红兵</span>县政府副县长、党组成员</div></li>
                                         <li class="list-group-item"><div class="zwgk-list-c"><span class="zwgk-list-name">丁成龙</span>县政府副县长（挂职）</div></li>
                                         <li class="list-group-item"><div class="zwgk-list-c"><span class="zwgk-list-name">黄永清</span>县政府副县长（挂职）</div></li>
                                         <li class="list-group-item"><div class="zwgk-list-c"><span class="zwgk-list-name">邵&nbsp;&nbsp;&nbsp;钧</span>县政府副县长、党组成员，县公安局局长</div></li>
                                         <li class="list-group-item"><div class="zwgk-list-c"><span class="zwgk-list-name">高昌萍</span>县政府副县长</div></li>-->
                                       <@leaderListDirective pageNum=1 pageSize=20>
                                         <#list leaders as leader>
                                         <li class="list-group-item"><div class="zwgk-list-c"><span class="zwgk-list-name">${leader.name}</span>${leader.occupation}</div></li>
                                           </#list>
                                         </@leaderListDirective>
                                     </ul>
                                     <div class="thumbnail thumbnails">
                                         <a href="/topiecms/portal/channel/bfzr/21_1.htm" target="_blank"><img src="/html/jinhu-static/img/zwgk_xzf.png"></a>
                                     </div>
                                 </div>
                             </div>
                             <div class="panel panel-default panel2">
                                <div class="panel-heading panel2-t panel2-t1 fontSize18">政府信息公开专栏</div>
                                     <div class="panel-body">
                                         <div class="zwgk-alink-c">
                                             <div class="col-xs-6 col-md-12 col-lg-6">
                                                 <@channelDirective channelId=22>
                                                   <a href="${channel.url}" class="zwgk-alink">${channel.displayName}</a><!--政府信息公开指南-->
         
      </@channelDirective>
      
                                                 
                                             </div>
                                             <div class="col-xs-6 col-md-12 col-lg-6">
                                               <@channelDirective channelId=23>
                                                   <a href="${channel.url}" class="zwgk-alink">${channel.displayName}</a><!--政府信息公开制度-->
         
      </@channelDirective>
                                             </div>
                                             <div class="col-xs-6 col-md-12 col-lg-6">
                                               <@channelDirective channelId=24>
                                                   <a href="${channel.url}" class="zwgk-alink">${channel.displayName}</a><!--政府信息公开年报-->
         
      </@channelDirective>
                                             </div>
                                             <div class="col-xs-6 col-md-12 col-lg-6">
                                               <@channelDirective channelId=25>
                                                   <a href="${channel.url}" class="zwgk-alink">${channel.displayName}</a><!--依申请公开-->
         
      </@channelDirective>
                                             </div>
                                             <div class="col-xs-12">
                                               <@channelDirective channelId=27>
                                                   <a href="${channel.url}" class="zwgk-alink">${channel.displayName}</a><!--政府信息公开工作意见箱-->
         
      </@channelDirective>
                                             </div>
                                         </div>
                                         <div class="clearfix">
                                           <@channelDirective channelId=26>
                                                   <a href="${channel.url}" class="color-green fontSize16 pd2 dis-b">${channel.displayName}</a><!--政府信息公开目录-->
         
      </@channelDirective>
                                           
                                             <ul class="panel2-list">
                                               <@channelDirective channelId=85>
                                                 <li><span class="jh-dotted">·</span><a href="${channel.url}">${channel.displayName}</a></li>  
                                                 <!--县政府信息公开目录-->
         
      </@channelDirective>
                                               <@channelDirective channelId=86>
                                                 <li><span class="jh-dotted">·</span><a href="${channel.url}">${channel.displayName}</a></li>  
                                                 <!--县级部门政府信息公开目录-->
         
      </@channelDirective>
                                               <@channelDirective channelId=87>
                                                 <li><span class="jh-dotted">·</span><a href="${channel.url}">${channel.displayName}</a></li>  
                                                 <!--镇信息公开目录-->
         
      </@channelDirective>
                                         </ul>
                                     </div>
                                 </div>
                             </div>
                             <div class="text-center">
                               <@channelListDirective channelId=5 order=1 excludeIds="20,21,22,23,24,25,26,27,28,29">
                                 
                                 <div class="row zwgk-pd">
               		<#list channels as channel>
                       <#if channel_index=4> </div>
                                <div class="row zwgk-pd">
                                  </#if>
               		     <div class="col-xs-3 col-md-6 col-lg-3">
                             
                                       <a href="${channel.url}" class="btn btn-link <#if channel.displayName?length gt 4> fontSmall2</#if>">
                                          ${channel.displayName}
                                       </a>
                                   </div>
               		</#list >
                                 </div>
               		</@channelListDirective> 
                                    
                             </div>
                         </div>
                         <div class="col-md-8">
                             <div class="panel panel-default panel1">
                               <@channelDirective channelId=29>
                            <div class="panel-heading panel1-t"><a target="_blank" href="${channel.url!}" class="panel1-ton fontSize18">${channel.displayName}</a></div>
 			   </@channelDirective>
                            <div class="panel-body">
                                <table class="table table-bordered table-hover table1 text-center">
                                    <thead>
                                    <tr>
                                        <th>索引号</th>
                                        <th>信息名称</th>
                                        <th>文件编号</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                   <@pubDocListDirective channelId=29 pageSize=10 pageNum=1>
 				  <#list docs as doc>
                                   <tr>
                                       <td>${doc.infoCode!}</td>
                                       <td>${doc.title!}</td>
                                       <td>${doc.infoCode!}</td>
                                   </tr>
 				  </#list>
 				  </@pubDocListDirective>
                                         </tbody>
                                     </table>
                                 </div>
                             </div>
             		<@channelDirective channelId=28 >
                             <div class="color-green fontSize18 pd3 dis-b">${channel.displayName}</div>
             		<@channelListDirective channelId=channel.id order=1 excludeIds="211" >
                             <ul class="nav nav-tabs navTab2 navTab4 text-center" role="tablist" id="navTab1">
             			<#list channels as channel>
                                 <li role="presentation" class="${(channel_index==0)?string('active','')}"><a href="#zd${channel_index}" aria-controls="zd${channel_index}" role="tab" data-toggle="tab">${channel.displayName}</a></li>
             		    </#list>
                             </ul>
                             <!-- Tab panes -->
                             <div class="tab-content zwgk-navTab1-content">
             		<#list channels as channel>
                                 <div role="tabpanel" class="tab-pane ${(channel_index==0)?string('active','')}" id="zd${channel_index}">
                                     <a href="${channel.url}" class="color-green fontSize16 pd2 dis-b">${channel.displayName}</a>
                                     <ul class="panel2-list panel2-list-pds">
             			<@contentListDirective channelId=channel.id pageSize=6 pageNum=1 titleLeft=32 order=10>  
             			<#list contents as cmsContent>
             				<li><span class="jh-dotted">·</span><a href="${cmsContent.url}">
             				<span class="panel2-list-content">${cmsContent.title}</span>
             				<span class="panel2-list-time">${cmsContent.publishDate?string("yyyy-MM-dd")}</span></a></li>
             			</#list> 
             			</@contentListDirective>
                                     </ul>
                                 </div>
             		</#list>
                             </div>
             		</@channelListDirective>
             	    </@channelDirective >
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
             
            
           
          
         
        
       
      
     
    
   
  
 