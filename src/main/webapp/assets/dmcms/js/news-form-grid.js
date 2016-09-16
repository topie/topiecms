var root = '<%=basePath%>'
var grid;
var channelTree;
var currentSiteId;
var currentChannelId;
var currentChannelType;
var currentChannelIsParent;
function dateTostr(utc)
{
	if(utc)
		{
     var date = new Date(utc);
     return date.getFullYear()+"-"+((date.getMonth()+1)>10?date.getMonth()+1:"0"+(date.getMonth()+1))+"-"+(date.getDate()>10?date.getDate():"0"+date.getDate())+" "+(date.getHours()>10?date.getHours():"0"+date.getHours())+":"+(date.getMinutes()>10?date.getMinutes():"0"+date.getMinutes())+":"+(date.getSeconds()>10?date.getSeconds():"0"+date.getSeconds());
   }
}
function flushGrid()
{
	$("#content_grid").html("");
	if (currentChannelType == '0') {
		options.url = "./list?channelId=" + currentChannelId;
		grid = $("#content_grid").dmGrid(options);
	}
	if (currentChannelType == '2') {
		$("#content_grid").html('<div class="note note-success note-bordered">'
						+'<h4 class="block">提示</h4><p>'
							+'链接频道无需添加内容'
						+'</p></div>');
	}
	if (currentChannelType == '4') {
		options.url = "./list?channelId=" + currentChannelId;
		grid = $("#content_grid").dmGrid(options);
	}
	if (currentChannelType == '3') {
		$("#content_grid").html('<div class="note note-success note-bordered">'
						+'<h4 class="block">提示</h4><p>'
							+'单页频道无需添加内容'
						+'</p></div>');
	}
	else if (currentChannelType == '5') {
		videoOptions.url = "../video/list?channelId="
				+ currentChannelId;
		grid = $("#content_grid").dmGrid(videoOptions);
	} else if (currentChannelType == '6') {
		audioOptions.url = "../audio/list?channelId="
				+ currentChannelId;
		grid = $("#content_grid").dmGrid(audioOptions);
	} 
	else if (currentChannelType == '7') {
		novelOptions.url = "../novel/list?channelId="
				+ currentChannelId;
		grid = $("#content_grid").dmGrid(novelOptions);
	}
	else if (currentChannelType == '8') {
		$("#content_grid").html("");
		interviewOptions.url = "../interview/list?channelId="
				+ currentChannelId;
		grid = $("#content_grid").dmGrid(interviewOptions);
	}
	else if (currentChannelType == '9') {
		$("#content_grid").html("");
		voteOptions.url = "../vote/list?channelId="
				+ currentChannelId;
		grid = $("#content_grid").dmGrid(voteOptions);
	}else if (currentChannelType == '10') {
		$("#content_grid").html("");
		fileoptions.url = "./list?channelId=" + currentChannelId;
		grid = $("#content_grid").dmGrid(fileoptions);
	}
}
var channelSetting = {
	view : {
		showIcon : false,
		selectedMulti : false
	},
	edit : {
		enable : false,
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
		url : "",
		autoParam : [ "id", "name", "pId" ]
	},
	callback : {
		beforeAsync : function(treeId, treeNode) {
			if (typeof (currentSiteId) == "undefined") {
				return false;
			} else {
				return true;
			}
		},
		onAsyncSuccess : function(event, treeId, treeNode, msg) {
			if (msg.length == 0) {
				Metronic.alert({
					message : "该频道下暂无频道！",
					type : "warning",
					container : "#channel_tree_div",
					place : "prepend",
					close : false,
					closeInSeconds : 5
				});
			}
			channelTree.expandAll(false);
		},
		onClick : function(event, treeId, treeNode) {
			currentChannelId = treeNode.id;
			currentChannelType = treeNode.type;
			currentChannelIsParent=treeNode.isParent;
			flushGrid();
			/*
			currentChannelId = treeNode.id;
			if (currentChannelType == treeNode.type) {
				if (currentChannelType == '0') {
					grid.reload({
						url : "./list?channelId=" + currentChannelId
					});
				} else if (currentChannelType == '5') {
					grid.reload({
						url : "../video/list?channelId=" + currentChannelId
					});
				} else if (currentChannelType == '6') {
					grid.reload({
						url : "../audio/list?channelId=" + currentChannelId
					}); 
				}
				else if (currentChannelType == '7') {
					grid.reload({
						url : "../novel/list?channelId=" + currentChannelId
					});
				}
				else if (currentChannelType == '8') {
					grid.reload({
						url : "../interview/list?channelId=" + currentChannelId
					});
				}else if (currentChannelType == '9') {
					grid.reload({
						url : "../vote/list?channelId=" + currentChannelId
					});
				}
				else if (currentChannelType == '10') {
					grid.reload({
						url : "./list?channelId=" + currentChannelId
					});
				}
			} else {
				currentChannelType = treeNode.type;
				if (currentChannelType == '0') {
					$("#content_grid").html("");
					options.url = "./list?channelId=" + currentChannelId;
					grid = $("#content_grid").dmGrid(options);
				} else if (currentChannelType == '5') {
					$("#content_grid").html("");
					videoOptions.url = "../video/list?channelId="
							+ currentChannelId;
					grid = $("#content_grid").dmGrid(videoOptions);
				} else if (currentChannelType == '6') {
					$("#content_grid").html("");
					audioOptions.url = "../audio/list?channelId="
							+ currentChannelId;
					grid = $("#content_grid").dmGrid(audioOptions);
				} 
				else if (currentChannelType == '7') {
					$("#content_grid").html("");
					novelOptions.url = "../novel/list?channelId="
							+ currentChannelId;
					grid = $("#content_grid").dmGrid(novelOptions);
				}
				else if (currentChannelType == '8') {
					$("#content_grid").html("");
					interviewOptions.url = "../interview/list?channelId="
							+ currentChannelId;
					grid = $("#content_grid").dmGrid(interviewOptions);
				}
				else if (currentChannelType == '9') {
					$("#content_grid").html("");
					voteOptions.url = "../vote/list?channelId="
							+ currentChannelId;
					grid = $("#content_grid").dmGrid(voteOptions);
				}else if (currentChannelType == '10') {
					$("#content_grid").html("");
					fileoptions.url = "./list?channelId=" + currentChannelId;
					grid = $("#content_grid").dmGrid(fileoptions);
				}
			}
			}*/
		}
	}
};
function initSelect2Site() {
	$.ajax({
		type : "POST",
		dataType : "json",
		url : "../site/selectOptions",
		success : function(data) {
			if (data.length == 0) {
				Metronic.alert({
					message : "<a href='../site/page'>请先新建频道！</a>",
					type : "warning",
					container : "#channel_tree_div",
					place : "prepend",
					close : true
				});
			}
			$.each(data, function(i, o) {
				var option = $("<option></option>");
				option.text(o.text);
				option.attr("value", o.value);
				$("#select2_site").append(option);
			});
			if (data.length > 0) {
				refreshSite();
			}
			$("#select2_site").change(function() {
				refreshSite();
			});
			$("#select2_site").select2({
				allowClear : true
			});
		}
	});
}
function refreshSite() {
	if (typeof (channelTree) == "undefined") {
		$.fn.zTree.init($("#channel_tree"), channelSetting, "");
		channelTree = $.fn.zTree.getZTreeObj("channel_tree");
	}
	currentSiteId = $("#select2_site").val();
	channelTree.setting.async.url = "../channel/tree?siteId=" + currentSiteId +"&isfilter=1";
	channelTree.reAsyncChildNodes(null, "refresh");
}

