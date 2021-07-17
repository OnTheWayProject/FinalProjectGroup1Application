<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<style>
legend {
	font-weight: bold;
	color: black;
	background-color: white;
	border: 5px solid #cccccc;
	padding: 10px 8px;
}

fieldset legend {
	background: #369;
	color: #FFF;
	font-weight: 800;
	text-align: center;
	white-space: nowrap;
}
</style>


<meta charset="UTF-8">
<title>Register Form</title>
</head>
<body BGCOLOR="#FFD9EC">

	<div align="center">
		<fieldset style="width: 1000px;">
			<legend align="center">On The Way 會員註冊</legend>

			<form:form method="post" modelAttribute="customer"
				enctype='multipart/form-data'>


				<table cellspacing="2" cellpadding="1" border="1" width="85%">
					<tr>
						<!-- label會自己幫我生出for -->
						<td><form:label path="customerName">姓名:</form:label></td>
						<td><form:input id= "idName" path="customerName" type="text" size="10"
								maxlength="10" placeholder="請輸入姓名" />
								<span id='NameResult'></span>
								</td>
					</tr>
					<tr>

						<td><form:label path="account">帳號:</form:label><br></td>
						<td><form:input id="idAccount" path="account" type="text" size="10"
								maxlength="10" placeholder="請輸入帳號" />
							<button class="inputbutton" type="button" id="accountbutton">查看帳號是否已被註冊</button>
							<span id='AccountResult'></span>
							<br>
							<p class="rule">
								(1.不可空白，2.至少6個字且字首為英文字母，其餘英數字混合，3.不可包含特殊字元[!@#$%^&*]與中文字)</p></td>
					</tr>
					<tr>
						<td><form:label path="password">密碼:</form:label></td>
						<td><form:input id="idPassword" path="password" type="password" size="10"
								maxlength="10" placeholder="請輸入密碼" />
								<span id='PasswordResult'></span>
							<p class="rule">(1.不可空白，2.至少6個字且必須 包含英文字母、數字、特殊字元[!@#$%^&*])</p>
						</td>
					</tr>
					<tr>
						<td><form:label path="email">E-mail:</form:label></td>
						<td><form:input id="idEmail" path="email" type="text" size="30"
								maxlength="20" placeholder="請輸入信箱" />
							<button class="inputbutton" type="button" id="emailbutton">查看信箱是否已被註冊</button>
							<span id='EmailResult'></span>
							<br/>
							<p class="rule">(不可空白)</p></td>
					</tr>
					<tr>
						<td><form:label path="birthday">生日:</form:label></td>
						<td><form:input id="idBday" path="birthday" type="date" size="20"
								maxlength="20" />
								<span id='BdayResult'></span>
							<p class="rule">(不可空白)</p></td>
					</tr>
					<td><form:label path="gender">性別:</form:label></td>
					<td><form:radiobutton path="gender" value="男" label="男"
							checked="true" /> <form:radiobutton path="gender" value="女"
							label="女" /></td>
					<tr>
						<td><form:label path="cellphone">聯絡電話:</form:label></td>
						<td><form:input id="idPhone" path="cellphone" type="text" size="20"
								maxlength="20" placeholder="請輸入手機" />
							<button class="inputbutton" type="button" id="cellphonebutton">查看電話是否已被註冊</button>
							<span id='PhoneResult'></span>
							<br />
							<p class="rule">(不可空白)</p></td>
					</tr>
					<tr>
						<td><form:label path="address" width="150">聯絡地址:</form:label></td>
						<td><form:input id="idAddress" path="address" type="text" size="50"
								maxlength="50" placeholder="請輸入地址" />
								<span id='AddressResult'></span>
								</td>
					</tr>

					<tr>
						<td><form:label path="customerImage">上傳個人圖片:</form:label></td>
						<td><form:input id="file-upload" path="customerImage"
								type='file' /></td>
						<br>
					</tr>

				</table>

				<br>

				<!-- <button onclick="window.location.href='./register.controller';" >送出</button> -->
				<form:button value="Send" id="sendData">送出</form:button>
			</form:form>
		</fieldset>

		<%-- <a href="<c:url value='/loginMainPage.controller'/>">返回登入頁面</a><br> --%>
		<%-- <button onclick="window.location.href='<c:url value='/loginMainPage.controller'/>'; return false;" >返回登入頁面</button> --%>

		<button
			onclick="window.location.href='loginMainPage.controller'; return false;">返回登入頁面</button>
		<input type="reset" value="重置" />
	</div>

	<script>
	
	window.addEventListener("load", function(){
		
		var dupflag1 = false;
		var dupflag2 = false;
		var dupflag3 = false;

		//檢查帳號信箱電話重複的controller mapping
		const targetlink1 = '<c:url value="/Ajax/Elena/checkduplicateaccount"/>';
		const targetlink2 = '<c:url value="/Ajax/Elena/checkduplicatecellphone"/>';
		const targetlink3 = '<c:url value="/Ajax/Elena/checkduplicateemail"/>';
		
		//檢查帳號信箱電話重複的按鈕
		let accountbutton = document.getElementById("accountbutton");
		let emailbutton = document.getElementById("emailbutton");
		let cellphonebutton = document.getElementById("cellphonebutton");
		
		//讀取使用者輸入的值
		var name = document.getElementById("idName").value;
		var account = document.getElementById("idAccount").value;
		var password = document.getElementById("idPassword").value;
		var email = document.getElementById("idEmail").value;
		var bday = document.getElementById("idBday").value;
		var cellphone = document.getElementById("idPhone").value;
		var address = document.getElementById("idAddress").value;
		
		var hasError = false; // 設定判斷有無錯誤的旗標
		var div0 = document.getElementById('NameResult');
		var div1 = document.getElementById('AccountResult');
		var div2 = document.getElementById('PasswordResult');
		var div2 = document.getElementById('EmailResult');
		var div2 = document.getElementById('BdayResult');
		var div2 = document.getElementById('PhoneResult');
		var div2 = document.getElementById('AddressResult');
		
		var sendData = document.getElementById("sendData");
		sendData.onclick = function() {
			
			
			
			
		}
		
		
		
		
		
		accountbutton.onclick = function(){
			let xhr = new XMLHttpRequest();
			xhr.open("POST", targetlink1, true);
		   	xhr.setRequestHeader("Content-type", "application/json");
		   	xhr.send("account" + account);
		   	if (xhr.readyState == 4 && xhr.status == 200){
		   		
		   	}

		}
	})
	</script>


</body>
</html>