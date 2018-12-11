<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Game Over</title>
	<style type="text/css">
	html, body{
		margin: 0px;
        padding: 0px;
		height: 100%;
		}
	 .bg{
        	position: absolute;
        	background: linear-gradient(to right, #e91e63, blue);
            margin: 0px;
            padding: 0px;
            height: 100%;
            width: 100%;
            
        }
	
	p{
		font-size: 100px;
		color: red;
	}
	a{
		font-size: 30px;
		color: white;
	}
	</style>
</head>
<body>
	<div class="bg">
	
		<center>
		<p>Game Over</p>
		
		<a href="game.do">ReGame</a>
		</center>
		
	
	</div>
</body>
</html>