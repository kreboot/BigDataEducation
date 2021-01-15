<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>파일 다중 업로드(cos.jar 이용)</title>
</head>
<body>
	<!-- enctype 속성 : 전송타입 설정, 
						파일을 전송하기 위해서는 반드시 multipart/form-data로 지정함. -->
	<form action="fileupload_cos_2_process.jsp" method="post" name="fileForm"
			enctype="multipart/form-data">
		<p><b>이 름1 : </b><input type="text" name="name1"/></p>
		<p><b>제 목1 : </b><input type="text" name="title1"/></p>
		<b>파 일1 : </b><input type="file" name="filename1"/>
		
		<p><b>이 름2 : </b><input type="text" name="name2"/></p>
		<p><b>제 목2 : </b><input type="text" name="title2"/></p>
		<b>파 일2 : </b><input type="file" name="filename2"/>
		
		<p><b>이 름3 : </b><input type="text" name="name3"/></p>
		<p><b>제 목3 : </b><input type="text" name="title3"/></p>
		<b>파 일3 : </b><input type="file" name="filename3"/>
		
		<p><input type="submit" value="파일 업로드"/></p>
	</form>
</body>
</html>