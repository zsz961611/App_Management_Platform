<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>后台管理系统</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath }/statics/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath }/statics/css/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="https://colorlib.com/polygon/gentelella/css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath }/statics/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="${pageContext.request.contextPath }/backendLogin/dologin.html" method="post">
              <h1>后台管理系统</h1>
              <div>
                <input type="text" class="form-control" name="userCode" placeholder="请输入用户名" required="" />
              </div>
              <div>
                <input type="password" class="form-control" name="userPassword" placeholder="请输入密码" required="" />
              </div>
              <span>${message}<br>${YZMerr}</span>
              <div>
              	<button type="submit" class="btn btn-success">登     录</button>
              	<button type="reset" class="btn btn-default">重　填</button>
              </div>
			<!--这是看不清刷新一下的函数-->  
    <script>  
    function changeVerifyCode(){  
        document.getElementById("validateCodeImg").src="../dev/YZM?t="+Math.random();        
    }  
    </script>  
    <!-- 这是输入验证码的输入框-->  
    <input id=txtSN size=4 name=txtSN>  
    <!-- 这是显示的验证码，以图片显示-->  
    <!-- src的路劲为servlet的路劲 -->  
              <img src="${pageContext.request.contextPath }/dev/YZM" border=0 id="validateCodeImg" style="height: 25px; width: 57px"/><a href="#" onclick="changeVerifyCode()">看不清？换一张</a>
              <div class="clearfix"></div>

              <div class="separator">
                <div>
                  <p>©2016 All Rights Reserved. </p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>