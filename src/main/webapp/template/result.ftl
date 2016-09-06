<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=9" />
    <title></title>
   
    <link href="/html/jinhu-static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
   

    <!--[if lt IE 9]>
    <script src="/html/jinhu-static/js/html5shiv.min.js"></script>
    <script src="/html/jinhu-static/js/respond.min.js"></script>
    <![endif]-->
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
    </script>
</head>
<body>
  <#if webSurvey??>
<table class="text_gray2" style="border:#DDDDDD 1px solid;margin-top:100px;" bgcolor="#EEF8ED" border="0" cellpadding="4" cellspacing="5" width="100%">
              <tbody><tr>
                <td style="padding:12px;" align="center" bgcolor="#FFFFFF" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody><tr>
                    <td class="link2" align="center">${webSurvey.title!}</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                  </tr>
                </tbody></table>
                  <table bgcolor="#AAC1A7" border="1" cellpadding="6" cellspacing="1" width="60%">
                    <tbody><tr style="height:30px;">
                      <td align="center" bgcolor="#F4FEF1" width="15%">内    容：</td>
                      <td align="center" bgcolor="#F4FEF1">${webSurvey.content}</td>
                      </tr>
                      <tr style="height:30px;">
                      <td align="center" bgcolor="#F4FEF1" width="15%">回复时间：</td>
                      <td class="text_gray2" align="center" bgcolor="#F4FEF1">${(webSurvey.replyDate?string("yyyy-MM-dd HH:mm:ss"))!}</td>
                      </tr>
                      <tr style="height:30px;">
                      <td align="center" bgcolor="#F4FEF1" width="15%">回    复：</td>
                      <td class="text_gray2" align="center" bgcolor="#F4FEF1">${webSurvey.recontent?default("尚未回复，请耐心等待！")}</td>
                      </tr>  
                  </tbody></table>
                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody><tr>
                      <td align="center">&nbsp;</td>
                    </tr>
          <tr>
            <td class="text_gray2" align="center"><input value="关闭" onclick="closewin()" type="button"></td>
            </tr>
                  </tbody></table></td>
              </tr>
          </tbody></table>
          <#else>
          <table class="text_gray2" style="border:#DDDDDD 1px solid;margin-top:100px;" bgcolor="#EEF8ED" border="0" cellpadding="4" cellspacing="5" width="100%">
              <tbody><tr>
                <td style="padding:12px;" align="center" bgcolor="#FFFFFF" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody><tr>
                    <td class="link2" align="center">未找到您的信箱</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                  </tr>
                </tbody></table>
          </#if>
</body>