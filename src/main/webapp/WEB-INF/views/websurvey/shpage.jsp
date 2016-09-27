<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tlds/c.tld" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>后台管理 | 信箱信息管理和发布</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>assets/global/plugins/bootstrap-select/bootstrap-select.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>assets/global/plugins/select2/select2.css" />
<%@include file="../includejsps/style.jsp"%>
<%@include file="../includejsps/plugin-style.jsp"%>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-menu-fixed" class to set the mega menu fixed  -->
<!-- DOC: Apply "page-header-top-fixed" class to set the top menu fixed  -->
<body>
	<!-- BEGIN HEADER -->
	<%@include file="../includejsps/head.jsp"%>
	<!-- END HEADER -->
	<!-- BEGIN PAGE CONTAINER -->
	<%-- <div class="page-container">
		<!-- BEGIN PAGE HEAD -->
		<div class="page-head">
			<div class="container">
				<!-- BEGIN PAGE TITLE -->
				<div class="page-title">
					<h1>内容信息管理</h1>
				</div>
				<!-- END PAGE TITLE -->
				<!-- BEGIN PAGE TOOLBAR -->
				<%@include file="../includejsps/toolbar.jsp"%>
				<!-- END PAGE TOOLBAR -->
			</div>
		</div> --%>
		<!-- END PAGE HEAD -->
		<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">
			<div class="container">
				<!-- BEGIN PAGE CONTENT INNER -->
				<div class="row margin-top-10">
					<div class="col-md-3 col-sm-12">
						<div class="row">
							<div class="col-md-12 col-sm-12">
								<!-- BEGIN PORTLET-->
								
								<!-- END PORTLET-->
							</div>
						</div>
					</div>
					<div class="col-md-12 col-sm-12">
						<!-- BEGIN PORTLET-->
						<div class="portlet light">
							<div class="portlet-title">
								<div class="caption caption-md">
									<i class="icon-bar-chart theme-font hide"></i> <span
										class="caption-subject theme-font bold uppercase">信箱信息管理</span>
									<span class="caption-helper"></span>
								</div>
							</div>
							<div class="portlet-body" id="content_grid"></div>
						</div>
						<!-- END PORTLET-->
					</div>
				</div>
				<!-- END PAGE CONTENT INNER -->
			</div>
		</div>
		<!-- END PAGE CONTENT -->
	</div>
	<input type="hidden" id="isShowIp" value="${isShowIp}" />
	<!-- END PAGE CONTAINER -->
	<!-- BEGIN FOOTER -->
	<%@include file="../includejsps/foot.jsp"%>
	<!-- END FOOTER-->
	<!-- BEGIN JAVASCRIPTS-->
	<%@include file="../includejsps/js.jsp"%>
	<%@include file="../includejsps/plugin-js.jsp"%>
	<script type="text/javascript"
		src="<%=basePath%>assets/global/plugins/bootstrap-select/bootstrap-select.min.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>assets/global/plugins/select2/select2.min.js"></script>
     
	<script type="text/javascript">
	/**********普通内容操作函数****************/
	
	function dateTostr(utc)
{
	if(utc)
		{
     var date = new Date(utc);
     return date.getFullYear()+"-"+((date.getMonth()+1)>10?date.getMonth()+1:"0"+(date.getMonth()+1))+"-"+(date.getDate()>10?date.getDate():"0"+date.getDate())+" "+(date.getHours()>10?date.getHours():"0"+date.getHours())+":"+(date.getMinutes()>10?date.getMinutes():"0"+date.getMinutes())+":"+(date.getSeconds()>10?date.getSeconds():"0"+date.getSeconds());
   }
}
	
	function check(ids,state) {
		if (ids.length > 0) {
					$.ajax({
						type : "POST",
						dataType : "json",
						data:{id:ids},
						url : "./check?id="+ids+"&state="+state,
						success : function(data) {
							if (data.status == 1) {
								grid.reload();
								alert(data.msg);
							}
						}
					});
				}
		}
	
	var modal;
	function deleteItems(ids) {
		if (ids.length > 0) {
			bootbox.confirm("确定删除吗？", function(result) {
				if (result) {
					$.ajax({
						type : "POST",
						dataType : "json",
						data:{id:ids},
						url : "./delete",
						success : function(data) {
							if (data.status == 1) {
								grid.reload();
								alert(data.msg);
							}
						}
					});
				}
			});
		} else {
			bootbox.alert("请选择要删除的选项！");
		}
	}
	function sortfun (i,c,title){
		seqModal = $.dmModal({
			id : "seqForm",
			title : "编辑顺序-"+title,
			distroy : true,
			width:"800px"
		});
		seqModal.show();
		if(currentChannelType=='0')
		{
		url = "../content/sort";
		}
		else if(currentChannelType=='5')
		{
		url = "../video/sort";	
		}
		else if(currentChannelType=='6')
		{
		url = "../audio/sort";	
		}
		else if(currentChannelType=='7')
		{
		url = "../novel/sort";	
		}
		var seqForm = seqModal.$body.dmForm(getSeqFormOpts(url));
		c.seq = '';
		seqForm.loadLocal(c);
	}
	var replyModal;
	//form
	var replyForm = {
			id : "reply_form",//表单id
			name : "sort_form",//表单名
			method : "post",//表单method
			action : "./updateRecontent",//表单action
			ajaxSubmit : true,//是否使用ajax提交表单
			labelInline : true,
			rowEleNum : 1,
			beforeSubmit : function() {
				
			},
			ajaxSuccess : function() {
				modal.hide();
				grid.reload();
			},
			submitText : "保存",//保存按钮的文本
			showReset : true,//是否显示重置按钮
			resetText : "重置",//重置按钮文本
			isValidate : true,//开启验证
			buttons : [ {
				type : 'button',
				text : '关闭',
				handle : function() {
					modal.hide();
				}
			} ],
			buttonsAlign : "center",
			//表单元素
			items : [
					{
						type : 'hidden',
						name : 'id',
						id : 'id'
					},
					{
						type : 'textarea',//类型
						name : 'recontent',//name
						id : 'recontent',//id
						label : '回复',//左边label
						cls : 'input-large'
					}]
	}
	var cutOrCopyModal;
	function cutOrCopyfun(ids,title,checkType,url){
		if (ids.length > 0) {
			cutOrCopyModal = $.dmModal({
				id : "cutCopyForm",
				title : title,
				distroy : true
			});
			cutOrCopyModal.show();
			var form = cutOrCopyModal.$body.dmForm(getcutOrCopyForm(checkType,url));
			form.setValue("ids",ids);
		} else {
			bootbox.alert("请选择要"+title+"的项！");
		}
	}
		var showopt={
				id : "show_form",//表单id
				name : "show_form",//表单名
				method : "post",//表单method
				//action : "",//表单action
				ajaxSubmit : false,//是否使用ajax提交表单
				labelInline : true,
				rowEleNum : 1,
				beforeSubmit : function() {

				},
				ajaxSuccess : function() {
					modal.hide();
					grid.reload();
				},
				buttons : [ {
					type : 'button',
					text : '关闭',
					handle : function() {
						modal.hide();
					}
				} ],
				buttonsAlign : "center",
				//表单元素
				items : [
						{
							type : 'display',
							name : 'username',
							label : '姓名',//左边label
							format : function(c) {
								if (c) {
									return c;
								}
								else
									{
									return "";
									}
							}
						},
						{
							type : 'display',
							name : 'phone',
							label : '手机',
							format : function(c) {
								if (c) {
									return c;
								}
								else
									{
									return "";
									}
							}
						},{
							type : 'display',
							name : 'email',
							label : '邮箱',
							format : function(c) {
								if (c) {
									return c;
								}
								else
									{
									return "";
									}
							}
						},{
							type : 'display',
							name : 'inputDate',
							label : '留言时间',
							format : function(c) {
								if (c) {
									return dateTostr(c);
								}
								else
									{
									return "";
									}
							}
						},
						{
							type : 'display',
							name : 'title',
							label : '标题',
							format : function(c) {
								if (c) {
									return c;
								}
								else
									{
									return "";
									}
							}
						},{
							type : 'display',
							name : 'content',
							label : '内容',
							format : function(c) {
								if (c) {
									return c;
								}
								else
									{
									return "";
									}
							}
						},{
							type : 'display',
							name : 'recontent',
							label : '回复',
							format : function(c) {
								if (c) {
									return c;
								}
								else
									{
									return "";
									}
							}
						}						
						]	
		};
