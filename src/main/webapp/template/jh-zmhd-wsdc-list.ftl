<!DOCTYPE html>
    <html>
    <head lang="en">
         <#include "/template/jh-meta.ftl">
        <title>${site.displayName!}-${channel.diaplyName!}</title>
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
                    <div class="panel panel-default panel1">
    		<@channelDirective channelId=channel.pid>
    		<div class="panel-heading panel1-t"><a href="${channel.url!}" class="panel1-ton fontSize18">${channel.displayName}</a></div>
    		</@channelDirective>
                    <ul class="fontSize16 zmhd-wsdc-list">
    		<@channelDirective channelId=52>
                        <li class="${(channel.id==own)?string('active','')}">
    		    <a href="${channel.url}"><span class="glyphicon glyphicon-play-circle"></span>${channel.displayName}</a> </li>
    		</@channelDirective> 
    		<@channelDirective channelId=53>
                        <li class="${(channel.id==own)?string('active','')}">
    		    <a href="${channel.url}"><span class="glyphicon glyphicon-play-circle"></span>${channel.displayName}</a> </li>
    		</@channelDirective> 
    		<@channelDirective channelId=54>
                        <li class="${(channel.id==own)?string('active','')}">
    		    <a href="${channel.url}"><span class="glyphicon glyphicon-play-circle"></span>${channel.displayName}</a> </li>
    		</@channelDirective> 
    		<@channelDirective channelId=50>
                        <li class="${(channel.id==own)?string('active','')}">
    		    <a href="${channel.url}"><span class="glyphicon glyphicon-play-circle"></span>${channel.displayName}</a> </li>
    		</@channelDirective> 
                    </ul>
                    </div>
                </div>
                <div class="col-md-8">
    	    <@channelDirective channelId=own>
                    <div class="fontSize18 new-list2-t">${channel.displayName}</div>
    		</@channelDirective >
                  <#if own==52>
   			<@voteListDirective channelId=own pageSize=15>
   			 <ul class="panel2-list panel2-list-pd news-list2"> 
   				<#list cmsVotes as vote>
   					<li><a target="_blank" href="${vote.filed1}"><span class="panel2-list-content">
   					${vote.title}</span><span class="panel2-list-time">${vote.publishTime?substring(0,10)}</span></a></li>
   				</#list>
   				</ul>
   				${pagination} 
   			</@voteListDirective>
   		</#if>
   		<#if own!=52>
    		<@contentListDirective channelId=own pageSize=channel.pageSize pageNum=pageNum titleLeft=32 order=10> 
                    <ul class="panel2-list panel2-list-pd news-list2"> 
    		<#list contents as cmsContent>
    		<li><a target="_blank" href="${cmsContent.url}"><span class="panel2-list-content">
    		${cmsContent.title}</span><span class="panel2-list-time">${cmsContent.publishDate?string("yyyy-MM-dd")}</span></a></li>
    		</#list> 
                    </ul>
    		${pagination} 
    		</@contentListDirective>
            </#if>       
                </div>
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
    
   
  
 