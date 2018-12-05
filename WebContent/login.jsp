<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>解忧杂货店</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="assets/css/form-elements.css">
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="assets/js/jquery-1.11.1.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.backstretch.min.js"></script>
<script src="assets/js/scripts.js"></script>
<!-- //js -->
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- header -->
	<jsp:include page="/public/header.jsp"></jsp:include>
<!-- //header -->
<!-- navigation -->

<!-- //navigation -->
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>主页</a></li>
				<li class="active">登录页面</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- login -->
	<div class="login">
		<div class="container">
			<h2>登录</h2>
		
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
				<form action="user.s" method="post">
					<input type="hidden" name="op" value="login">
					<input type="text" placeholder="账号" required=" " name="useraccount" 
					value="${param.useraccount}">
					<input type="password" placeholder="密码" required=" " name="userpwd" >
					<div class="forgot">
						<a class="btn btn-link-1 launch-modal" href="#" data-modal-id="modal-register">忘记密码?</a>
					</div>
					<input type="submit" value="登录">
				</form>
			</div>
			<h4>新用户看这里</h4>
			<p><a href="registered.jsp">点击注册</a> (或) 回到 <a href="index.jsp">主页<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
		</div>
	</div>
<!-- //login -->
<!-- //footer -->
<jsp:include page="/public/end.jsp"></jsp:include>
<!-- //footer -->	
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<!-- top-header and slider -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<script src="js/minicart.min.js"></script>
<script>
	// Mini Cart
	paypal.minicart.render({
		action: '#'
	});

	if (~window.location.search.indexOf('reset=true')) {
		paypal.minicart.reset();
	}
</script>
<!-- main slider-banner -->
<script src="js/skdslider.min.js"></script>
<link href="css/skdslider.css" rel="stylesheet">
<script type="text/javascript">
		jQuery(document).ready(function(){
			jQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});
						
			jQuery('#responsive').change(function(){
			  $('#responsive_wrapper').width(jQuery(this).val());
			});
			
		});
</script>	
<!-- //main slider-banner --> 

<!-- 忘记密码弹窗 -->
<div class="modal fade" id="modal-register" tabindex="-1" role="dialog" aria-labelledby="modal-register-label" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
				<h3 class="modal-title" id="modal-register-label">找回密码</h3>
				<p>Please enter your information:</p>
			</div>
			
			<div class="modal-body">	
             <form role="form" action="user.s" method="post" class="registration-form">
             <input type="hidden" name="op" value="updatepwd">
             	<div class="form-group">
             		<label class="sr-only" for="account">账号</label>
                 	<input type="text" name="account" placeholder="账号..." value="${param.account}" required=" " class="form-first-name form-control" id="account">
                 </div>
                 <div class="form-group">
                 	<label class="sr-only" for="email">邮箱</label>
                 	<input type="email" name="email" placeholder="电子邮箱..." value="${param.email}" required=" " class="form-email form-control" id="email">
                 </div>
                 <div class="form-group">
                 	<label class="sr-only" for="newpwd">新密码</label>
                 	<input type="password" name="newpwd" placeholder="新密码..." required=" " class="form-last-name form-control" id="newpwd">
                 </div>
                 <div class="form-group">
                 	<label class="sr-only" for="checkword">验证码</label>
                 	<input type="text" name="checkword" placeholder="验证码..." required=" " class="form-email form-control" id="checkword">
                 </div>
                 <button class="btn1" style="margin-left: 2%" onclick="code()">获取验证码</button>
                 <button type="submit" class="btn1" style="margin-left: 5%">确认修改</button>
             </form>
			</div>
		</div>
	</div>
</div>

<script>
function code(){
	var email = $('#email');
	$.ajax({
        type: "POST",
        url: "user.s?op=send",
        data: email,
        cache: false, //不缓存此页面   
        success: function () {
        	alert("验证码已发送，请查收！");
        }
    });
}

</script>

</body>

<c:if test="${ ! empty msg }">
	<script type="text/javascript">
		//报错的js脚本，应该是msg!=null 才执行
		alert('${msg}');
	</script>
</c:if>

</html>
