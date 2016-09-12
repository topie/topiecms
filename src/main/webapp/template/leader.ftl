<div class="fontSize18 zwgk-ld-t">县政府</div>
                <div class="zwgk-ld-list1" >
                    <div class="zwgk-ld-name clearfix"><span class="fontSize22">姓名：${leader.name}</span><a href="/topiecms/portal/websurvey/form.htm?leadId=${leader.id}"><button class="btn btn-default btn-download"><span class="glyphicon glyphicon-envelope"></span><span>&nbsp; 给我写信 &nbsp;</span></button></a></div>
                    <p class="fontSize16">职务：${leader.occupation}</p>
                    <p>分工：${leader.division}</p>
                </div>
                <div class="fontSize16 pd4 color-green">相关新闻</div>
                <ul class="panel2-list panel2-list-pd news-list2">
		<#list news as ne>
			<#if ne_index lt 4>
                    <li><a href="${ne.url}"><span class="panel2-list-content">${ne.title}</span><span class="panel2-list-time">${ne.publishDate}</span></a></li>
		    </#if>
		</#list>
                   
                </ul>