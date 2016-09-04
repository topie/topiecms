/** ************grid表格************ */
;var in_grid;
var voteOptions = {
	url : "../vote/list", // ajax地址
	pageNum : 1,// 当前页码
	pageSize : 5,// 每页显示条数
	idFiled : "id",// id域指定
	showCheckbox : true,// 是否显示checkbox
	checkboxWidth : "3%",
	showIndexNum : true,
	indexNumWidth : "5%",
	pageSelect : [ 5, 15, 30, 50 ],
	cloums : [ {
		title : "标题",
		field : "title"
	}, {
		title : "发布时间",
		field : "publishTime"
	},{
		title : "状态",
		field : "status",
		format : function(i, c) {
			if (c.status == "1")
				return "新建";
			if (c.status == "2")
				return "待审核";
			if (c.status == "3")
				return "退回";
			if (c.status == "4")
				return "通过";
			if (c.status == "5")
				return "已发布";
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
			window.open(data.filed1);
		}
	},
	{
		text : "管理选项",
		cls : "green btn-sm",
		handle : function(index, data) {
			modal = $.dmModal({
				id : "siteForm",
				title : "编辑-" + data.title,
				distroy : true
			});
			modal.show();
			in_grid = modal.$body.dmGrid(getoptions(data.id));
		}
	},{

		text : "编辑",
		cls : "green btn-sm",
		visable : function(i, c) {
			return true;
		},
		handle : function(index, data) {
			// index为点击操作的行数
			// data为该行的数据
			modal = $.dmModal({
				id : "siteForm",
				title : "编辑信息-" + data.title,
				distroy : true
			});
			modal.show();
			var form = modal.$body.dmForm(getVoteForm());
			form.loadRemote("../vote/load?id=" + data.id);
		}
	}
	
	],
	tools : [// 工具属性
	{
		text : "添加",
		cls : "btn green btn-sm",
		handle : function(grid) {// 按钮点击事件
			if(currentChannelId==undefined)
				bootbox.alert("请先选择频道");
			else{
				showForm(9,"投票信息")
				//form.loadRemote("../vote/load?videoId=" + data.id);
				
			}
		}
	},/*{
		text : "移动",
		cls : "btn green btn-sm",
		handle : function(grid) {
			cutOrCopyfun(grid.getSelectIds(), "移动", "radio", "../video/cutTo");
		}
	}, {
		text : "复制",
		cls : "btn green btn-sm",
		handle : function(grid) {
			cutOrCopyfun(grid.getSelectIds(), "复制", "checkbox", "../video/copyTo");
		}
	},*/ {
		text : "提交",
		cls : "btn green btn-sm",
		handle : function(grid) {
			var ids = grid.getSelectIds();
			if (ids.length > 0) {
				var url = "../vote/check?voteIds=" + ids;
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
	} ]
	
};

function getVoteForm() {
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
			{
				type : 'text',// 类型
				name : 'title',// name
				id : 'title',// id
				label : '标题',// 左边label
				cls : 'input-large',
				rule : {
					required : true,
					maxlength : 50
				},
				message : {
					required : "请输入标题",
					maxlength : "最多输入50字符"
				}
			},
			{
				type : 'textarea',// 类型
				name : 'description',// name
				id : 'description',// id
				label : '说明',// 左边label
				cls : 'input-large'
			},{
				type : 'radioGroup',// 类型
				name : 'checkType',// name
				id : 'checkType',// id
				label : '类型',// 左边label
				items:[{value:'radio',text:'单选'},{value:'checkbox',text:'多选'}],
				cls : 'input-large',
				rule : {
					required : true,
					maxlength : 50
				},
				message : {
					required : "请输入标题",
					maxlength : "最多输入50字符"
				}
			},
			{
				type : 'select',// 类型
				name : 'filed2',// name
				id : 'filed2',// id
				label : '模板',// 左边label
				items : [ {
					value : '',
					text : '默认模板'
				} ],
				itemsUrl : "../template/selects?templateType=2&siteId="
						+ currentSiteId,
				cls : 'input-large'
			},{
				type : 'datepicker',// 类型
				name : 'publishTime',// name
				id : 'publishTime',// id
				label : '发布时间',// 左边label
				cls : 'input-large'
			} ];

	//items.push(offic);
	var formOpts = {
		id : "media_form",// 表单id
		name : "media_form",// 表单名
		method : "post",// 表单method
		action : "../vote/insertOrUpdate",// 表单action
		ajaxSubmit : true,// 是否使用ajax提交表单
		labelInline : true,
		rowEleNum : 1,
		beforeSubmit : function() {

		},
		ajaxSuccess : function() {
			modal.hide();
			grid.reload();
		},
		submitText : "保存",// 保存按钮的文本
		showReset : true,// 是否显示重置按钮
		resetText : "重置",// 重置按钮文本
		isValidate : true,// 开启验证
		buttons : [ {
			type : 'button',
			text : '关闭',
			handle : function() {
				modal.hide();
			}
		} ],
		buttonsAlign : "center",
		// 表单元素
		items : items
	};
	return formOpts;
};
var optFormOpt = {
		id : "media_form",// 表单id
		name : "media_form",// 表单名
		method : "post",// 表单method
		action : "../vote/insertOrUpdateOpt",// 表单action
		ajaxSubmit : true,// 是否使用ajax提交表单
		labelInline : true,
		rowEleNum : 1,
		beforeSubmit : function() {

		},
		ajaxSuccess : function() {
			in_modal.hide();
			in_grid.reload();
		},
		submitText : "保存",// 保存按钮的文本
		showReset : true,// 是否显示重置按钮
		resetText : "重置",// 重置按钮文本
		isValidate : true,// 开启验证
		buttons : [ {
			type : 'button',
			text : '关闭',
			handle : function() {
				in_modal.hide();
			}
		} ],
		buttonsAlign : "center",
		// 表单元素
		items : [{
			type : 'hidden',
			name : 'id',
			id : 'id'
		},
		{
			type : 'hidden',
			name : 'voteId',
			id : 'voteId'
		},
		{
			type : 'text',// 类型
			name : 'option',// name
			id : 'option',// id
			label : '选项',// 左边label
			cls : 'input-large',
			rule : {
				required : true,
				maxlength : 20
			},
			message : {
				required : "请输入",
				maxlength : "最多输入20字符"
			}
		}]
	};
function getoptions(id){
	var opt = {
			url : "../vote/listOpt?voteId="+id, // ajax地址
			pageNum : 1,// 当前页码
			pageSize : 5,// 每页显示条数
			idFiled : "id",// id域指定
			showCheckbox : true,// 是否显示checkbox
			checkboxWidth : "3%",
			showIndexNum : true,
			indexNumWidth : "5%",
			pageSelect : [ 5, 15, 30, 50 ],
			cloums : [ {
				title : "投票项 ",
				field : "option"
			}, {
				title : "投票量",
				field : "clickTimes"
			} ],
			actionCloumText : "操作",// 操作列文本
			actionCloumWidth : "30%",
			actionCloums : [{

				text : "编辑",
				cls : "green btn-sm",
				visable : function(i, c) {
					return true;
				},
				handle : function(index, data) {
					// index为点击操作的行数
					// data为该行的数据
					in_modal = $.dmModal({
						id : "siteForm",
						width:"500px",
						title : "编辑-" + data.title,
						distroy : true
					});
					in_modal.show();
					var form = in_modal.$body.dmForm(optFormOpt);
						form.loadLocal(data);
				}
			},{
				text : "删除",
				cls : "red btn-sm",
				visable : function(i, c) {
					return true;
				},
				handle : function(index, data) {
					bootbox.confirm("确定删除?",function(r){
						if(r){
						
					$.ajax({
						url:"../vote/deleteOpt?id="+data.id,
						type:"POST",
						success:function(res){
							in_grid.relaod();
						} ,
						error:function(){
							alert("错误");
						}
					});	
						}
					})
				}
			}
			
			],
			tools : [// 工具属性
			{
				text : "添加",
				cls : "btn green btn-sm",
				handle : function(grid) {// 按钮点击事件
					in_modal = $.dmModal({
						id : "siteForm",
						title : "添加",
						width:"500px",
						distroy : true
					});
					in_modal.show();
					var form = in_modal.$body.dmForm(optFormOpt);
						form.loadLocal({voteId:id});
					
				}
			}/*{
				text : "移动",
				cls : "btn green btn-sm",
				handle : function(grid) {
					cutOrCopyfun(grid.getSelectIds(), "移动", "radio", "../video/cutTo");
				}
			}, {
				text : "复制",
				cls : "btn green btn-sm",
				handle : function(grid) {
					cutOrCopyfun(grid.getSelectIds(), "复制", "checkbox", "../video/copyTo");
				}
			},*/  ]
			
	};
	return opt;
}