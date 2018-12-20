<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Contact</title>
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
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
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
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
				<li class="active">联系我们</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- contact -->
	<div class="about">
		<div class="w3_agileits_contact_grids">
			<div class="col-md-6 w3_agileits_contact_grid_left">
				<div class="agile_map">
					<iframe src="https://www.amap.com/place/B02DE02W7A" style="border:0"></iframe>
				</div>
				<div class="agileits_w3layouts_map_pos">
					<div class="agileits_w3layouts_map_pos1">
						<h3>联系信息</h3>
						<p>湖南省衡阳市珠晖区湖南工学院</p>
						<ul class="wthree_contact_info_address">
							<li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:954502872@qq.com">954502872@qq.com</a></li>
							<li><i class="fa fa-phone" aria-hidden="true"></i>+(86)17777777777</li>
						</ul>
						<div class="w3_agile_social_icons w3_agile_social_icons_contact">
							<ul>
								<li><a href="#" class="icon icon-cube agile_facebook"></a></li>
								<li><a href="#" class="icon icon-cube agile_rss"></a></li>
								<li><a href="#" class="icon icon-cube agile_t"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6 w3_agileits_contact_grid_right">
				<h2 class="w3_agile_header">给我们<span> 留言</span></h2>

				<form action="user.s?op=advice" method="post">
					<span class="input input--ichiro">
						<input class="input__field input__field--ichiro" type="text" id="input-25" name="uname" placeholder=" " required="" />
						<label class="input__label input__label--ichiro" for="input-25">
							<span class="input__label-content input__label-content--ichiro">您的姓名</span>
						</label>
					</span>
					<span class="input input--ichiro">
						<input class="input__field input__field--ichiro" type="email" id="input-26" name="uemail" placeholder=" " required="" />
						<label class="input__label input__label--ichiro" for="input-26">
							<span class="input__label-content input__label-content--ichiro">您的邮箱</span>
						</label>
					</span>
					<textarea name="adv" placeholder="您想说的话..." required=""></textarea>
					<input type="submit" value="提交">
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- contact -->

<!-- //footer -->
	<jsp:include page="/public/end.jsp"></jsp:include>
<!-- //footer -->	
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<!-- top-header and slider -->
<script src="js/minicart.min.js"></script>
<script>
	// Mini Cart
	paypal.minicart.render({
		action: 'cart.s?op=sub'
	});

	if (~window.location.search.indexOf('reset=true')) {
		paypal.minicart.reset();
	}
</script>
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

</body>

<c:if test="${ ! empty msg }">
	<script type="text/javascript">
		//报错的js脚本，应该是msg!=null 才执行
		alert('${msg}');
	</script>
</c:if>

</html>
