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
                            <div class="panel panel-default panel1">
                    	<@channelDirective channelId=38>
                                <div class="panel-heading panel1-t"><a href="${channel.url}" class="panel1-ton fontSize18">${channel.displayName}</a></div>
                    	</@channelDirective  >
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <form class="form-horizontal ggfw-form">
                                                <div class="form-group">
                                                    <label class="col-xs-3 col-md-4 control-label color-green">办件号</label>
                                                    <div class="col-xs-9 col-md-8">
                                                        <input type="text" class="form-control" placeholder="请输入办件号">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-xs-3 col-md-4 control-label color-green">证件号</label>
                                                    <div class="col-xs-9 col-md-8">
                                                        <input type="text" class="form-control" placeholder="请输入证件号">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-xs-12">
                                                        <button type="submit" class="btn btn-lg btn-block fontSize14">办件查询</button>
                                                    </div>
                                                </div>
                                            </form>
                                            <div class="color-green fontSize16 pd2 dis-b">办件统计</div>
                                            <ul class="panel2-list panel2-list-pd fontSize12 ggfw-panel2">
                                                <li><span class="panel2-list-content">累积收件</span><span class="panel2-list-time"><span class="color-green">170311</span>&nbsp; 件</span></li>
                                                <li><span class="panel2-list-content">累积办件</span><span class="panel2-list-time"><span class="color-green">13746</span>&nbsp; 件</span></li>
                                                <li><span class="panel2-list-content">当年收件</span><span class="panel2-list-time"><span class="color-green">12134</span>&nbsp; 件</span></li>
                                                <li><span class="panel2-list-content">当年办件</span><span class="panel2-list-time"><span class="color-green">1447</span>&nbsp; 件</span></li>
                                                <li><span class="panel2-list-content">昨日收件</span><span class="panel2-list-time"><span class="color-green">1245</span>&nbsp; 件</span></li>
                                                <li><span class="panel2-list-content">昨日办件</span><span class="panel2-list-time"><span class="color-green">345</span>&nbsp; 件</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-9 pdTop1em">
                                            <table class="table table-bordered table-hover table1 fontSize12">
                                                <thead>
                                                <tr>
                                                    <th>办件编号</th>
                                                    <th>办件单位</th>
                                                    <th>受理事项</th>
                                                    <th>状态</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>201606080022</td>
                                                    <td>金翠香（金湖县金</td>
                                                    <td>环境影响报告表审批</td>
                                                    <td>已办结</td>
                                                </tr>
                                                <tr>
                                                    <td>201606080022</td>
                                                    <td>金翠香（金湖县金</td>
                                                    <td>环境影响报告表审批</td>
                                                    <td>已办结</td>
                                                </tr>
                                                <tr>
                                                    <td>201606080022</td>
                                                    <td>金翠香（金湖县金</td>
                                                    <td>环境影响报告表审批</td>
                                                    <td>已办结</td>
                                                </tr>
                                                <tr>
                                                    <td>201606080022</td>
                                                    <td>金翠香（金湖县金</td>
                                                    <td>环境影响报告表审批</td>
                                                    <td>已办结</td>
                                                </tr>
                                                <tr>
                                                    <td>201606080022</td>
                                                    <td>金翠香（金湖县金</td>
                                                    <td>环境影响报告表审批</td>
                                                    <td>已办结</td>
                                                </tr>
                                                <tr>
                                                    <td>201606080022</td>
                                                    <td>金翠香（金湖县金</td>
                                                    <td>环境影响报告表审批</td>
                                                    <td>已办结</td>
                                                </tr>
                                                <tr>
                                                    <td>201606080022</td>
                                                    <td>金翠香（金湖县金</td>
                                                    <td>环境影响报告表审批</td>
                                                    <td>已办结</td>
                                                </tr>
                                                <tr>
                                                    <td>201606080022</td>
                                                    <td>金翠香（金湖县金</td>
                                                    <td>环境影响报告表审批</td>
                                                    <td>已办结</td>
                                                </tr>
                                                <tr>
                                                    <td>201606080022</td>
                                                    <td>金翠香（金湖县金</td>
                                                    <td>环境影响报告表审批</td>
                                                    <td>已办结</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row text-center fontSize16">
                                <div class="col-md-4">
                                    <div class="ggfw-list-bg">
                                      <@channelDirective channelId=40>
                  
                                      <a href="${channel.url}" target="_blank" style="color:white;">
                                        <div class="ggfw-list-bg1">
                                         ${channel.displayName}
                                        </div>
                                        </a>
                  </@channelDirective>
                                    </div>
                                </div>
                                <div class="col-md-8 pdTop1em">
                                    <div class="ggfw-list-bg">
                                        <div class="row">
                                           <@channelDirective channelId=39>
                                         
                                            <div class="col-xs-3">
                                              <a href="${channel.url}" target="_blank" style="color:white;">
                                                <div class="ggfw-list-bg1">
                                                   ${channel.displayName}<!-- 五项清单-->
                                                </div>
                                                </a>
                                            </div>
                                            <div class="col-xs-9 fontSize14">
                                                <div class="row ggfw-list-pd">
                                                  <@channelListDirective channelId =channel.id >
                                                    <#list channels as channel>
                                                      <div class="col-xs-6 col-md-3">
                                                        <a target="_blank"  href="${channel.url}">${channel.displayName}</a>
                                                    </div>
                                                      </#list>
                  </@channelListDirective>
                                                    
                                                </div>
                                            </div>
                                             </@channelDirective>
                                        </div>
                                    </div>
                                </div>
                            </div>
                          <@channelDirective channelId=41>
                            <a href="${channel.url}" target="_blank">
                            <div class="color-green fontSize18 pd5 dis-b">${channel.displayName}</div></a>
                            </@channelDirective>
                            <div class="row">
                                <div class="col-md-9">
                                    <div class="clearfix">
                    		<@channelListDirective channelId=41>
                                        <ul class="nav nav-tabs navTab2 navTab4 navTab5 text-center" role="tablist" id="navTab1">
                    		    <#list channels as channel>
                                            <li role="presentation" class="${(channel_index==0)?string('active','')}"><a href="#zd${channel_index}" aria-controls="zd${channel_index}" role="tab" data-toggle="tab">${channel.displayName}</a></li>
                    		     </#list>
                                        </ul>
                                        <!-- Tab panes -->
                                        <div class="tab-content ggfw-navTab1-content">
                    		   <#list channels as channel>
                    			<div role="tabpanel" class="tab-pane ${(channel_index==0)?string('active','')}" id="zd${channel_index}">
                    			<@channelListDirective channelId=channel.id>
                    			<!-- Nav tabs -->
                                                <ul class="nav nav-tabs navTab6 text-center" role="tablist" id="navTab${channel_index}s">
                    				<#list channels as childchannel>
                    				<li role="presentation" class="${(childchannel_index==0)?string('active','')}">
                    					<a href="#child${channel_index}_${childchannel_index}" aria-controls="child${channel_index}_${childchannel_index}" role="tab" data-toggle="tab" aria-expanded="${(childchannel_index==0)?string('true','false')}">${childchannel.displayName}</a></li>	
                    				</#list>
                    			   </ul>
                                                <!-- Tab panes -->
                                                <div class="tab-content navTab1-content navTab3-content pTextIndent">
                    			    <#list channels as childchannel>
                                                    <div role="tabpanel" class="tab-pane ${(childchannel_index==0)?string('active','')}" id="child${channel_index}_${childchannel_index}">
                                                        <ul class="panel2-list">
                    					
                    						<@contentListDirective channelId=childchannel.id>
                    						<#list contents as content>
                    						<li><span class="jh-dotted">·</span><a target="_blank"  href="${content.url}">${content.title}</a></li>
                    						</#list>
                    						</@contentListDirective>	
                    					
                    				    </ul>
                    				</div>
                    				</#list>
                    			    </div>
                    			</@channelListDirective>
                                        </div>
                    		    </#list>
                    		    </div>
                    		</@channelListDirective>
                                    </div>
                                    <div class="borderTopDotted clearfix">
                    			
                                        <div class="col-sm-2 ggfw-cycx1 box-center color-green">
                                          <div><span class="ggfw-cycx1-circle"><span class="glyphicon glyphicon-search"></span></span> <span>常用查询</span></div>
                                                                              </div>
                                                                              <div class="col-sm-10 ggfw-cycx2">
                                                                                  <div class="row ggfw-btn-pd ggfw-btn-pd1 text-center">
                                                                                      <div class="col-xs-4 col-md-2">
                                                                                          <a href="/html/jinhu/ggfw/cycx/content/456.html" target="_blank" class="ggfw-btn">便民电话</a>
                                                                                      </div>
                                                                                      <div class="col-xs-4 col-md-2">
                                                                                          <a href="http://www.hagjj.com/main.asp" title="公积金查询" target="_blank" class="ggfw-btn">公积金查询</a>
                                                                                      </div>
                                                                                      <div class="col-xs-4 col-md-2">
                                                                                          <a href="http://www.ip138.com/weizhang.htm" title="车辆违章" target="_blank" class="ggfw-btn">车辆违章</a>
                                                                                      </div>
                                                                                      <div class="col-xs-4 col-md-2">
                                                                                        <@channelDirective channelId=43>
                                                                                          <a href="${channel.url}" target="_blank" class="ggfw-btn">供电信息</a>
                                                                                          </@channelDirective>
                                                                                      </div>
                                                                                      <div class="col-xs-4 col-md-2">
                                                                                          <a href="http://ggfw.jshrss.gov.cn/gzcx/sys/viewCard.action" target="_blank" class="ggfw-btn">城乡养老</a>
                                                                                      </div>
                                                                                      <div class="col-xs-4 col-md-2">
                                                                                          <a href="http://www.ip138.com/" title="IP归属" target="_blank" class="ggfw-btn">IP专属</a>
                                                                                      </div>
                                                                                      <div class="col-xs-4 col-md-2">
                                                                                          <a href="http://life.hao123.com/shfw" title="话费查询" target="_blank" class="ggfw-btn">话费查询</a>
                                                                                      </div>
                                                                                      <div class="col-xs-4 col-md-2">
                                                                                          <a href="/html/jinhu/ggfw/cycx/content/457.html" class="ggfw-btn" target="_blank">公路客运</a>
                                                                                      </div>
                                                                                      <div class="col-xs-4 col-md-2">
                                                                                          <a href="http://www.jinhurc.com" title="金湖人才网" target="_blank" class="ggfw-btn">人才招牌</a>
                                                                                      </div>
                                                                                      <div class="col-xs-4 col-md-2">
                                                                                          <a  href="http://218.2.15.138:8090/socialSecurity/login.jsp" title="社保查询" target="_blank" class="ggfw-btn">社会保障</a>
                                                                                      </div>
                                                                                      <div class="col-xs-4 col-md-2">
                                                                                          <a href="http://www.hao123.com/ss/lccx.htm" title="火车时刻" target="_blank" class="ggfw-btn">火车时刻</a>
                                                                                      </div>
                                                                                      <div class="col-xs-4 col-md-2">
                                                                                          <a href="http://www.weather.com.cn/html/weather/101190902.shtml" title="天气预报" target="_blank" class="ggfw-btn">天气预报</a>
                                                                                      </div>
                                           <!-- <div><span class="ggfw-cycx1-circle"><span class="glyphicon glyphicon-search"></span></span> <span>常用查询</span></div>
                                        </div>
                                        <div class="col-sm-10 ggfw-cycx2">
                                            <div class="row ggfw-btn-pd ggfw-btn-pd1 text-center">
                                                <div class="col-xs-4 col-md-2">
                                                    <a href="#" class="ggfw-btn">便民电话</a>
                                                </div>
                                                <div class="col-xs-4 col-md-2">
                                                    <a href="#" class="ggfw-btn">公积金查询</a>
                                                </div>
                                                <div class="col-xs-4 col-md-2">
                                                    <a href="#" class="ggfw-btn">车辆违章</a>
                                                </div>
                                                <div class="col-xs-4 col-md-2">
                                                    <a href="#" class="ggfw-btn">供电信息</a>
                                                </div>
                                                <div class="col-xs-4 col-md-2">
                                                    <a href="#" class="ggfw-btn">城乡养老</a>
                                                </div>
                                                <div class="col-xs-4 col-md-2">
                                                    <a href="#" class="ggfw-btn">IP专属</a>
                                                </div>
                                                <div class="col-xs-4 col-md-2">
                                                    <a href="#" class="ggfw-btn">话费查询</a>
                                                </div>
                                                <div class="col-xs-4 col-md-2">
                                                    <a href="#" class="ggfw-btn">公路客运</a>
                                                </div>
                                                <div class="col-xs-4 col-md-2">
                                                    <a href="#" class="ggfw-btn">人才招牌</a>
                                                </div>
                                                <div class="col-xs-4 col-md-2">
                                                    <a href="#" class="ggfw-btn">社会保障</a>
                                                </div>
                                                <div class="col-xs-4 col-md-2">
                                                    <a href="#" class="ggfw-btn">火车时刻</a>
                                                </div>
                                                <div class="col-xs-4 col-md-2">
                                                    <a href="#" class="ggfw-btn">天气预报</a>
                                                </div>-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 pdTop1em">
                                    <div class="panel panel-default panel2">
                    		<@channelDirective channelId=43>
                                        <div class="panel-heading panel2-t fontSize18"><a href="${channel.url}" target="_blank" >${channel.displayName}</a></div>
                                        <div class="panel-body">
                                            <ul class="panel2-list panel2-list-sm">
                    			<@contentListDirective channelId=channel.id pageSize=5 titleLeft=10>
                    			<#list contents as content>
                                                <li><span class="jh-dotted">·</span><a target="_blank" href="${content.url}" target="_blank" >${content.title}</a></li> 
                    			</#list>
                    			</@contentListDirective>
                                            </ul>
                                        </div>
                    		</@channelDirective >
                                    </div>
                    		<@channelDirective channelId=42>
                                    <div class="color-green fontSize18 pd2 dis-b">${channel.displayName}</div>
                                    <div class="row ggfw-lstd-pd">
                    		<@channelListDirective channelId=channel.id>
                    		<#list channels as cchannel>
                                        <div class="col-xs-3">
                                            <a href="${cchannel.url} " target="_blank" class="thumbnail thumbnails text-center">
                                                <img src="${cchannel.channelIcon!}">
                                                <p>${cchannel.displayName}</p>
                                            </a>
                                        </div>
                    		   </#list>
                    		   </@channelListDirective>
                                    </div>
                    		</@channelDirective>
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
                            $('#navTab0s a').click(function (e) {
                                e.preventDefault();
                                $(this).tab('show');
                            });
                            $('#navTab1s a').click(function (e) {
                                e.preventDefault();
                                $(this).tab('show');
                            });
                            $('#navTab2s a').click(function (e) {
                                e.preventDefault();
                                $(this).tab('show');
                            });
                            $('#navTab3s a').click(function (e) {
                                e.preventDefault();
                                $(this).tab('show');
                            });
                            $('#navTab4s a').click(function (e) {
                                e.preventDefault();
                                $(this).tab('show');
                            });
                            $('#navTab5s a').click(function (e) {
                                e.preventDefault();
                                $(this).tab('show');
                            });
                            $('#navTab6s a').click(function (e) {
                                e.preventDefault();
                                $(this).tab('show');
                            });
                            $('#navTab7s a').click(function (e) {
                                e.preventDefault();
                                $(this).tab('show');
                            });
                            $('#navTab8s a').click(function (e) {
                                e.preventDefault();
                                $(this).tab('show');
                            });
                            $('#navTab9s a').click(function (e) {
                                e.preventDefault();
                                $(this).tab('show');
                            });
                            $('#navTab10s a').click(function (e) {
                                e.preventDefault();
                                $(this).tab('show');
                            });
                            $('#navTab11s a').click(function (e) {
                                e.preventDefault();
                                $(this).tab('show');
                            });
                            $('#navTab12s a').click(function (e) {
                                e.preventDefault();
                                $(this).tab('show');
                            });
                            $('.ggfw-navTab1-content').height($('.navTab5').height()-1);
                            $('.ggfw-cycx1').height($('.ggfw-cycx2').height()-1);
                            $(window).resize(function() {
                                $('.ggfw-navTab1-content').height($('.navTab5').height()-1);
                                $('.ggfw-cycx1').height($('.ggfw-cycx2').height()-1);
                            });
                        });
                    </script>
                    </body>
                    </html>
                    
                   
                  
                 
                
               
              
             
            
           
          
         
        
       
      
     
    
   
  
 