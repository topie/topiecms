<ol class="breadcrumb fontSize16 jh-breadcrumb jh-breadcrumbn">
     <@channelListDirective channelId=own order=1 excludeIds="25,30,34,37,36,26,8,211,20,21,29,45,46,47,57,58,59,60,61,28,225">
          <#list channels as channel>
     	 <li><span class="jh-dotted">·</span><a href="${channel.url}" target="_blank">${channel.displayName}</a></li>
          </#list>
     </@channelListDirective>
     </ol>
     
    
   
  
 