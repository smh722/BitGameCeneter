<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="css/styles.css" type="text/css" charset="utf-8" />

<title>�α���������</title>
</head>
<body>
	<center>
		<p style="font-size: 70px; color: red;"></p>
	</center>
	<center>
		<h2>�α���</h2>
		<hr>
		<form action="join.do" method="post">
			<table border="1" cellpadding="0" cellspacing="0" width=700px>
				<tr>
					<td width=20%>���̵�</td>
					<td>&nbsp;&nbsp;<input type="text" name="id" size="20" /></td>
				</tr>
				<tr>
					<td>��й�ȣ</td>
					<td>&nbsp;&nbsp;<input type="password" name="password" size="20" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					<input type="submit" class="btn" value="�α���" /></td>
				</tr>
			</table>
			<%if(session.getAttribute("error")!=null){%>
			<%=session.getAttribute("error") %>
			<% }%></br>
			<a href="joinform.jsp" class="btn_a rounded">ȸ������</a>
			<a href="findpassword.jsp" class="btn_a rounded">��й�ȣã��</a>
		</form>
		<hr>
	</center>
</body>
</html>