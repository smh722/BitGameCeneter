<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/styles.css" type="text/css" charset="utf-8" />
<title>회원가입</title>

</head>
<body>

				<center>
					<h2>사용자 등록</h2>
					<hr>
					<form action="joininsert.do">
						<table border="1" cellpadding="0" cellspacing="0" width=700px>
							<tr>
								<td width=20%>아이디</td>
								<td >&nbsp;&nbsp;<input type="text" name="id" size="20" /></td>
							</tr>
							<tr>
								<td >비밀번호</td>
								<td >&nbsp;&nbsp;<input type="password" name="password" size="20" /></td>
							</tr>
							<tr>
								<td >이름</td>
								<td >&nbsp;&nbsp;<input type="text" name="name" size="20" />
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
								<input type="submit" class="btn80 rounded" value="사용자 등록" /></td>
							</tr>
						</table>
					</form>
					<hr>
				</center>

</body>
</html>