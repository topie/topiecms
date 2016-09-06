
      <html><head lang="en">
                                  <meta charset="UTF-8">
                                  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
                                  <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
                                  <meta http-equiv="X-UA-Compatible" content="IE=9">
                                  <title>金湖政府网</title>
                                  <link href="/html/jinhu-static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                                  <link href="/html/jinhu-static/css/style.ts.css" rel="stylesheet">
                                  <!--[if lt IE 9]>
                                  <script src="/html/jinhu-static/js/html5shiv.min.js"></script>
                                  <script src="/html/jinhu-static/js/respond.min.js"></script>
                                  <![endif]-->
        <style>
               table tr{
                 height: 40px;
                 }
             </style>
                              </head>
                              <body>
      <div class="container">
          <div class="row">
              <div class="col-md-6 hd-logo">
                  <a href="#" class="thumbnail thumbnails">
                      <img src="/html/jinhu-static/img/jinhu.png">
                  </a>
              </div>
              <div class="col-md-6 hd-right">
                  <div class="row">
                      <div class="col-md-offset-1 col-md-11 col-lg-offset-2 col-lg-10">
                          <div class="row hd-pd text-center">
                              <div class="col-xs-2"><a href="#" class="thumbnail thumbnails"><img src="/html/jinhu-static/img/phone.png"></a></div>
                              <div class="col-xs-2"><a href="#" class="thumbnail thumbnails"><img src="/html/jinhu-static/img/phone1.png"></a></div>
                              <div class="col-xs-2"><a href="#" class="thumbnail thumbnails"><img src="/html/jinhu-static/img/weibo.png"></a></div>
                              <div class="col-xs-2"><a href="#" class="thumbnail thumbnails"><img src="/html/jinhu-static/img/weixin.png"></a></div>
                              <div class="col-xs-2"><a href="javascript:zh_tran('s');" class="btn btn-link zh_click" id="zh_click_s">简</a><span class="hd-span-pd color-green">|</span><a href="javascript:zh_tran('t');" class="btn btn-link zh_click" id="zh_click_t">繁</a></div>
                              <div class="col-xs-2"><a href="#" class="btn btn-link">无障碍访问</a></div>
                          </div>
                          <div class="input-group hd-btn">
                              <input class="form-control ht3em" placeholder="请输入要查找的关键词" type="text">
                              <span class="input-group-btn">
                                  <button class="btn btn-default ht3em" type="button"><span class="glyphicon glyphicon-search"></span> 搜索</button>
                              </span>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
       
       
       <div class="nav-bg">
           <div class="container mgb0">
               <div class="nav-list fontSize18 text-center clearfix row">
                   <div class="col-xs-4 col-sm-2 current"><a href="/html/jinhu/index.html">首页</a> </div>
       				     <div class="col-xs-4 col-sm-2">
       				      <a href="/topiecms/portal/channel/mljinhu/1_1.htm">美丽金湖</a>
       				      </div>
       				     <div class="col-xs-4 col-sm-2">
       				      <a href="/topiecms/portal/channel/xwzx/4_1.htm">新闻中心</a>
       				      </div>
       				     <div class="col-xs-4 col-sm-2">
       				      <a href="/topiecms/portal/channel/zwgk/5_1.htm">政务公开</a>
       				      </div>
       				     <div class="col-xs-4 col-sm-2">
       				      <a href="/topiecms/portal/channel/ggfw/6_1.htm">公共服务</a>
       				      </div>
       				     <div class="col-xs-4 col-sm-2">
       				      <a href="/topiecms/portal/channel/zmhd/7_1.htm">政民互动</a>
       				      </div>
               </div>
           </div>
       </div>
         <div class="container bg-white">
             <div class="jh-main">
                 
                 <div class="">
                     <div class="index-toff border-gray1">
                         <a href="#" class="index-ton color-green col-md-3 fontSize30">政民互动</a>
                         <#if code??>
                         <#if code="1">
                         <a href="/topiecms/portal/websurvey/form.htm?code=1" class="index-ton fontSize30">县长信箱</a>
                         
                          <#elseif code="2">
                         <a href="/topiecms/portal/websurvey/form.htm?code=2" class="index-ton fontSize30">书记信箱</a>
                         
                         <#else>
                         <a href="/topiecms/portal/websurvey/form.htm?code=3" class="index-ton fontSize30">镇或部门信箱</a>
                         </#if>
                         </#if>
                     </div>
                     <div class="row">
                         <div class="col-md-3">
                             <div class="panel panel-default panel1">
                                 <div class="panel-heading panel1-t"><a href="#" class="panel1-ton fontSize18">信件查询</a></div>
                                 <div class="panel-body">
                                     <div class="row index-jbzw text-center fontSize16">
                                        <form action="../websurvey/findOne" method="post">
                                            <div style="margin-bottom:10px">编号:<input type="text" name="id" /></div>
                                            <div style="margin-bottom:10px">密码:<input type="text" name="phone" /></div>
                                            <div><input type="submit" value="查询" /></div>
                                        </form> 
                                     </div>
                                 </div>
                             </div>
                         </div>
                        
                              
           <!--左边栏 模块结束-->
         <div class="col-md-9">
         <form name="letterForm" method="post" action="./add" onsubmit="return submitCheck(this)"><div><input name="org.apache.struts.taglib.html.TOKEN" value="1d14616d7163b7e9c56edc7e996394e3" type="hidden"></div>
         <!--主体内容栏 模块开始-->
         <div class="sub1_mid1_4_1">
          <div class="sub1_mid1_4_2">
          
          <div class="path"><!--您的当前位置：<a href="#">首页</a>&nbsp;&nbsp;&gt;&gt;&nbsp;&nbsp;<a href="#">政民互动
         </a>&nbsp;&nbsp;&gt;&gt;&nbsp;&nbsp;<a href="#">民意征集</a>--></div> 
            <!--列表 模块开始-->
           
            <div class="list2_2">
            
              <div class="ul10">
         
               <div class="space2"></div>
                          <div style="clear:both;">
           <table border="0" cellpadding="0" cellspacing="8" width="100%">
                     <input name="tmp"  style="width:99%;" value="县长信箱" type="hidden">
            <tbody><tr>
             <td width="49%">
             <table border="0" cellpadding="0" cellspacing="8" width="100%">
               <tbody><tr>
                 <td width="70">姓&nbsp;&nbsp;&nbsp;&nbsp;名:</td>
                 <td><input name="username"  type="text">          <span class="link4"> 
         *</span></td>
               </tr>
               <tr>
                 <td nowrap="">联系电话：</td>
                 <td><input value="" name="phone"  style="width:95%;" type="text">          <span class="link4"> 
         *</span></td>
               </tr>
               <tr>
                 <td>联系地址：</td>
                 <td><input name="address"  style="width:95%;" type="text"></td>
               </tr>
             </tbody></table></td>
             <td>
             <table border="0" cellpadding="0" cellspacing="8" width="100%">
               <tbody><tr>
                 <td>性&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
                 <td><input name="sex" value="M" checked="" type="radio">男
                   &nbsp;&nbsp;<input name="sex" value="W" type="radio">女
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年龄：<input  style="width:25%;" name="age" type="text">          <span class="link4"> *</span></td>
               </tr>
               <tr>
                 <td nowrap="">电子邮件：</td>
                 <td><input name="email"  style="width:95%;" type="text"></td>
               </tr>
               <tr>
                 <td nowrap="">邮政编码：</td>
                 <td><input name="postcode" value=""  style="width:95%;" type="text"></td>
               </tr>
             </tbody></table>
             </td>
            </tr>
           </tbody></table>
         
               </div>
               
             <div style="" id="democ1">
                 <table align="center" border="0" cellpadding="0" cellspacing="8" width="100%">
                   <tbody>
                     <#if code??>
                     <#if code=="1">
                        <input type="hidden" name="codeId" value="${leader.id}"/>
                         <#elseif code=="2">
                       <input type="hidden" name="codeId" value="${leader.id}"/>
                         </#if>
                       
                     <#if code="3"><tr>
                      <td width="90">
                                                                                  选择部门：
                      </td>
                       <td><select name="codeId">
                        <option>请选择...</option>
                           <#list orgs as org>
                                <option value="${org.id}">${org.name}</option>
                           </#list>          
                           </select><span class="link4"> *</span>
                         </td> </tr>
                         </#if>
                     </#if>
                  
                   <tr>
                     <td width="90">意见类型：</td>
                     <td>
                 <input name="type" value="1" checked="" type="radio">咨询
                   &nbsp;&nbsp;<input name="type" value="2" type="radio">投诉
                   &nbsp;&nbsp;<input name="type" value="3" type="radio">建议
                   &nbsp;&nbsp;<input name="type" value="4" type="radio">举报
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="isopen" value="N" type="hidden"></td>
                   </tr>
                   <tr>
                     <td width="90">主　　题：</td>
                     <td><input name="title"  style="width:99%;" type="text"></td>
                   </tr>          
                   <tr>
                     <td width="90">内　　容：</td>
                     <td><textarea rows="6" name="content"  style="width:99%;"></textarea>(即1000字)</td>
                   </tr>
                   <tr>
                     <td colspan="2" align="center" nowrap=""><input name="button" class="button1" id="button" value="提交" type="submit" />&nbsp;&nbsp;&nbsp;&nbsp;<input name="button" class="button1" id="button" value="重填" type="reset" /></td>
                     </tr>
                 </tbody></table>
               </div>   
         
         
                  
                
                 
               <div class="titlebg13">说明事项</div>
         
               <div class="text_p1 padding10_1" style="" id="democ4">1、首先感谢您对金湖的建设和发展提出宝贵意见和建议，欢迎您今后继续
         对我们的工作提出建议。<br>
         2、请您务必遵守中国相关法律和法规，不得填写具有骚扰、中伤、辱骂、恐吓、诽谤、伤害、色情、反动、迷信、危害国家安全等色彩的非
         法信息。<br>
         3、方框后加“*”号的为必填项，提交信件时不能为空白。<br>
         4、您在投诉、举报时，请务必留下真实而具体的姓名、联系方式，并详细提供有关情况，以便于有关部门进行核实处理，我们会为您的个人
         资料严格保密。<br>
         5、请您牢记信件提交后网站反馈给您的“信件编号”和“信件密码”，以便于查询信件办理进展情况和结果。<br>
         6、如果您不清楚部门的机构职能，请点击网站首页左侧的“机构职能”进行查询。<br>
         7、请您不要一信多投，也不要重复投信。<br>
               </div>
         
              
              </div>
              
            </div>
            <div class="list2_3"></div>
           </div>
           <!--列表 模块结束-->
           
          
           
           </div>
         </form>
                         </div>
                         
                   </div>
                 </div>      
                     
             
             </div>
         <!--相关链接-->
       <div class="jh-link">
               <div class="jh-link-list text-center fontSize16">
                   <div class="current col-xs-4 col-md-2">友情链接</div>
                   <div class="col-xs-4 col-md-2"><a href="#">中央部委网站</a><span class="jh-link-list-line">|</span></div>
                   <div class="col-xs-4 col-md-2"><a href="#">省（区市）网站</a><span class="jh-link-list-line hidden-sm hidden-xs">|</span></div>
                   <div class="col-xs-4 col-md-2"><a href="#">江苏省辖市网站</a><span class="jh-link-list-line">|</span></div>
                   <div class="col-xs-4 col-md-2"><a href="#">淮安市辖县区网站</a><span class="jh-link-list-line">|</span></div>
                   <div class="col-xs-4 col-md-2"><a href="#">本地网站 </a> </div>
               </div>
           </div>
        
                               </div>
      <div class="ft">
        <div class="ft-bg" style="margin: 2.5em 0 3em 0;background-color: #55a421;height: 1em;border-bottom: 3px solid #487e24;"></div>
        <div class="container">
            <div class="row">
                <div class="col-sm-offset-2 col-sm-8 col-lg-offset-3 col-lg-6 text-center fontSize16">
                    <div class="row ft-pd">
                      <div class="col-xs-2"></div>
                        <div class="col-xs-3"><a href="#" target="_blank">在线投稿</a><span class="ft-line">|</span></div>
                        <div class="col-xs-3"><a href="#" target="_blank">联系我们</a><span class="ft-line">|</span></div>
                        <div class="col-xs-3"><a href="#" target="_blank">网站地图</a></div>
                    </div>
                </div>
            </div>
            <div class="row ft-pd1">
                <div class="col-md-2">
                    
                        <div class="thumbnail thumbnails">
                         <script type="text/javascript">document.write(unescape("%3Cspan id='_ideConac' %3E%3C/span%3E%3Cscript  src='http://dcs.conac.cn/js/11/184/1349/60626310/CA111841349606263100002.js' type='text/javascript'%3E%3C/script%3E"));</script>
                    </div>
                </div>
                <div class="col-md-9 text-center">
                    <p class="mgt20"><span>&nbsp; 金湖县人民政府主办 &nbsp;</span><span>&nbsp; 金湖县互联网信息中心承办 &nbsp;</span><span>&nbsp; 地址：江苏省金湖县建设路109号（县行政中心大楼）&nbsp;</span><span>&nbsp; 热线：0517--86812345&nbsp;</span></p>
                    <p>备案：苏ICP备06024932号</p>
                </div>
                <div class="col-md-2 text-right">
                    <div class="thumbnail thumbnails">
                        <script id="_jiucuo_" sitecode="3208310001" src="http://pucha.kaipuyun.cn/exposure/jiucuo.js"></script>
                    </div>
                </div>
            </div>
        </div>
    </div>
         <script type="text/javascript" src="/html/jinhu-static/js/jquery-1.12.1.min.js"></script>
         <script type="text/javascript" src="/html/jinhu-static/js/jquery.placeholder.min.js"></script>
          <script type="text/javascript" src="/html/jinhu-static/bootstrap/js/bootstrap.min.js"></script>
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
         
        
       
      
     
    
   
  
 