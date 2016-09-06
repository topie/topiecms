<!DOCTYPE html>
        <html>
        <head lang="en">
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
            <meta http-equiv="X-UA-Compatible" content="IE=9" />
            <title></title>
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
                <div class="fontSize18 new-list2-t">在线访谈</div>
        		<@interviewListDirective channelId=51 pageSize=10 pageNum=channel.pageNum>
                <table class="table table-bordered table-hover table1">
                    <thead>
                    <tr>
                        <th class="text-center">访谈标题</th>
                        <th class="text-center">邀请嘉宾</th>
                        <th class="text-center">访谈时间</th>
                    </tr>
                    </thead>
                    <tbody>
        			
        				<#list cmsVotes as v>
                    <tr>
                        <td>${v.title!}</td>
                        <td>${v.guests!}</td>
                        <td class="text-center">${v.startTime?substring(0,10)}</td>
                    </tr>
        				</#list>
                    
                    </tbody>
                </table>
                <div class="text-right new-page">
                   ${pagination!}
                </div>
        		</@interviewListDirective>
            
                <#include "/template/jh-links.ftl">
       </div>
        <#include "/template/jh-footer.ftl">
          </div>
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
        
       
      
     
    
   
  
 