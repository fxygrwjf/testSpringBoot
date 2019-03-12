<%@page isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>持名法州后台管理中心</title>
			
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
	<link rel="icon" href="img/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/common.css" type="text/css"></link>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/login.css" type="text/css"></link>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/common.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/themes/IconExtension.css">   
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>   
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.easyui.min.js"></script>  
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui-lang-zh_CN.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/datagrid-detailview.js"></script>
	<script type="text/javascript">
		$(function(){
			//点击更换验证码：
			$("#captchaImage").click(function(){//点击更换验证码
				$(this).prop("src","image?time="+(new Date()).getTime());
			});
			//登录表单验证
				$("#loginform").form({
					url:'${pageContext.request.contextPath }/admin/login',
					onSubmit:function(){
						return $("#loginform").form('validate');
					},
					success:function(result){
						if(result==1){
							//window.open='/cmfz_wangjianfei/jsp/main.jsp';
							window.location.href='/cmfz_wangjianfei/jsp/main.jsp';
						 }else if(result==2 || result==4){
							$.messager.alert('警告','验证码输入不正确','warning');
						}else{
							$.messager.alert('警告','账号或密码输入不正确','warning');
						} 
					}
				});
				$("#username").textbox({
					required:true,
					validType:'',
					missingMessage:'username不能为空'
				});
				$("#password").textbox({
					required:true,
					validType:'',
					missingMessage:'password不能为空'
				});
				$("#str").textbox({
					required:true,
					validType:'',
					missingMessage:'验证码不能为空'
				});
		});
	</script>
</head>
<body>
	
		<div class="login" >
			<form id="loginform"  method="post">
				
				<table>
					<tbody>
						<tr>
							<td width="190" rowspan="2" align="center" valign="bottom">
								<img src="${pageContext.request.contextPath }/image/header_logo.gif" />
							</td>
							<th>
								用户名:
							</th>
							<td>
								<input name="username" id="username" class="easyui-textbox" maxlength="20"/>
							</td>
					  </tr>
					  <tr>
							<th>
								密&nbsp;&nbsp;&nbsp;码:
							</th>
							<td>
								<input name="password" id="password" class="easyui-textbox" maxlength="20" autocomplete="off"/>
							</td>
					  </tr>
					
						<tr>
							<td>&nbsp;</td>
							<th>验证码:</th>
							<td>
								<input name="str" id="str" class="easyui-textbox" maxlength="4" autocomplete="off"/>
								<img id="captchaImage" class="captchaImage" src="${pageContext.request.contextPath }/image"><a id="captchaImage" title="点击更换验证码"/>
							</td>
						</tr>					
					<tr>
						<td>
							&nbsp;
						</td>
						<th>
							&nbsp;
						</th>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<th>&nbsp;</th>
						<td>
							<input type="submit" class="loginButton" value="登录"><input type="button" class="homeButton" value="注册" onclick="location.href='${pageContext.request.contextPath }/regist.jsp'">
						</td>
					</tr>
				</tbody></table>
				<div class="powered">COPYRIGHT © 2008-2017.</div>
				<div class="link">
					<a href="http://www.chimingfowang.com/">持名佛网首页</a> |
					<a href="http://www.chimingbbs.com/">交流论坛</a> |
					<a href="">关于我们</a> |
					<a href="">联系我们</a> |
					<a href="">授权查询</a>
				</div>
			</form>
		</div>
</body>
</html>