/****************添加*********************/	
	function showForm(contentType,title){
		modal = $.dmModal({
			id : "siteForm",
			title : "添加-"+title,
			distroy : true
		});
		modal.show();
		var formOption;
		if(currentChannelType == '0')
			{
			formOption = getForm(contentType);
			}
		else if(currentChannelType == '5')
		{
		formOption = getVideoForm(contentType);
		}
		else if(currentChannelType == '6')
		{
		formOption = getAudioForm(contentType);
		}
		else if(currentChannelType == '7')
			{
			formOption = getNovelForm(contentType);
			}
		
		var form = modal.$body.dmForm(formOption);
		form.setValue("channelId", currentChannelId);
		form.setValue("contentType",contentType);
	}
	
	/** **********普通新闻表格选项*************** */
	var options = {
		url : "./list?type=1,2,3,4&state=1", // ajax地址
		pageNum : 1,// 当前页码
		pageSize : 5,// 每页显示条数
		idFiled : "id",// id域指定
		showCheckbox : true,// 是否显示checkbox
		checkboxWidth : "3%",
		showIndexNum : true,
		indexNumWidth : "5%",
		pageSelect : [ 2, 15, 30, 50 ],
		cloums : [ {
			title : "标题",
			field : "title",
			sort : true
		}, {
			title : "发件人",
			field : "username",
			sort : true
		}, 
		{
			title : "留言时间",
			field : "inputDate",
			format : function(c,data) {
				if (c) {
					return dateTostr(data.inputDate);
				}
				else
					{
					return "";
					}
			}
		},
		{
			title : "是否公开",
			field : "isOpen",
			format : function(i, c) {
				if (c.isOpen == "0")
					return "不公开";
				if (c.status == "1")
					return "公开";
				return "--";
			}
		}],
		actionCloumText : "操作",// 操作列文本
		actionCloumWidth : "30%",
		actionCloums : [ {
			text : "查看",
			cls : "green btn-sm",
			icon : "fa fa-search",
			handle : function(index, data) {
				modal = $.dmModal({
					id : "reply-form",
					title : "查看详细",
					distroy : true
				});
				modal.show();
				if($("#isShowIp").val()=="1")
				{
					var ip = {
							type : 'display',
							name : 'ip',
							label : 'ip',//左边label
							format : function(c) {
								if (c) {
									return c;
								}
								else
									{
									return "";
									}
							}
						};
					showopt.items.push(ip);
				}
				var form = modal.$body.dmForm(showopt);
				form.loadRemote("./load?id=" + data.id);
			}
		}/*, {

			text : "审核",
			cls : "green btn-sm",
			handle : function(index, data) {
				// index为点击操作的行数
				// data为该行的数据
				check(data.id);
				
			}
		}*/, {
			text : "删除",
			cls : "red btn-sm",
			handle : function(i, c) {
				deleteItems(c.id);
			}
		} ],
		tools : [// 工具属性
		  {
			text : "审核",
			cls : "btn green btn-sm",// 按钮样式
			handle : function(grid) {
				check(grid.getSelectIds(),2);
			}
		},
		{
			text : "退回",
			cls : "btn red btn-sm",// 按钮样式
			handle : function(grid) {
				check(grid.getSelectIds(),3);
			}
		}],
		search : {
			rowEleNum : 2,
			// 搜索栏元素
			items : [ {					
			    type : "text",
				label : "标题",
				name : "title",
				placeholder : "输入要搜索的内容信息标题"
			},
			{
				type : "select",
				label : "分类",
				name : "type",
				items:[
					{
						text:"全部"
					},
				 {
					text:"咨询",
					value:"1"
				},{
					text:"投诉",
					value:"2"
				},{
					text:"建议",
					value:"3"
				},{
					text:"举报",
					value:"4"
				}]
			}]
		}
	};
	// form
	/** **************普通内容表单选项*************** */
	jQuery(document).ready(function() {
		
		grid = $("#content_grid").dmGrid(options);
	});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>