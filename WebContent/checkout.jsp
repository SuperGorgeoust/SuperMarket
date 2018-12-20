<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.market.biz.CacheBiz"%>
<%@page import="com.market.dao.DBHelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	if(request.getSession().getAttribute("loginedUser") == null){
		request.setAttribute("msg", "您还没有登陆，请先登录！");
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}else if(request.getAttribute("cartsList") == null){
		request.getRequestDispatcher("cart.s?op=query").forward(request, response);
	}
%>
<!DOCTYPE html>
<html>
<head>
<title>购物车</title>
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
<script src="lib/sweet-alert.min.js"></script>
<link rel="stylesheet" type="text/css" href="lib/sweet-alert.css">
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
			<ol class="breadcrumb breadcrumb1">
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
				<li class="active">购物车</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- checkout -->
	<div class="checkout">
		<div class="container">
			<h2>您的购物车中有: <span>${cartsList.size()} 件商品</span></h2>
			<div class="checkout-right">
				<table class="timetable_sub">
					<thead>
						<tr>
							<th>编号</th>	
							<th>商品</th>
							<th>数量</th>
							<th>商品名称</th>
						
							<th>价格</th>
							<th>移除</th>
						</tr>
					</thead>
					<c:forEach items="${cartsList}" var="c">
						<tr class="rem${c.pid}">
						<td class="invert">${c.pid}</td>
						<td class="invert-image"><a href="#"><img src="${c.pimg}" alt=" " class="img-responsive" /></a></td>
						<td class="invert">
							 <div class="quantity"> 
								<div class="quantity-select">                           
									<div class="entry value-minus">&nbsp;</div>
									<div class="entry value"><span>${c.amount}</span></div>
									<div class="entry value-plus active">&nbsp;</div>
								</div>
							</div>
						</td>
						<td class="invert">${c.pname}</td>
						
						<td class="invert">¥${c.pprice}</td>
						<td class="invert">
							<div class="rem">
								<div id="del" name="${c.pid}" class="close${c.pid}"> </div>
							</div>
							<script>$(document).ready(function(c) {
								$('.close${c.pid}').on('click', function(c){
									var pid = $("#del").attr("name");
									$.ajax({
										type: 'POST',
										url: 'cart.s?op=del',
										data: 'id=' + pid,
										cache: false, //不缓存此页面   
									});	
									$('.rem${c.pid}').fadeOut('slow', function(c){
										$('.rem${c.pid}').remove();
									});
									});	  
								});
						   </script>
						</td>
					</tr>
					</c:forEach>
					<!--quantity-->
						<script>
						$('.value-plus').on('click', function(){
							var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
							divUpd.text(newVal);
						});

						$('.value-minus').on('click', function(){
							var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
							if(newVal>=1) divUpd.text(newVal);
						});
						</script>
					<!--quantity-->
				</table>
			</div>
			<%
				CacheBiz cbiz = new CacheBiz();
				List<Map<String, Object>> list = cbiz.money();
			%>
			<br><br><br>
			<h2>合计：&nbsp;&nbsp;&nbsp;<%=list.get(0).get("sum(money)")%>元</h2>
				<div class="checkout-right-basket">
					<a href="products.jsp"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>继续购物</a>
					<br><br><br>
					<a href="#" onclick="sure()" ><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>商品提交</a>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //checkout -->
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
<!-- //here ends scrolling icon -->
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
<script type="text/javascript">
	function sure(){
		swal({
			  title: "完成商品挑选了？",
			  text: "如多次订单可能产生更多资费哦",
			  type: "warning",
			  showCancelButton: true,
			  confirmButtonColor: "#DD6B55",
			  confirmButtonText: "Yes",
			  closeOnConfirm: false
			},
			function(){
			  swal("提交成功", "期待您的下次光临", "success");
			  $.ajax({
	                 type: "POST",
	                 url: "cart.s?op=buy",
	                 cache: false, //不缓存此页面   
	             });
			  paypal.minicart.reset();
			  window.location.href="index.jsp";
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