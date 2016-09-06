<ol class="breadcrumb fontSize16 jh-breadcrumb jh-breadcrumbn">
<@channelListDirective channelId=own order=1 excludeIds="8,211">
     <#list channels as channel>
	 <li><span class="jh-dotted">·</span><a href="${channel.url}">${channel.displayName}</a></li>
     </#list>
</@channelListDirective>
</ol>