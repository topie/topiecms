<!DOCTYPE html>
 <html>
 <head lang="en">
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
     <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
     <meta http-equiv="X-UA-Compatible" content="IE=9" />
     <title>${site.displayName!}</title>
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
                 <div class="fontSize18 pd3 color-green">领导之窗</div>
                 <div class="panel panel-default panel1">
                     <div class="panel-heading panel1-t"><a href="javascript:void(0);" class="panel1-ton fontSize18">县政府</a></div>
                     <ul class="fontSize12 zwgk-ld-list">
                         <@leaderListDirective pageNum=1 pageSize=20>
                         <#list leaders as leader>
                         <li class="active"><a href="javascript:void(0)" onclick="toSelf('${leader.id}');"><span class="fontSize14 zwgk-ld-span">${leader.name}</span>${leader.occupation}</a></li>
                         </#list>
                         </@leaderListDirective>
                         
                     </ul>
                 </div>
             </div>
             <div class="col-md-8" id="leader">
                 
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
 function toSelf(id)
     {
         $("#leader").load("../../leader/leaderfront?id="+id);
     }
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
          $("#leader").load("../../leader/leaderfront?id=${param!}");
    });
     
 </script>
 </body>
 </html>
 