<!DOCTYPE html>
  <html>
  <head lang="en">
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
      <meta http-equiv="X-UA-Compatible" content="IE=9" />
      <title>${site.displayName}-${cmsVote.title!}</title>
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
      <div class="jh-main">
          <div class="panel panel-default panel2">
              <div class="panel-heading panel2-t panel2-t1 fontSize18">政府信息公开专栏</div>
              <div class="panel-body">
                  <div class="jh-article-title fontSize22 text-center color-green pdTop1em2"><span>${cmsVote.title!}</span></div>
                  <div class="jh-article-info text-center">
                      <span>共有&nbsp;&nbsp;&nbsp;&nbsp;${voteTimes!}&nbsp;&nbsp;&nbsp;&nbsp;人投票</span>
                  </div>
                  <div class="pd6 row">
                      <div class="col-lg-offset-2 col-lg-8 col-md-offset-1 col-md-10">
  		    <form id="toupiao">
  			<input type="hidden" value="${cmsVote.id}" name="voteId">
                          <ul class="zmhd-wsdc-dlist">
  			<#list options as option>
  			<li><a href="javascript:void(0);" data-id="${option.id}"><span class="border-gray"><span class="glyphicon glyphicon-ok color-green"></span></span>${option.option!}</a> </li>	
  			    </#list>
                          </ul>
  			</form>
                          <div class="pdTop1em2">
                              <div class="text-center">
                                  <button class="btn btn-default btn-download1 submit" id="clickbut">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;投&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;票&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
                              </div>
                              <div class="text-center pdTop1em21">
                                  <a class="btn btn-default btn-download result" href="${cmsVote.id}r.htm" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;查看结果&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                              </div>
                          </div>
                      </div>
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
  	var result = true;
  	var type = '${cmsVote.checkType!}';
  	var voteId = '${cmsVote.id}';
  	var url ='/${projectName}/portal/vote/click.do';
      $(function () {
          $('input, textarea').placeholder();
  	if(type=='radio'){
  		$('.zmhd-wsdc-dlist a').click(function(){
  		$('ul[class="zmhd-wsdc-dlist"]').find("a").removeClass("active");
  	            $(this).addClass('active');
  	    });
  	}
  	if(type=="checkbox"){
  		 $('.zmhd-wsdc-dlist a').click(function(){
  		
              $(this).toggleClass('active');
          });
  	}
  	$('#result').click(function(){
  		window.location.htef=voteId+"r.htm";
  
  	});
          $('#clickbut').click(function(){
  		if(result){
  		var optionIds = "";
  			$('ul[class="zmhd-wsdc-dlist"]').find('a[class="active"]').each(function(){
  				optionIds+=","+$(this).data("id");
  			});
  			if(optionIds==''){
  			alert("请选择");
  			return false;
  			}
  			optionIds=optionIds.substr(1);
  			var data={voteId:voteId,optionIds:optionIds};
  			$.ajax({
  				url:url,
  				data:data,
  				type:'POST',
  				success:function(res){
  					if(res.status=='1'){
  						result=false;
  					}
  					alert(res.msg);
  					
  				}
  			})
  		}else{
  			alert("您已经投票成功!");
  		}
  	});
      });
  
     
  </script>
  </body>
  </html>
  
 