<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
ContentType: application/x-www-form-urlencoded; charset=UTF-8
x-waple-authorization: NDQxLTE1MDYwNTU5NDczODEtNzVlZTY1ZDMtNmRiMC00ZTRlLWFlNjUtZDM2ZGIwYWU0ZTM0
<title>Insert title here</title>
</head>
<body>




</body>
<script>
$(document).ready(function(){
	var param = {};
	param = JSON.stringify(param);
	var a = {
	        type     : "GET"
	    	    ,   url      : "${rootPath}/user/list"
	    	    ,   dataType : "json" 
	    	    ,   beforeSend: function(xhr) {
	    	        xhr.setRequestHeader("Accept", "application/json");
	    	        xhr.setRequestHeader("Content-Type", "application/json");
	    	    }
	    	    ,   data     : param
	    	    ,   success : function(result){
	    	    	$('#table').bootstrapTable('destroy');
	    	    	var userList = result.userList;
	    	    	var result = "";
	    	    	}
	    	    	$("#result_tbody").html(result);
	    	    }
	    	    ,   error : function(xhr, status, e) {
	    		    	alert("에러 : "+e);
	    		},
	    		done : function(e) {
	    		}
	    		};
	$.ajax(a);
})
</script>
</html>