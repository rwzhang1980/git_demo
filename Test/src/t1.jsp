<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="0" cellspacing="0" cellpadding="3"
		class="table table-bordered" style="background: #fff; width: 100%">
		<thead>
			<tr>
				<th colspan="4" class="text-center">新建总所授权分所投标盖章</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td style="width: 20%">招标项目名称：</td>
				<td style="width: 80%" colspan="3"><select style="width: 100%"
					onchange="checkBeforeTenderDocument()" name="projectId"
					class="select2 select2-hidden-accessible" id="projectId"
					tabindex="-1" aria-hidden="true"><option value="">请选择...</option>
						</select><span class="select2 select2-container select2-container--default"
					dir="ltr" style="width: 100%;"><span class="selection"><span
							class="select2-selection select2-selection--single"
							role="combobox" aria-haspopup="true" aria-expanded="false"
							tabindex="0" aria-labelledby="select2-projectId-container"><span
								class="select2-selection__rendered"
								id="select2-projectId-container" title="请选择...">请选择...</span><span
								class="select2-selection__arrow" role="presentation"><b
									role="presentation"></b></span></span></span><span class="dropdown-wrapper"
						aria-hidden="true"></span></span></td>
			</tr>
			<tr>
				<td style="width: 20%">申请人：</td>
				<td style="width: 30%"><input id="applicantLoginId"
					name="applicantLoginId" value="wang.yaqiu" style="display: none;">
					<input type="text" class="form-control" value="王亚秋"
					readonly="readonly" id="applicantName" name="applicantName">
				</td>
				<td style="width: 20%">申请人手机：</td>
				<td style="width: 30%" class="form-group">
					<div class="input-group">
						<input edit="true" value="13472506565" id="applicantMobile"
							name="applicantMobile" class="form-control" type="text"
							readonly="readonly" disabled="disabled"> <span
							class="input-group-addon"><i class="fa fa-phone"></i></span>
					</div>
				</td>
			</tr>
			<tr>
				<td>申请机构：</td>
				<td>
					<div>
						<input id="applicantSubCompanyId" name="applicantSubCompanyId"
							value="169" style="display: none;">
					</div> <input type="text" class="form-control" value="上海总部"
					readonly="readonly" id="applicantSubCompanyName"
					name="applicantSubCompanyName">
				</td>
				<td>申请部门：</td>
				<td>
					<div>
						<input id="applicantDeptCode" name="applicantDeptCode"
							value="010505290" style="display: none;">
					</div> <input type="text" class="form-control" value="市场与品牌推广部"
					readonly="readonly" id="applicantDeptName" name="applicantDeptName">
				</td>
			</tr>
			<tr>
				<td>项目负责人：</td>
				<td><input type="text" class="form-control" required="true"
					id="projectManagerName" name="projectManagerName"
					readonly="readonly" aria-required="true"></td>
				<td>项目负责人手机：</td>
				<td class="form-group">
					<div class="input-group">
						<input edit="true" id="projectManagerMobile"
							name="projectManagerMobile" class="form-control" type="text"
							readonly="readonly" disabled="disabled"> <span
							class="input-group-addon"><i class="fa fa-phone"></i></span>
					</div>
				</td>
			</tr>
			<tr>
				<td>所属机构：</td>
				<td><input type="text" class="form-control" readonly="readonly"
					id="projectManagerSubCompanyName"
					name="projectManagerSubCompanyName"></td>
				<td>所属部门：</td>
				<td><input type="text" class="form-control" readonly="readonly"
					id="projectManagerDeptName" name="projectManagerDeptName">
				</td>
			</tr>
			<tr>
				<td>分管合伙人：</td>
				<td><input type="text" class="form-control" id="partnerName"
					name="partnerName" readonly="readonly"></td>
				<td>合伙人手机：</td>
				<td class="form-group">
					<div class="input-group">
						<input edit="true" id="partnerMobile" name="partnerMobile"
							class="form-control" type="text" readonly="readonly"
							disabled="disabled"> <span class="input-group-addon"><i
							class="fa fa-phone"></i> </span>
					</div>
				</td>
			</tr>
			<tr>
				<td>是否盖实物章：</td>
				<td><select class="form-control" id="isEntity" name="isEntity"
					edit="true" readonly="readonly" disabled="disabled">
						<option value="0">是</option>
						<option value="1">否</option>
				</select></td>
				<td>是否盖法人签字章：</td>
				<td><select class="form-control" id="isFaRen" name="isFaRen"
					edit="true" readonly="readonly" disabled="disabled">
						<option value="0">无需签字</option>
						<option value="1">手签章</option>
						<option value="2">亲笔签字</option>
				</select></td>
			</tr>
			<tr>
				<td>盖章机构：</td>
				<td class="form-group"><span> <!-- 得到盖章机构列表 --> <select
						name="sealDeptId" id="sealDeptId" class="form-control"
						style="width: 100%;" edit="true" readonly="readonly"
						disabled="disabled">
							<option value="">请选择……</option>
							<option value="0">上海总所</option>
							<option value="1">北京分所</option>
							<option value="2">央企事业总部</option>
							<option value="3">深圳分所</option>
							<option value="4">广东分所</option>
							<option value="5">浙江分所</option>
							<option value="6">江苏分所</option>
							<option value="9">湖北分所</option>
							<option value="10">山西分所</option>
							<option value="7">四川分所</option>
							<option value="8">国际业务北京事业部</option>


					</select>


				</span></td>
				<td>打印机构：</td>
				<td class="form-group"><span> <!-- 得到打印机构列表 --> <select
						name="printDeptId" id="printDeptId" class="form-control"
						style="width: 100%;" edit="true" readonly="readonly"
						disabled="disabled">
							<option value="">请选择……</option>
							<option value="0">上海总所</option>
							<option value="1">北京分所</option>
							<option value="2">央企事业总部</option>
							<option value="3">深圳分所</option>
							<option value="4">广东分所</option>
							<option value="5">浙江分所</option>
							<option value="6">江苏分所</option>
							<option value="7">四川分所</option>
							<option value="8">新疆分所</option>
							<option value="9">山西分所</option>
							<option value="10">山东分所</option>
							<option value="11">江苏江南分所</option>
							<option value="12">云南分所</option>
							<option value="13">福建分所</option>
							<option value="14">厦门分所</option>
							<option value="15">宁波分所</option>
							<option value="16">辽宁分所</option>
							<option value="17">河北分所</option>
							<option value="18">湖南分所</option>
							<option value="19">湖北分所</option>
							<option value="20">贵州分所</option>
							<option value="21">无锡分所</option>
							<option value="22">珠海分所</option>
							<option value="23">重庆分所</option>
							<option value="24">佛山分所</option>
							<option value="25">河南分所</option>
							<option value="26">吉林分所</option>
							<option value="27">海南分所</option>
							<option value="28">东莞分所</option>
							<option value="29">天津分所</option>
							<option value="30">青岛分所</option>
							<option value="31">甘肃分所</option>
							<option value="32">国际业务北京事业部</option>


					</select>


				</span></td>
			</tr>
			<tr>
				<td rowspan="2">打印份数：</td>
				<td rowspan="2" class="form-group"><span> <input
						type="text" edit="true" class="form-control" id="printNumber"
						name="printNumber" readonly="readonly" disabled="disabled">
				</span></td>
				<td>正本份数：</td>
				<td class="form-group"><span> <input type="text"
						edit="true" class="form-control" id="zb" name="zb"
						readonly="readonly" disabled="disabled">
				</span></td>
			</tr>
			<tr>
				<td>副本份数：</td>
				<td><input type="text" edit="true" class="form-control" id="fb"
					name="fb" readonly="readonly" disabled="disabled"></td>
			</tr>
			<tr>
				<td>盖章说明：</td>
				<td colspan="3"><textarea edit="true" name="sealMessage"
						id="sealMessage" class="form-control" cols="20" rows="5"
						readonly="readonly" disabled="disabled"></textarea></td>
			</tr>
			<tr>
				<td>投标授权书文件（仅供以分所名义投标总所授权书）<br>
				<span style="color: red;">如盖电子章请上传pdf格式文件</span>：
				</td>
				<td colspan="3"><label>上传附件</label>
					<div>
						<input name="sealFiles" id="sealFiles" type="hidden">
					</div>
					<!-- files表中的id -->
					<div style="margin-top: 7px; margin-right: 4px;">
						<div id="uploadfile" name="uploadfile"></div>
					</div>
					<table class="ica_table_filelist" id="uploadedFiles" width="80%"
						cellspacing="0" cellpadding="0"></table></td>
			</tr>
			<tr>
				<td colspan="4" style="text-align: center">
					<div style="width: 100%; margin: 0 auto;">
						<input edit="true" type="button" disabled="disabled"
							id="submitBtn" name="submitBtn" value="提交至OA审批"
							style="width: 60%;" onclick="formSubmit();"
							class="btn btn-success" readonly="readonly"> <input
							id="rtBtn" type="reset" onclick="javascript:history.go(-1);"
							value="返回" style="width: 45%; display: none;"
							class="btn btn-primary">
					</div>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>