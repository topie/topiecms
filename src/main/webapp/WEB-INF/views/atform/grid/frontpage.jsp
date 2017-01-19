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
<title></title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>assets/global/plugins/bootstrap-select/bootstrap-select.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>assets/global/plugins/select2/select2.css" />

<!-- BEGIN GLOBAL MANDATORY STYLES -->
<%-- <link href="<%=basePath%>assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"> --%>
<link href="<%=basePath%>assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
<!--<link href="<%=basePath%>assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">-->
<link href="<%=basePath%>assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
<!-- END GLOBAL MANDATORY STYLES -->

<link href="<%=basePath%>assets/global/css/components-rounded-custem.css" id="style_components" rel="stylesheet" type="text/css">
<%-- <link href="<%=basePath%>assets/global/css/plugins.css" rel="stylesheet" type="text/css"> --%>
<link href="<%=basePath%>assets/admin/layout3/css/layout.css" rel="stylesheet" type="text/css">
<link href="<%=basePath%>assets/admin/layout3/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color">
<link href="<%=basePath%>assets/admin/layout3/css/custom.css" rel="stylesheet" type="text/css">

<!-- END THEME STYLES -->
<link rel="shortcut icon" href="<%=basePath%>favicon.ico">

<!-- BEGIN PAGE LEVEL STYLES -->
<link href="<%=basePath%>assets/global/plugins/bootstrap-modal/css/bootstrap-modal.css" rel="stylesheet" type="text/css">
<link href="<%=basePath%>assets/global/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" rel="stylesheet" type="text/css">
<link href="<%=basePath%>assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css" rel="stylesheet" type="text/css">
<link href="<%=basePath%>assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css" rel="stylesheet" type="text/css" >
<%-- <link href="<%=basePath%>assets/global/plugins/jquery-file-upload/css/jquery.fileupload.css" rel="stylesheet" type="text/css"> --%>
<%-- <link href="<%=basePath%>assets/global/plugins/jquery-file-upload/css/jquery.fileupload-ui.css" rel="stylesheet" type="text/css"> --%>
<%-- <link href="<%=basePath%>assets/global/plugins/jquery-tags-input/jquery.tagsinput.css" rel="stylesheet" type="text/css" > --%>
<%-- <link href="<%=basePath%>assets/global/plugins/jquery-minicolors/jquery.minicolors.css" rel="stylesheet" type="text/css"> --%>
<link href="<%=basePath%>assets/dmcms/plugins/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css"  rel="stylesheet" >	
	<%-- 
	
<%@include file="../../includejsps/style.jsp"%>
<%@include file="../../includejsps/plugin-style.jsp"%> --%>
<style>
	 .page-content {
    background: #6C8CB3;
    padding: 15px 0 15px;
	}
	.portlet > .portlet-title {
    border-bottom: 1px solid #213E70;
	}  
</style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-menu-fixed" class to set the mega menu fixed  -->
<!-- DOC: Apply "page-header-top-fixed" class to set the top menu fixed  -->
<body>
	
	<div class="page-content">
		<div class="container" style="">
			<!-- BEGIN PAGE CONTENT INNER -->
			<div class="row margin-top-10">
				<div class="col-md-3 col-sm-12">
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<!-- BEGIN PORTLET-->
							<div class="portlet light">
								<div class="portlet-title">
									<div class="caption caption-md">
										<i class="icon-bar-chart theme-font hide"></i> <span
											class="caption-subject theme-font bold uppercase">资源树</span>
										<span class="caption-helper"></span>
									</div>
								</div>
								<div class="portlet-body">
									<div class="scroller" style="min-height: 500px;"
										id="table_tree_div" data-always-visible="1"
										data-rail-visible="1">
										<ul id="table_tree" class="ztree"></ul>
									</div>
								</div>
							</div>
							<!-- END PORTLET-->
						</div>
					</div>
				</div>
				<div class="col-md-9 col-sm-12">
					<!-- BEGIN PORTLET-->
					<div class="portlet light">
						<div class="portlet-title">
							<div class="caption caption-md">
								<i class="icon-bar-chart theme-font hide"></i> <span
									class="caption-subject theme-font bold uppercase" id="gridName">数据表格</span>
								<span id="helper" class="caption-helper"></span>
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
	<!-- END PAGE CONTAINER -->

	<!-- BEGIN JAVASCRIPTS-->