/** **********普通新闻表格选项*************** */
var options = {
	url : "./list", // ajax地址
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
		title : "来源",
		field : "origin",
		sort : true
	}, {
		title : "状态",
		field : "status",
		format : function(i, c) {
			if (c.status == "0")
				return "新稿";
			if (c.status == "1")
				return "待审核";
			if (c.status == "2")
				return "已发布";
			if (c.status == "3")
				return "未通过";
			return "--";
		}
	} ],
	actionCloumText : "操作",// 操作列文本
	actionCloumWidth : "30%",
	actionCloums : [ {
		text : "预览",
		cls : "green btn-sm",
		icon : "fa fa-search",
		handle : function(index, data) {
			window.open(data.url);
		}
	}, {

		text : "编辑",
		cls : "green btn-sm",
		visable : function(i, c) {
			if (c.status == "1")
				return false;
			return true;
		},
		handle : function(index, data) {
			// index为点击操作的行数
			// data为该行的数据
			/*modal = $.dmModal({
				id : "siteForm",
				title : "编辑内容信息-" + data.title,
				distroy : true
			});
			modal.show();*/
			$("#content_grid").html("");
			var form = $("#content_grid").dmForm(getForm(data.contentType));
			form.loadRemote("./load?contentId=" + data.id,function(){
				if(data.titleStyle){
					var color = data.titleStyle.split(";");
					$("#titleStyle").val((color[0].split(":"))[1]);
					$("select[name='titleStyle']")[0].value = (color[1].split(":"))[1];
				}
				var l = dateTostr(data.publishDate);
				$("#publishDate").val(l);
			});
			
		}
	}, {
		text : "排序",
		cls : "yellow btn-sm",
		handle : function(i, c) {
			sortfun(i, c,c.title);
		}
	} ],
	dropdowns:{
	    text:"添加",     
	    cls:"green btn-sm",
	    items:[{
			text : "普通内容",//按钮文本
			cls : "btn green",//按钮样式
			icon : "fa fa-cubes",
			handle : function(grid) {//按钮点击事件
				if(currentChannelId==undefined)
					bootbox.alert("请先选择频道");
				else if(currentChannelIsParent)
					bootbox.alert("请选择子频道进行添加!");
				else{
				showForm('0',"普通内容");
				}
			}
		},
		{
			text : "引用内容",//按钮文本
			cls : "btn green btn-sm",//按钮样式
			icon : "fa fa-cubes",
			handle : function(grid) {//按钮点击事件
				if(currentChannelId==undefined)
					bootbox.alert("请先选择频道");
				else if(currentChannelIsParent)
					bootbox.alert("请选择子频道进行添加!");
				else{
				showForm('2',"引用内容");
				}
			}
		}
		]
},
	tools : [// 工具属性
	/*{
		text : "添加",
		cls : "btn green btn-sm",
		handle : function(grid) {// 按钮点击事件
			if(currentChannelId==undefined)
				bootbox.alert("请先选择频道");
			else
				showForm(0, "文本内容");
		}
	},*/ {
		text : "移动",
		cls : "btn green btn-sm",
		handle : function(grid) {
			cutOrCopyfun(grid.getSelectIds(), "移动", "radio", "../content/cutTo");
		}
	}, {
		text : "复制",
		cls : "btn green btn-sm",
		handle : function(grid) {
			cutOrCopyfun(grid.getSelectIds(), "复制", "checkbox", "../content/copyTo");
		}
	}, {
		text : "提交",
		cls : "btn green btn-sm",
		handle : function(grid) {
			var ids = grid.getSelectIds();
			if (ids.length > 0) {
				var url = "./commit?contentId=" + ids;
				$.ajax({
					url : url,
					type : "POST",
					dataType : "json",
					success : function(res) {
						bootbox.alert(res.msg);
						grid.reload();
					},
					error : function() {
						bootbox.alert("请求异常！");
					}
				});
			} else {
				bootbox.alert("请选择要提交的项");
			}
		}
	}, {
		text : " 删 除",
		cls : "btn red btn-sm",// 按钮样式
		handle : function(grid) {
			deleteItems(grid.getSelectIds());
		}
	} ],
	search : {
		rowEleNum : 2,
		// 搜索栏元素
		items : [ {
			type : "text",
			label : "标题",
			name : "title",
			placeholder : "输入要搜索的内容信息标题"
		} ]
	}
};
// form
/** **************普通内容表单选项*************** */
function getForm(contentType) {
	
	if(contentType=='2')
	{
	var formOpts = {
			id : "site_form",// 表单id
			name : "site_form",// 表单名
			method : "post",// 表单method
			action : "./insertOrUpdate",// 表单action
			ajaxSubmit : true,// 是否使用ajax提交表单
			labelInline : true,
			rowEleNum : 1,
			beforeSubmit : function() {

			},
			ajaxSuccess : function() {
				flushGrid();
			},
			submitText : "保存",// 保存按钮的文本
			showReset : true,// 是否显示重置按钮
			resetText : "重置",// 重置按钮文本
			isValidate : true,// 开启验证
			buttons : [ {
				type : 'button',
				text : '关闭',
				handle : function() {
					flushGrid();
				}
			} ],
			buttonsAlign : "center",
			// 表单元素
			items : [
						{
							type : "tree",
							name : "channelId",
							id : "channelId",
							label : "所属频道",
							url : "../channel/tree?siteId=" + currentSiteId,
							autoParam : [ "id", "name", "pId" ],
							expandAll : false,
							beforeCheck : function(treeId, treeNode) {
								if (treeNode.isParent) {
									return false;
								}
							},
							chkStyle : "radio"
						},
						{
							type : 'hidden',
							name : 'id',
							id : 'id'
						},
						{
							type : 'hidden',
							name : 'contentType',
							id : 'contentType'
						},
						{
							type : 'text',// 类型
							name : 'title',// name
							id : 'title',// id
							label : '标题',// 左边label
							cls : 'input-large',
							rule : {
								required : true,
								maxlength : 64
							},
							message : {
								required : "请输入内容信息标题",
								maxlength : "最多输入64字节"
							}
						},{
							type : 'colorpicker',// 类型
							name : 'titleStyle',// name
							id : 'titleStyle',// id
							label : '标题颜色',// 左边label
							cls : 'input-large'
						},
						{
							type : 'select',// 类型
							name : 'titleStyle',// name
							id : 'titleStyle',// id
							label : '标题字体',// 左边label
							cls : 'input-large',
							items : [ {
								value : "20px",
								text : '20px'
							},{
								value : "25px",
								text : '25px'
							},{
								value : "30px",
								text : '30px'
							}, {
								value : "35px",
								text : '35px'
							}, {
								value : "40px",
								text : '40px'
							}, {
								value : "50px",
								text : '50px'
							}]
						},{
							type : 'text',// 类型
							name : 'origin',// name
							id : 'origin',// id
							label : '来源',// 左边label
							cls : 'input-large',
							rule : {
								required : true,
								maxlength : 12
							},
							message : {
								required : "请输入来源信息",
								maxlength : "最多输入12字节"
							}
						},
							{
								type : 'text',// 类型
								name : 'url',// name
								id : 'url',// id
								label : '链接',// 左边label
								cls : 'input-large',
								rule : {
									required : true,
									maxlength : 256
								},
								message : {
									required : "请输入链接",
									maxlength : "最多输入256字符"
								}
							}
					]
		};
	return formOpts;
	}
	
	var items = [
			{
				type : 'hidden',
				name : 'id',
				id : 'id'
			},
			{
				type : 'hidden',
				name : 'channelId',
				id : 'channelId'
			},
			/*
			{
				type : "tree",
				name : "channelId",
				id : "channelId",
				label : "所属频道",
				url : "../channel/tree?siteId=" + currentSiteId,
				autoParam : [ "id", "name", "pId" ],
				expandAll : false,
				beforeCheck : function(treeId, treeNode) {
					if (treeNode.isParent) {
						return false;
					}
				},
				chkStyle : "radio"
			},*/
			{
				type : 'text',// 类型
				name : 'title',// name
				id : 'title',// id
				label : '内容信息标题',// 左边label
				cls : 'input-large',
				rule : {
					required : true,
					maxlength : 64
				},
				message : {
					required : "请输入内容信息标题",
					maxlength : "最多输入64字节"
				}
			},
			{
				type : 'colorpicker',// 类型
				name : 'titleStyle',// name
				id : 'titleStyle',// id
				label : '标题颜色',// 左边label
				cls : 'input-large'
			},
			{
				type : 'select',// 类型
				name : 'titleStyle',// name
				id : 'titleStyle',// id
				label : '标题字体',// 左边label
				cls : 'input-large',
				items : [ {
					value : "20px",
					text : '20px'
				},{
					value : "25px",
					text : '25px'
				},{
					value : "30px",
					text : '30px'
				}, {
					value : "35px",
					text : '35px'
				}, {
					value : "40px",
					text : '40px'
				}, {
					value : "50px",
					text : '50px'
				}]
			},
			{
				type : 'text',// 类型
				name : 'keywords',// name
				id : 'keywords',// id
				label : '关键字',// 左边label
				cls : 'input-large'
			},
			{
				type : 'textarea',// 类型
				row : 3,
				name : 'brief',// name
				id : 'brief',// id
				label : '摘要',// 左边label
				cls : 'input-large',
				rule : {
					required : true,
					maxlength : 256
				},
				message : {
					required : "请输入内容信息摘要",
					maxlength : "最多输入256字节"
				}
			},
			{
				type : 'datepicker',//类型
				name : 'publishDate',//name
				id : 'publishDate',//id
				label : '发布时间',//左边label
				cls : 'input-large'
			},{
				type : 'text',//类型
				name : 'author',//name
				id : 'author',//id
				label : '作者',//左边label
				cls : 'input-large',
				rule : {
					required : true,
					maxlength : 12
				},
				message : {
					required : "请输入作者信息",
					maxlength : "最多输入12字节"
				}
			},{
				type : 'text',// 类型
				name : 'origin',// name
				id : 'origin',// id
				label : '来源',// 左边label
				cls : 'input-large',
				rule : {
					required : true,
					maxlength : 12
				},
				message : {
					required : "请输入来源信息",
					maxlength : "最多输入12字节"
				}
			},/*{
				type : '',
				name : 'contentType',
				id : 'contentType',
				label : '是否头条',
				cls : 'input-large',
				items : [ {
					value : '0',
					text : '否'
				},{
					value : '4',
					text : '是'
				}]
			},*/
			{
				type : 'select',
				name : 'templateId',
				id : 'templateId',
				label : '页面模板',
				cls : 'input-large',
				items : [ {
					value : '',
					text : '默认模版'
				} ],
				itemsUrl : "../template/selects?templateType=2&siteId="
						+ currentSiteId
			},{
				type : 'select',// 类型
				name : 'isComment',// name
				id : 'isComment',// id
				label : '是否开启评论',// 左边label
				cls : 'input-large',
				items : [ {
					value : false,
					text : '否'
				},{
					value : true,
					text : '是'
				} ]
			}];
	var titleImg = {
		type : 'image',
		id : 'titleImageUrl',
		name : 'titleImageUrl',
		label : '标题图',
		isAjaxUpload : true,
		autoUpload : true,
		uploadUrl : '../attachment/singleUpload',
		onSuccess : function(data) {
			if (data.status == "1") {
				$("#titleImageUrl")
						.attr("value", data.attachment.attachmentUrl);
			} else {
				alert(data.msg);
			}
		},
		deleteHandle : function() {
			$("#titleImageUrl").attr("value", "");
		}
	};
	var titleImgTitle = {
		type : 'textarea',// 类型
		row : 3,
		name : 'titleImageIllustrate',// name
		id : 'titleImageIllustrate',// id
		label : '标题图说明',// 左边label
		cls : 'input-large',
		rule : {
			maxlength : 200
		},
		message : {
			maxlength : "最多输入200字节"
		}
	};
	var contentText = {
		type : 'kindEditor',
		name : 'contentText',
		id : 'contentText',
		label : '内容文本',
		height : "300px",
		width : "500px",
		rule : {
			required : true
		},
		message : {
			required : "请输入内容文本"
		}
	};
	var offic = {
		type : 'files',
		id : 'attachmentIds',
		name : 'attachmentIds',
		limit : 3,
		allowType : ".pdf,.doc,.docx,.xls,.xlsx,.ppt,.htm,.html,.zip,.rar,.gz,.bz2",// 用,分开
		uploadUrl : "../attachment/multipleUpload",
		convertData : function(data) {
			var arrays = [];
			arrays.push(data.attachment.id);
			arrays.push(data.attachment.attachmentName);
			arrays.push(data.attachment.attachmentUrl);
			return arrays;
		},
		fileInfoUrl : "../attachment/detail",
		dataParam : "attachmentId",
		label : '上传附件',
		detail : "最多上传3个附件"
	};
	if (contentType == 0) {
		items.push(titleImg);
		items.push(titleImgTitle);
		items.push(contentText);
		items.push(offic);
	}
	var formOpts = {
		id : "site_form",// 表单id
		name : "site_form",// 表单名
		method : "post",// 表单method
		action : "./insertOrUpdate",// 表单action
		ajaxSubmit : true,// 是否使用ajax提交表单
		labelInline : true,
		rowEleNum : 1,
		beforeSubmit : function() {

		},
		ajaxSuccess : function() {
			flushGrid();
		},
		submitText : "保存",// 保存按钮的文本
		showReset : true,// 是否显示重置按钮
		resetText : "重置",// 重置按钮文本
		isValidate : true,// 开启验证
		buttonsAlign : "center",
		buttons : [ {
			type : 'button',
			text : '关闭',
			handle : function() {
				flushGrid();
			}
		} ],
		// 表单元素
		buttons : [ {
			type : 'button',
			text : '关闭',
			handle : function() {
				flushGrid();
			}
		} ],
		items : items
	};
	return formOpts;
}


