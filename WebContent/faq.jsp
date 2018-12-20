<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>常见问题</title>
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
				<li class="active">FAQ's</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- help-page -->
	<div class="faq-w3agile">
		<div class="container"> 
			<h2 class="w3_agile_header">常见问题(FAQ's)</h2> 
			<ul class="faq">
				<li class="item1"><a href="#" title="click here">我怎么相信商品的质量是最好的？</a>
					<ul>
						<li class="subitem1"><p> 所有的商品在离开工厂发货前都是采用的人工选货的方式，杜绝一切质量上的问题，在除了快递方面的问题上，绝对保证商品的完整性与质量。</p></li>										
					</ul>
				</li>
				<li class="item2"><a href="#" title="click here">我怎么在第一时间内取到包裹？</a>
					<ul>
						<li class="subitem1"><p> 我们采用的是自家的快递方式进行运送，在保证商品安全的前提之下，我们还保证速度上的绝对优势，我们会选择客户最近的厂商进行商品的发货，确保货物能够第一时间内到达您的手中，如是同城，我们保证当日达（偏远地区除外）。</p></li>										
					</ul>
				</li>
				<li class="item3"><a href="#" title="click here">商品不想要了怎么办？</a>
					<ul>
						<li class="subitem1"><p>所有商品在不拆开包装的情况之下满足7天内无理由退货，如有质量问题，终身包换（食品商品除外）。</p></li>										
					</ul>
				</li>
				<li class="item4"><a href="#" title="click here">打折商品享受退换货吗？</a>
					<ul>
						<li class="subitem1"><p>所有打折商品皆满足退换货原则（食品商品除外）。</p></li>										
					</ul>
				</li> 
				<li class="item5"><a href="#" title="click here">法定假日期间可以收到商品吗？</a>
					<ul>
						<li class="subitem1"><p>可以，我们在法定假期期间正常送货，但是部分商品会有延迟，给您带来不便，敬请原谅。</p></li>										
					</ul>
				</li>
				<li class="item6"><a href="#" title="click here">退换货中间费用由谁承担？</a>
					<ul>
						<li class="subitem1"><p>对于换货情况，在满足条件情况下，我们提供一次免费换货的机会，退货中间所产生的快递费用将由客户承担。</p></li>										
					</ul>
				</li>
				<li class="item7"><a href="#" title="click here">如果退货的话，我将多久收到退款？</a>
					<ul>
						<li class="subitem1"><p>在退回商品入库之后，所有的退款将会在1-7个工作日内返还至客户的支付账户中。</p></li>										
					</ul>
				</li>
				<li class="item8"><a href="#" title="click here">会员的积分会清零吗？</a>
					<ul>
						<li class="subitem1"><p>会，在每年的12月31日23:59时进行积分清零，请在规定时间内尽快使用完积分哦。</p></li>										
					</ul>
				</li>
				<li class="item9"><a href="#" title="click here">会员积分兑换的商品支持退换货吗？</a>
					<ul>
						<li class="subitem1"><p>很抱歉，所有积分兑换的商品都不支持退换货。</p></li>										
					</ul>
				</li>
				<li class="item10"><a href="#" title="click here">加入我们？</a>
					<ul>
						<li class="subitem1"><p>想要加入我们？我们每年9月会举行线上线下的报名方式，通过层层筛选就能成为我们中的一员了。</p></li>										
					</ul>
				</li> 
			</ul> 
			<!-- script for tabs -->
			<script type="text/javascript">
				$(function() {
				
					var menu_ul = $('.faq > li > ul'),
						   menu_a  = $('.faq > li > a');
					
					menu_ul.hide();
				
					menu_a.click(function(e) {
						e.preventDefault();
						if(!$(this).hasClass('active')) {
							menu_a.removeClass('active');
							menu_ul.filter(':visible').slideUp('normal');
							$(this).addClass('active').next().stop(true,true).slideDown('normal');
						} else {
							$(this).removeClass('active');
							$(this).next().stop(true,true).slideUp('normal');
						}
					});
				
				});
			</script>
			<!-- script for tabs -->   
		</div>
	</div>
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
</body>
</html>