<%-- 	<%@include file="../../includejsps/js.jsp"%> --%>
<%-- 	<%@include file="../../includejsps/plugin-js.jsp"%> --%>
<!-- BEGIN CORE PLUGINS -->
<script type="text/javascript">
    //根路径
    var dm_root = "<%=basePath%>";
</script>
<!--[if lt IE 9]>
<script src="<%=basePath%>assets/global/plugins/respond.min.js"></script>
<script src="<%=basePath%>assets/global/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="<%=basePath%>assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/global/plugins/bootbox/bootbox.min.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=basePath%>assets/global/plugins/jquery.tmpl.min.js"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<%=basePath%>assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/admin/layout3/scripts/layout.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/admin/layout3/scripts/theme.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script type="text/javascript">
    bootbox.setDefaults({
        locale: "zh_CN"
    });
    $(document).ready(function () {
        Metronic.init(); // init metronic core componets
        Layout.init(); // init layout
        Theme.init();
    });
</script>

	
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="<%=basePath%>assets/dmcms/js/jquery.timers-1.1.2.js"></script>
<script src="<%=basePath%>assets/dmcms/js/checkdata.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/global/plugins/bootstrap-modal/js/bootstrap-modalmanager.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/global/plugins/bootstrap-modal/js/bootstrap-modal.js" type="text/javascript"></script>
<%-- <script type="text/javascript" src="<%=basePath%>assets/global/plugins/jquery-file-upload/js/jquery.fileupload.js"></script> --%>
<%-- <script type="text/javascript" src="<%=basePath%>assets/global/plugins/jquery-file-upload/js/jquery.fileupload-ui.js"></script> --%>
<%-- <script type="text/javascript" src="<%=basePath%>assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js"></script> --%>
<script src="<%=basePath%>assets/global/plugins/jquery-tags-input/jquery.tagsinput.min.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/global/plugins/jquery-minicolors/jquery.minicolors.min.js" type="text/javascript"></script>
<%-- <script type="text/javascript" src="<%=basePath%>assets/dmcms/plugins/datePicker/laydate.js"></script> --%>
<script type="text/javascript" src="<%=basePath%>assets/dmcms/plugins/zTree/js/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/dmcms/plugins/zTree/js/jquery.ztree.excheck-3.5.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/dmcms/plugins/zTree/js/jquery.ztree.exedit-3.5.js"></script>
<%-- <script charset="utf-8" src="<%=basePath%>assets/dmcms/plugins/kindeditor-4.1.10/kindeditor.js"></script> --%>
<%-- <script charset="utf-8" src="<%=basePath%>assets/dmcms/plugins/kindeditor-4.1.10/lang/zh_CN.js"></script> --%>
<%-- <script type="text/javascript" src="<%=basePath%>assets/global/plugins/jquery-validation/js/jquery.validate.min.js"></script> --%>
<%-- <script type="text/javascript" src="<%=basePath%>assets/global/plugins/jquery-validation/js/additional-methods.min.js"></script> --%>
<script src="<%=basePath%>assets/dmcms/js/ajaxfileupload.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/dmcms/js/inbox.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/dmcms/js/grid.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/dmcms/js/form.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/dmcms/js/modal.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/dmcms/js/file-manager.js?v=1" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
	<script type="text/javascript"
		src="<%=basePath%>assets/global/plugins/bootstrap-select/bootstrap-select.min.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>assets/global/plugins/select2/select2.min.js"></script>
	<script type="text/javascript">
		/**********普通内容操作函数****************/
		var root ='<%=basePath%>';
		var tableTree;
		var form;
		var grid;
		var currentTableId='';
		var currentTableType;
		function refreshTree() {

			if (typeof (tableTree) == "undefined") {
				$.fn.zTree.init($("#table_tree"), tableSetting, "");
				tableTree = $.fn.zTree.getZTreeObj("table_tree");
			}else{
				tableTree.reAsyncChildNodes(null, "refresh");
			}
			if (typeof (grid) != "undefined") {
				grid.reload({
					url : root+"portal/list?tableId=" + currentTableId
				});
			}
		}
		var tableSetting = {
			view : {
				showIcon : false,
				selectedMulti : false
			// 				addHoverDom: addHoverDom,
			// 				removeHoverDom: removeHoverDom
			},
			edit : {
				drag : {
					isCopy : false,
					isMove : false,
					prev : true,
					next : true,
					inner : false
				},
				enable : true,
				showRemoveBtn : false,
				showRenameBtn : false
			},
			check : {
				enable : false
			},
			data : {
				simpleData : {
					enable : true
				}
			},
			async : {
				enable : true,
				dataType : "json",
				url :  root+"/portal/tree?status=1",
				autoParam : [ "id", "name", "pId" ]
			},
			callback : {
				/* beforeAsync : function(treeId, treeNode) {
					if (typeof (currentSiteId) == "undefined") {
						return false;
					} else {
						return true;
					}
				}, */

				onAsyncSuccess : function(event, treeId, treeNode, msg) {
					if (msg.length == 0) {
						Metronic.alert({
							message : "没有信息！",
							type : "warning",
							container : "#table_tree_div",
							place : "prepend",
							close : false,
							closeInSeconds : 5
						});
					}
					tableTree.expandAll(true);
				},
				onClick : function(event, treeId, treeNode) {
					//双击不操作
					/* if (treeNode.clickTimeout) {
				        clearTimeout(treeNode.clickTimeout);
				        treeNode.clickTimeout = null;
				    } else {
				    	treeNode.clickTimeout = setTimeout(function() { */
				    		treeOnClike(event,treeId,treeNode);
				    	/* },250);
				    } */
				},
				onDblClick:function(event, treeId, treeNode){
					/* var form  = generForm(treeNode.s);
					form.loadRemote("./load?id=" + treeNode.id); */
				} 
			}
		};
		function treeOnClike(event,treeId,treeNode){
		currentTableId = treeNode.id;
		currentTableType = treeNode.s;
		if(treeNode.s =='0'){
		beforReload(currentTableId,function(data){
			$('#gridName').html(data.info.gridName);
			$('#helper').html(data.info.info);
			//console.log(data);
				 formOpts.items = data.formItem;
				/*if(typeof data.gridItem =='undefined'){
					bootbox.alert("未配置");
					return;//未定义
				}*/
				 formOpts.items.push({
					type : 'hidden',
					name : data.id,
					id : data.id
				}); 
				//formOpts.action = "./insertOrUpdate?tableId=" + currentTableId;//表单action
		 
				var searchSize = data.searchItem.length;
				var searchItem = {
					rowEleNum : searchSize,
					//搜索栏元素
					items : data.searchItem
					
				}
				//console.log(data);
				if(searchSize<=0){
					searchItem = undefined;
				}else if(searchSize<=3){
					searchItem.rowEleNum=3;
				}
				var tools;
				if(data.info.isInsert){
					//tools=inserttoolsButton;
				}else{
					tools=undefined;
				}
				var actionCloums=[];
				
					actionCloums.push(detailButton);
				//console.log(data.info);
				/* if(data.info.isUpdate){
					actionCloums.push(updateButton);
				}
				if(data.info.isDelete){
					actionCloums.push(deleteButton);
				} */
				grid.reload({
					url :  root+"/portal/list?tableId=" + currentTableId,
					cloums:data.gridItem,
					pageNum:1,
				 	idFiled : data.id,//id域指定
				 	search : searchItem,
				 	tools:tools,
				 	actionCloums:actionCloums
				});
				//console.log(searchItem);
			});}
	    	
		}; 
		  var detailButton = {
			text : "查看",
			cls : "green btn-sm",
			handle : function(index, data,id) {
				//index为点击操作的行数
				//data为该行的数据
				modal = $.dmModal({
					id : "detailForm",
					title : "查看",
					distroy : true,
					width : "800px"
				});
				modal.show();
				//console.log(formOpts);
				var form = modal.$body.dmForm(formOpts);
				//form.loadLocal(data);
				form.loadRemote( root+"/portal/load?tableId="+currentTableId+"&id=" + id,function(){
					$("#detailForm").find("input").attr("readonly","true");
					//$(":input").attr("disabled","true");
					$("#detailForm").find("button[role='reset']").remove();
					$("#detailForm").find("button[role='submit']").remove();
				});
			}
		};
		/* var updateButton = {
			text : "编辑",
			cls : "green btn-sm",
			handle : function(index, data,id) {
				//index为点击操作的行数
				//data为该行的数据
				modal = $.dmModal({
					id : "siteForm",
					title : "表单",
					distroy : true,
					width : "800px"
				});
				modal.show();
				//console.log(formOpts);
				var form = modal.$body.dmForm(formOpts);
				//form.loadLocal(data);
				form.loadRemote("./load?tableId="+currentTableId+"&id=" + id);
			}
		}; */
		
		/* var deleteButton = {
			text : "删除",
			cls : "red btn-sm",
			handle : function(index, data,id) {
				deleteItem(id);
			}
		};
		var inserttoolsButton = [
					//工具属性
					{
						text : " 添 加",//按钮文本
						cls : "btn btn-sm green",//按钮样式
						icon : "fa fa-cubes",
						handle : function(grid) {//按钮点击事件
							if(currentTableType == '0'){
								modal = $.dmModal({
									id : "siteForm",
									title : "添加",
									distroy : true,
									width : "800px"
								});
								modal.show();
								var form = modal.$body.dmForm(formOpts);
								form.loadLocal({"tableId":currentTableId});
							}else{
								bootbox("请选择数据表!");
							}
						}
					} , {
						text : " 删 除",
						cls : "btn btn-sm red ",//按钮样式
						handle : function(grid) {
							deleteItems(grid.getSelectIds());
						}
					} ]; */
		var gridOption = {
			url : root+"/portal/list", // ajax地址
			pageNum : 1,//当前页码
			pageSize : 5,//每页显示条数
			idFiled : "id",//id域指定
			showCheckbox : false,//是否显示checkbox
			checkboxWidth : "3%",
			showIndexNum : true,
			indexNumWidth : "5%",
			pageSelect : [ 5, 10, 30, 50 ],
			cloums : [
					{
						title : "名称",
						field : "title",
						width : "10%",
						sort : true
					},
					{
						title : " 字段",
						field : "name",
						width : "10%",
						sort : true
					}
					 ],
			actionCloumText : "操作",//操作列文本
			actionCloumWidth : "60px",
			actionCloums:[detailButton]
		};
		var modal;
		var formOpts = {
			id : "table_form",//表单id
			name : "table_form",//表单名
			method : "post",//表单method
			action : "./insertOrUpdate",//表单action
			ajaxSubmit : true,//是否使用ajax提交表单
			labelInline : true,
			rowEleNum : 1,
			beforeSubmit : function() {

			},
			ajaxSuccess : function(data) {
				if(data.status=='1'){
					modal.hide();
					grid.reload();
				}else{
					alert(data.msg);
				}
				
				//refreshTree();
			},
			submitText : "提交",//保存按钮的文本
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
			items : [ ]
		};
		function beforReload(currentTableId,callbak){
			$.ajax({
				url:root+"/portal/beforlist?tableId="+ currentTableId,
				async:true,
				type:'GET',
				dataType:'json',
				success:function(data){
					callbak(data);
				},
				error:function(){
					alert("操作异常");
				}
			});
			//alert(data);
			//return data;
		}
		function deleteItem(id){
			bootbox.confirm("确认删除?",function(res){
				if(res){
					$.ajax({
						url:'./delete?tableId='+currentTableId+'&id='+id,
						type:'get',
						dataType:'json',
						error:function(){
							alert('网络错误!');
						},
						success:function(data){
							if(data.status=='1'){
								grid.reload();
							}else{
								alert(data.msg);
							}
						}
					});
				}
			})
		}
		jQuery(document).ready(function() {
			grid = $("#content_grid").dmGrid(gridOption);
			refreshTree();
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