/** **************容表单选项*************** */
function getFileForm(contentType) {
	var items = [
			{
				type : 'hidden',
				name : 'id',
				id : 'id'
			},
			{
				type : 'hidden',
				name : 'contentType',
				id : 'contentType'
			},
			{
				type : 'hidden',
				name : 'channelId',
				id : 'channelId'
			},
			/*{
				type : "tree",
				name : "channelId",
				id : "channelId",
				label : "所属频道",
				url : "../channel/tree?siteId=" + currentSiteId,
				autoParam : [ "id", "name", "pId" ],
				expandAll : false,
				beforeCheck : function(treeId, treeNode) {
					if (treeNode.isParent) {
						return false;
					}
				},
				chkStyle : "radio"
			},*/
			{
				type : 'text',// 类型
				name : 'title',// name
				id : 'title',// id
				label : '名称',// 左边label
				cls : 'input-large',
				rule : {
					required : true,
					maxlength : 64
				},
				message : {
					required : "请输入",
					maxlength : "最多输入64字节"
				}
			},{
				type : 'text',// 类型
				name : 'code',// name
				id : 'code',// id
				label : '文号',// 左边label
				cls : 'input-large',
				rule : {
					required : true,
					maxlength : 100
				},
				message : {
					required : "请输入文号",
					maxlength : "最多输入100字节"
				}
				
			},{
				type : 'text',// 类型
				name : 'filed1',// name
				id : 'filed1',// id
				label : '索引号',// 左边label
				cls : 'input-large',
				rule : {
					required : true,
					maxlength : 100
				},
				message : {
					required : "请输入索引号",
					maxlength : "最多输入100字节"
				}
				
			},
			{
				type : 'text',// 类型
				name : 'keywords',// name
				id : 'keywords',// id
				label : '关键字',// 左边label
				cls : 'input-large'
			},
			{
				type : 'textarea',// 类型
				row : 3,
				name : 'brief',// name
				id : 'brief',// id
				label : '摘要',// 左边label
				cls : 'input-large',
				rule : {
					required : true,
					maxlength : 256
				},
				message : {
					required : "请输入内容信息摘要",
					maxlength : "最多输入256字节"
				}
			},
			{
				type : 'datepicker',//类型
				name : 'publishDate',//name
				id : 'publishDate',//id
				label : '发布时间',//左边label
				cls : 'input-large'
			},{
				type : 'text',// 类型
				name : 'origin',// name
				id : 'origin',// id
				label : '发布机构',// 左边label
				cls : 'input-large',
				rule : {
					required : true,
					maxlength : 12
				},
				message : {
					required : "请输入发布机构信息",
					maxlength : "最多输入12字节"
				}
			},
			{
				type : 'select',
				name : 'templateId',
				id : 'templateId',
				label : '页面模板',
				cls : 'input-large',
				items : [ {
					value : '',
					text : '默认模版'
				} ],
				itemsUrl : "../template/selects?templateType=2&siteId="
						+ currentSiteId
			} ];
	var titleImgTitle = {
		type : 'text',// 类型
		row : 3,
		name : 'titleImageIllustrate',// name
		id : 'titleImageIllustrate',// id
		label : '载体分类',// 左边label
		cls : 'input-large',
		rule : {
			maxlength : 20
		},
		message : {
			maxlength : "最多输入20字节"
		}
	};
	var titleImg1 = {
			type : 'text',// 类型
			row : 3,
			name : 'titleImageUrl',// name
			id : 'titleImageUrl',// id
			label : '组件分类',// 左边label
			cls : 'input-large',
			rule : {
				maxlength : 200
			},
			message : {
				maxlength : "最多输入200字节"
			}
		};
	var contentText = {
		type : 'kindEditor',
		name : 'contentText',
		id : 'contentText',
		label : '内容文本',
		height : "300px",
		width : "500px"
	};
	var offic = {
		type : 'files',
		id : 'attachmentIds',
		name : 'attachmentIds',
		limit : 3,
		allowType : ".pdf,.doc,.docx,.xls,.xlsx,.ppt,.htm,.html,.zip,.rar,.gz,.bz2",// 用,分开
		uploadUrl : "../attachment/multipleUpload",
		convertData : function(data) {
			var arrays = [];
			arrays.push(data.attachment.id);
			arrays.push(data.attachment.attachmentName);
			arrays.push(data.attachment.attachmentUrl);
			return arrays;
		},
		fileInfoUrl : "../attachment/detail",
		dataParam : "attachmentId",
		label : '上传附件',
		detail : "最多上传3个附件"
	};
	
		items.push(titleImg1);
		items.push(titleImgTitle);
		items.push(contentText);
		items.push(offic);
	
	var formOpts = {
		id : "site_form",// 表单id
		name : "site_form",// 表单名
		method : "post",// 表单method
		action : "./insertOrUpdate",// 表单action
		ajaxSubmit : true,// 是否使用ajax提交表单
		labelInline : true,
		rowEleNum : 1,
		beforeSubmit : function() {

		},
		ajaxSuccess : function() {
			flushGrid();
		},
		submitText : "保存",// 保存按钮的文本
		showReset : true,// 是否显示重置按钮
		resetText : "重置",// 重置按钮文本
		isValidate : true,// 开启验证
		buttons : [ {
			type : 'button',
			text : '关闭',
			handle : function() {
				flushGrid();
			}
		} ],
		buttonsAlign : "center",
		// 表单元素
		items : items
	};
	return formOpts;
}
	
	
	
	var fileoptions = {
			url : "./list", // ajax地址
			pageNum : 1,// 当前页码
			pageSize : 5,// 每页显示条数
			idFiled : "id",// id域指定
			showCheckbox : true,// 是否显示checkbox
			checkboxWidth : "3%",
			showIndexNum : true,
			indexNumWidth : "5%",
			pageSelect : [ 2, 15, 30, 50 ],
			cloums : [ {
				title : "文号",
				field : "code",
				sort : true
			}, {
				title : "索引号",
				field : "filed1",
				sort : true
			},{
				title : "名称",
				field : "title",
				sort : true
			}, {
				title : "发文机构",
				field : "origin",
				sort : true
			}, {
				title : "状态",
				field : "status",
				format : function(i, c) {
					if (c.status == "0")
						return "新稿";
					if (c.status == "1")
						return "待审核";
					if (c.status == "2")
						return "已发布";
					if (c.status == "3")
						return "未通过";
					return "--";
				}
			} ],
			actionCloumText : "操作",// 操作列文本
			actionCloumWidth : "30%",
			actionCloums : [ {
				text : "预览",
				cls : "green btn-sm",
				icon : "fa fa-search",
				handle : function(index, data) {
					window.open(data.url);
				}
			}, {

				text : "编辑",
				cls : "green btn-sm",
				visable : function(i, c) {
					if (c.status == "1")
						return false;
					return true;
				},
				handle : function(index, data) {
					// index为点击操作的行数
					// data为该行的数据
					/*modal = $.dmModal({
						id : "siteForm",
						title : "编辑内容信息-" + data.title,
						distroy : true
					});
					modal.show();
					var form = modal.$body.dmForm(getFileForm(data.contentType));*/
					$("#content_grid").html("");
					var form = $("#content_grid").dmForm(getFileForm());
					form.loadLocal({"channelId":currentChannelId});
					form.loadRemote("./load?contentId=" + data.id,function(){
						$("#publishDate").val(dateTostr(data.publishDate));
					});
				}
			}, {
				text : "排序",
				cls : "yellow btn-sm",
				handle : function(i, c) {
					sortfun(i, c,c.title);
				}
			} ],
			tools : [// 工具属性
			{
				text : "添加",
				cls : "btn green btn-sm",
				handle : function(grid) {// 按钮点击事件
					if(currentChannelId==undefined)
						bootbox.alert("请先选择频道");
					else if(currentChannelIsParent)
						bootbox.alert("请选择子频道进行添加!");
					else{
						$("#content_grid").html("");
						var form = $("#content_grid").dmForm(getFileForm());
						form.loadLocal({"channelId":currentChannelId,"contentType":"10"});
					}
						
						//$("#").dmForm()
						//showForm(0, "文本内容");
				}
			},/* {
				text : "移动",
				cls : "btn green btn-sm",
				handle : function(grid) {
					cutOrCopyfun(grid.getSelectIds(), "移动", "radio", "../content/cutTo");
				}
			}, {
				text : "复制",
				cls : "btn green btn-sm",
				handle : function(grid) {
					cutOrCopyfun(grid.getSelectIds(), "复制", "checkbox", "../content/copyTo");
				}
			},*/ {
				text : "提交",
				cls : "btn green btn-sm",
				handle : function(grid) {
					var ids = grid.getSelectIds();
					if (ids.length > 0) {
						var url = "./commit?contentId=" + ids;
						$.ajax({
							url : url,
							type : "POST",
							dataType : "json",
							success : function(res) {
								bootbox.alert(res.msg);
								//grid.reload();
							},
							error : function() {
								bootbox.alert("请求异常！");
							}
						});
					} else {
						bootbox.alert("请选择要提交的项");
					}
				}
			}, {
				text : " 删 除",
				cls : "btn red btn-sm",// 按钮样式
				handle : function(grid) {
					deleteItems(grid.getSelectIds());
				}
			} ],
			search : {
				rowEleNum : 2,
				// 搜索栏元素
				items : [ {
					type : "text",
					label : "名称",
					name : "title",
					placeholder : "输入要搜索的文件的名称"
				} ]
			}
		};

