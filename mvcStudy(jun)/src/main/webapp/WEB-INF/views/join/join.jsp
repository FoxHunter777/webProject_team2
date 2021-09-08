<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div>
        <form id= "join_form" method="POST" action="/joinInsert">
        <label>id</label>
        <input type="hidden" id ="join_id_check" value=" ${empty idCheck_flag ? false : idCheck_flag}">
        <input type = "text" id ="join_id" name="join_id" value="${empty join_id ? '' : join_id}"><br>
        <label>password</label>
        <input type="password" name="join_pwd"><br>
        <label>Re_password</label>
        <input type="password" name="join_repwd"><br>
        <label>name</label>
        <input type="text" name="join_name"><br>
        <label>email</label>
        <input type="email" name="join_email"><br>
        <button type="button" id= "join_submit">가입하기</button>
         </form>   
    </div>  
    <script>
        const join_form = document.querySelector("#join_submit");
        const join_submit_button = document.querySelector("#join_submit");
		
        const join_id = document.querySelector("#join_id");
        const join_submit_button = document.querySelector("#join_submit");
        join_id.onblur = () =>{
        join_id.href ="/joinIdcheck?join_id=" + join_id.value; 
        }
        
        join_submit_button.onclick = () =>{
            join_form.submit();
        }
    </script>  
</body>
</html>