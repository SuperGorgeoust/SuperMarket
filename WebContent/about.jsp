<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>About</title>
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
				<li class="active">关于</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- about -->
	<div class="about">
		<div class="container">
			<h3 class="w3_agile_header">关于我们</h3>
			<div class="about-agileinfo w3layouts">
				<div class="col-md-8 about-wthree-grids grid-top">
					<h4>最好的我们&最优质的服务</h4>
					<p></p>
					<p class="top">
						&nbsp;&nbsp;&nbsp;&nbsp;公司自1998年成立至今，一直秉承着顾客至上的原则，所有在商城中购买过商品的顾客
						都可以向我们提出建议或意见，所有的建议我们都会放在考虑范围之内，并且立志做到让顾客放心消费。所有商城在
						售商品都是经过公司内部员工层层筛选，百里挑一，确保所有商品中不存在次品，所有食物确保在保质期内，并且挑
						选最新鲜的进行销售，让顾客买得放心，吃得安心。
					</p>
					<p></p>
					<p>
						&nbsp;&nbsp;&nbsp;&nbsp;在快递配送方面，公司专门培养人才与技术，拥有最专业的配送服务，包括高速运送、
						航空配送在内，拥有最好的配送硬件，全程保障顾客商品的完好。在售后方面，我们承诺，所有商品销售14天内无
						理由退换货（食品除外），大型家庭类商品1年内保修，详见本公司保修政策，本公司拥有最终解释权。
					</p>		
					<div class="about-w3agilerow">
						<div class="col-md-4 about-w3imgs">
							<img src="images/p3.jpg" alt="" class="img-responsive zoom-img"/>
						</div>
						<div class="col-md-4 about-w3imgs">
							<img src="images/p4.jpg" alt=""  class="img-responsive zoom-img"/>
						</div>
						<div class="col-md-4 about-w3imgs">
							<img src="images/p3.jpg" alt=""  class="img-responsive zoom-img"/>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 about-wthree-grids">
					<div class="offic-time">
						<div class="time-top">
							<h4>公告</h4>
						</div>
						<div class="time-bottom">
							<h5>我们承诺：</h5>
							<p>服务：顾客至上</p>
							<p>商品：优中选优</p>
						</div>
					</div>
					<div class="testi">
						<h3 class="w3_agile_header">与我们见证</h3>
						<!--//End-slider-script -->
						<script src="js/responsiveslides.min.js"></script>
						 <script>
							// You can also use "$(window).load(function() {"
							$(function () {
							  // Slideshow 5
							  $("#slider5").responsiveSlides({
								auto: true,
								pager: false,
								nav: true,
								speed: 500,
								namespace: "callbacks",
								before: function () {
								  $('.events').append("<li>before event fired.</li>");
								},
								after: function () {
								  $('.events').append("<li>after event fired.</li>");
								}
							  });
						
							});
						  </script>
						<div  id="top" class="callbacks_container">
							<ul class="rslides" id="slider5">
								<li>
									<div class="testi-slider">
										<h4>" I AM VERY PLEASED.</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eu magna dolor, quisque semper.</p>
										<div class="testi-subscript">
											<p><a href="#">John Doe,</a>Adipiscing</p>
											<span class="w3-agilesub"> </span>
										</div>	
									</div>
								</li>
								<li>
									<div class="testi-slider">
										<h4>" I AM LOREM IPSUM.</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eu magna dolor, quisque semper.</p>
										<div class="testi-subscript">
											<p><a href="#">elit semper,</a>Dolor Elit</p>
											<span class="w3-agilesub"> </span>
										</div>	
									</div>
								</li>
								<li>
									<div class="testi-slider">
										<h4>" CONSECTETUR PIMAGNA.</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eu magna dolor, quisque semper.</p>
										<div class="testi-subscript">
											<p><a href="#">Amet Doe,</a>Suspendisse</p>
											<span class="w3-agilesub"> </span>
										</div>	
									</div>
								</li>
							</ul>	
						</div>
					</div>
				</div>	
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //about -->
	<!-- about-slid -->
	<div class="about-slid agileits-w3layouts"> 
		<div class="container">
			<div class="about-slid-info"> 
				<h2>我们拥有最先进的配送服务</h2>
				<p>
					用户顾客在网站“线上”第一时间下单，我们会立即接收订单并处理，在全国各地我们设有多家分厂，
					采取“就近”原则，调用用户最近的一家厂家直接发货，大大减少送货时间，如果可以，我们的目标是
					当日送达
				</p>
			</div>
		</div>
	</div>
	<!-- //about-slid -->
	<!-- about-team -->
	<div class="about-team"> 
		<div class="container">
			<h3 class="w3_agile_header">与我们相见</h3>
			<div class="team-agileitsinfo">
				<div class="col-md-3 about-team-grids">
					<img src="images/t4.jpg" alt=""/>
					<div class="team-w3lstext">
						<h4><span>Alex,</span> 董事长</h4>
						<p>人生的意志和劳动将创造奇迹般的奇迹。</p>
					</div>
					<div class="social-icons caption"> 
						<ul>
							<li><a href="#" class="fa fa-facebook facebook"> </a></li>
							<li><a href="#" class="fa fa-twitter twitter"> </a></li>
							<li><a href="#" class="fa fa-google-plus googleplus"> </a></li> 
						</ul>
						<div class="clearfix"> </div>  
					</div>
				</div>
				<div class=" col-md-3 about-team-grids">
					<img src="images/t2.jpg" alt=""/>
					<div class="team-w3lstext">
						<h4><span>Tomas,</span> 高级副总裁</h4>
						<p>真实是人生的命脉，是一切价值的根基。</p>
					</div>
					<div class="social-icons caption"> 
						<ul>
							<li><a href="#" class="fa fa-facebook facebook"> </a></li>
							<li><a href="#" class="fa fa-twitter twitter"> </a></li>
							<li><a href="#" class="fa fa-google-plus googleplus"> </a></li> 
						</ul>
						<div class="clearfix"> </div>  
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //about-team -->

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
</body>
</html>