<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax_test</title>
</head>
<body>
	<h1>GET방식의 요청</h1>
	<button onclick = "sendGet()">GET방식으로 요청 보내기</button>
	<button onclick = "sendPost()">POST 방식으로 요청 보내기</button>
	<p id ="text">본문~~~~~~~~~<p>
</body>
<script>
	function sendGet(){
		let xhr = new XMLHttpRequest();
		xhr.open("GET","ajax_do.jsp?data1=10&data2=20",true)
		xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200){
				document.getElementById("text").innerHTML = xhr.responseText;
			}
		}
	}
	
	function sendPost(){
		let xhr = new XMLHttpRequest();
		xhr.open("POST","ajax_do.jsp",true)
		xhr.setRequestHeader("content-Type","application/x-www-form-urlencoded");
		xhr.send("data1=10&data2=20");
		xhr.onreadystatechange = function(){
			if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200){
				document.getElementById("text").innerHTML = xhr.responseText;
			}
		}
	}
</script>
</html>