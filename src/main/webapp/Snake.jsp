<%@page import="com.bit.gamecenter.vo.RankVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Snake</title>
	<style>
	html, body{
		margin: 0px;
        padding: 0px;
		height: 100%;
	}
		.main{
            position: absolute;
            margin: 0px;
            padding: 0px;
            top: 50%;
            left: 50%;
            transform: translateX(-50%) translateY(-50%);
        }
        .rank{
        	position: absolute;
            margin: 0px;
            padding: 0px;
            top: 30%;
            left: 80%;
            transform: translateX(-50%) translateY(-50%);
            color: white;
        
        }
        .bg{
        	position: absolute;
        	background: linear-gradient(to right, #e91e63, blue);
            margin: 0px;
            padding: 0px;
            height: 100%;
            width: 100%;
            
        }
        h1{
        margin: 0px;
        padding: 0px;	       
         font-size: 100px;
         color: white;
        }
        
	</style>
</head>
<body>
	<!-- 기본 게임 canvas 생성 -->
	<div class="bg">
		<h1>Snake Game</h1>
	</div>
	
	<div class="main">
	<canvas id="gc" width="400" height="400"></canvas>
	</div>
	<script>
		//기초 세팅(켄버스잡아주기, 이벤트잡기, 게임시간설정)
        window.onload = function () {
            canv = document.getElementById("gc");
            ctx = canv.getContext("2d");
            document.addEventListener("keydown", keyPush);
            setInterval(game, 1000/15);
        }
        //초기 시작값 설정(10,10)
        px = py = 10;
        //전체 게임크기 (20)
        gs = tc = 20;
        //초기 red point 설정
        ax = ay = 15;
        //움직임 설정
        xv = yv = 0;
        //기본 길이 및 배열생성
        trail = [];
        tail = 5;
        //canvas 밖으로 이동시 반대편에서 등장
        function game() {
            px += xv;
            py += yv;
            if (px < 0) {
                px = tc - 1;
            }
            if (px > tc - 1) {
                px = 0;
            }
            if (py < 0) {
                py = tc - 1;
            }
            if (py > tc - 1) {
                py = 0;
            }
        
         //켄버스 바탕
            ctx.fillStyle = "black";
            ctx.fillRect(0, 0, canv.width, canv.height);
		//자신의 색상, 기본 
            ctx.fillStyle = "lime";
            for(var i=0;i<trail.length;i++) {
                ctx.fillRect(trail[i].x * gs, trail[i].y * gs, gs-2, gs-2);
                
                if(tail>5&&trail[i].x==px && trail[i].y==py) {
                	
                	insertrank(tail);
                }
            }
			//움직임에 맞춰서 trail에 좌표추가
            trail.push({ x: px, y: py });
            //길이에 따라 trail 좌표삭제
            while (trail.length > tail) {
                trail.shift();
            }
            // red point 와 만날시 꼬리길이추가 & 랜덤위치에 red point 좌표생성
            if (ax == px && ay == py) {
                tail++;
                ax = Math.floor(Math.random() * tc);
                ay = Math.floor(Math.random() * tc);
            }
			// red 포인트 생성(초기위치 15,15)
            ctx.fillStyle = "red";
            ctx.fillRect(ax * gs, ay * gs, gs - 2, gs - 2);
            }
        //이벤트 인식, 움직임 좌표설정, 움직임 반대방향시 실행안함
        function keyPush(evt) {
        	switch (evt.keyCode) {
                case 37:
                	if(xv!=1){
                    xv = -1; yv = 0;
                    }
                    break;
                case 39:
                	if(xv!=-1){
                    xv = 1; yv = 0;
                    }
                    break;
                case 38:
                	if(yv!=1){
                    xv = 0; yv = -1;
                    }
                    break;
                case 40:
                	if(yv!=-1){
                    xv = 0; yv = 1;
                    }
                    break;
            }
        }
        function insertrank(tail){
        	window.location.href="Gameover.do?score="+tail;
        }
    </script>
    
    <div class="rank">
	<table class="rankboard" border="5" cellpadding="0" cellspacing="0" width=500px>
		<tr>
				<td>Score</td>
				<td>regdate</td>
				<td>Id</td>
		</tr>
		<%List<RankVO> list = (List) request.getAttribute("list");
		for(RankVO vo: list){
	%>
		<tr>
				<td><%=vo.getScore() %></td>
				<td><%=vo.getRegdate() %></td>
				<td><%=vo.getId() %></td>
		</tr>
	<%} %>
	</table>
	</div>
</body>
</html>