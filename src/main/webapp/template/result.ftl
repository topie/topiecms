<html>
 <head>
     <#include "/template/jh-meta.ftl">
     <title>金湖政府网</title>
    
     <link href="/html/jinhu-static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
 
     <!--[if lt IE 9]>
     <script src="/html/jinhu-static/js/html5shiv.min.js"></script>
     <script src="/html/jinhu-static/js/respond.min.js"></script>
     <![endif]-->
     
 </head>
 <body>
 <table class="text_gray2" style="border:#DDDDDD 1px solid;margin-top:100px;" bgcolor="#EEF8ED" border="0" cellpadding="4" cellspacing="5" width="100%">
               <tbody><tr>
                 <td style="padding:12px;" align="center" bgcolor="#FFFFFF" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                   <tbody><tr>
                     <td class="link2" align="center">${webSurvey.title!}1</td>
                   </tr>
                   <tr>
                     <td align="center">&nbsp;</td>
                   </tr>
                 </tbody></table>
                   <table bgcolor="#AAC1A7" border="1" cellpadding="6" cellspacing="1" width="60%">
                     <tbody><tr style="height:30px;">
                       <td align="center" bgcolor="#F4FEF1" width="15%">内    容：</td>
                       <td align="center" bgcolor="#F4FEF1">${webSurvey.content!}</td>
                       </tr>
                       <tr style="height:30px;">
                       <td align="center" bgcolor="#F4FEF1" width="15%">回复时间：</td>
                       <td class="text_gray2" align="center" bgcolor="#F4FEF1">${(webSurvey.replyDate?string("yyyy-MM-dd HH:mm:ss"))!}</td>
                       </tr>
                       <tr style="height:30px;">
                       <td align="center" bgcolor="#F4FEF1" width="15%">回    复：</td>
                       <td class="text_gray2" align="center" bgcolor="#F4FEF1">${webSurvey.recontent?default("尚未回复，请耐心等待！")}</td>
                       </tr>  
		        <tr style="height:30px;">
                       <td align="center" bgcolor="#F4FEF1" width="15%">是否满意：</td>
                       <td class="text_gray2" align="center" bgcolor="#F4FEF1">
                         <#if webSurvey.isSatisfied??>
		       <label class="radio-inline">
                                <input type="radio" disabled = "disabled" name="isSatisfied" ${(webSurvey.isSatisfied=='1')?string('checked=checked','')} id="form-xb3" value="1"> 满意
                            </label>
			    <label class="radio-inline">
                                <input type="radio" disabled = "disabled" name="isSatisfied"${(webSurvey.isSatisfied=='0')?string('checked=checked','')}id="form-xb2" value="0">不满意
                            </label>
                          <#elseif isAllowedComment>
                           <label class="radio-inline">
                                <input type="radio" name="isSatisfied" id="form-xb3" value="1"> 满意
                            </label>
          <label class="radio-inline">
                                <input type="radio" name="isSatisfied" id="form-xb2" value="0">不满意
                            </label>
                            <#else>
                            <label class="radio-inline">
                                <input type="radio"  disabled = "disabled" name="isSatisfied"${(webSurvey.isSatisfied=='1')?string('checked=checked','')} id="form-xb3" value="1"> 满意
                            </label>
          <label class="radio-inline">
                                <input type="radio"  disabled = "disabled" name="isSatisfied" ${(webSurvey.isSatisfied=='0')?string('checked=checked','')} id="form-xb2" value="0">不满意
                            </label>
                          </#if>
			 </td>
                       </tr>  
                   </tbody></table>
                   <table border="0" cellpadding="0" cellspacing="0" width="100%">
                     <tbody><tr>
                       <td align="center">&nbsp;</td>
                     </tr>
           <tr>
             <td class="text_gray2" align="center"><input value="关闭" onclick="window.close()" type="button"></td>
             </tr>
                   </tbody></table></td>
               </tr>
           </tbody></table>
	   <script type="text/javascript" src="/html/jinhu-static/js/jquery-1.12.1.min.js"></script>
	   <script>
     function closewin(){   
           var browserName=navigator.appName;   
           if (browserName=="Netscape") {   
               var opened=window.open('about:blank','_self');  
               opened.opener=null;  
               opened.close();  
           } else if(browserName=="Microsoft Internet Explorer") {   
               window.opener=null;  
               window.open('','_self');   
               window.close();   
           }  
       }  
       $(function(){
            var id = '${webSurvey.id!}';
		$("input[name='isSatisfied']").bind('click',function(){
			var isSatisfied = $(this).val();
			var url="./isSatisfied?id="+id+"&isSatisfied="+isSatisfied;
			$.ajax({
				url:url,
				type:"post",
				success:function(data){
					if(data.status=='1')
					   alert("谢谢评价!");
					else{

					}
           document.location.reload();
				},
				error:function(){

				}
			});
		});
       });
     </script>
 </body>
 