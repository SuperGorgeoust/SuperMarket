<%@page import="com.market.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
<!-- header -->
<script src="lib/sweet-alert.min.js"></script>
<link rel="stylesheet" type="text/css" href="lib/sweet-alert.css">
	<div class="agileits_header">
		<div class="container">
			<div class="w3l_offers">
				<p>打折活动现在开始，最高可享7折优惠  <a href="products.jsp">开始购物！</a></p>
			</div>
			<div class="agile-login">
				<ul>
					<li><a href="registered.jsp"> 创建新用户 </a></li>
					<li>
					<%	
						User user = (User)request.getSession().getAttribute("loginedUser");
						if(request.getSession().getAttribute("loginedUser") != null){
							out.print("<a id="+"\"name\">"+user.getName()+"</a>");
						}else{
							out.print("<a href="+"\"login.jsp\""+">登陆</a>");
						}
					%>
					</li>
					<li><a href="contact.jsp">帮助</a></li>
				</ul>
			</div>
			<div class="product_list_header">  
				<form action="#" method="post" class="last"> 
					<input type="hidden" name="cmd" value="_cart">
					<input type="hidden" name="display" value="1">
					<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
				</form>  
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="logo_products">
		<div class="container">
			<div class="w3ls_logo_products_left1">
				<ul class="phone_email">
					<li><i class="fa fa-phone" aria-hidden="true"></i>在线订购热线 : (+0123) 234 567</li>
				</ul>
			</div>
			<div class="w3ls_logo_products_left">
				<h1><a href="index.jsp">super Market</a></h1>
			</div>
			<div class="w3l_search">
				<form action="#" method="post">
					<input type="search" name="Search" placeholder="搜索..." required="">
					<button type="submit" class="btn btn-default search" aria-label="Left Align">
						<i class="fa fa-search" aria-hidden="true"> </i>
					</button>
					<div class="clearfix"></div>
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->

<!-- navigation -->
	<div class="navigation-agileits">
		<div class="container">
			<nav class="navbar navbar-default">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header nav_2">
								<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div> 
							<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
								<ul class="nav navbar-nav">
									<li class="active"><a href="index.jsp" class="act">首页</a></li>	
									<!-- Mega Menu -->
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">杂货<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>所有种类</h6>
														<li><a href="groceries.jsp">杂粮</a></li>
														<li><a href="groceries.jsp">杏仁</a></li>
														<li><a href="groceries.jsp">腰果</a></li>
														<li><a href="groceries.jsp">坚果</a></li>
														<li><a href="groceries.jsp">大米</a></li>
													</ul>
												</div>	
												
											</div>
										</ul>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">家庭用品<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>所有种类</h6>
														<li><a href="household.jsp">除尘用具</a></li>
														<li><a href="household.jsp">洗涤器</a></li>
														<li><a href="household.jsp">拖把 </a></li>
														<li><a href="household.jsp">厨具</a></li>
													</ul>
												</div>
												
												
											</div>
										</ul>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">婴幼儿用品<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>所有种类</h6>
														<li><a href="personalcare.jsp">婴儿护理配件</a></li>
														<li><a href="personalcare.jsp">婴儿油和洗发水</a></li>
														<li><a href="personalcare.jsp">婴儿面霜和乳液</a></li>
														<li><a href="personalcare.jsp">尿布和湿巾</a></li>
													</ul>
												</div>
												
											</div>
										</ul>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">包装食品<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>所有种类</h6>
														<li><a href="packagedfoods.jsp">甜点</a></li>
														<li><a href="packagedfoods.jsp">饼干</a></li>
														<li><a href="packagedfoods.jsp">罐头食品</a></li>
														<li><a href="packagedfoods.jsp">巧克力和糖果</a></li>
													</ul>
												</div>
												
											
											</div>
										</ul>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">饮料<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>所有种类</h6>
														<li><a href="beverages.jsp">奶制饮品</a></li>
														<li><a href="beverages.jsp">凉茶</a></li>
														<li><a href="beverages.jsp">速溶咖啡</a></li>
														<li><a href="beverages.jsp">茶包</a></li>
													</ul>
												</div>
							
											</div>
										</ul>
									</li>
									<li><a href="gourmet.jsp">美食推荐</a></li>
									<li><a href="offers.jsp">打折商品</a></li>
									<li><a href="contact.jsp">联系我们</a></li>
								</ul>
							</div>
							</nav>
			</div>
		</div>
		
<!-- //navigation -->
</header>
<script type="text/javascript">
	$("#name").click(function(){
		swal({
			  title: "决定要退出了吗？",
			  text: "您需要重新登陆才能看到购物车清单哦~",
			  type: "warning",
			  showCancelButton: true,
			  confirmButtonColor: "#DD6B55",
			  confirmButtonText: "Yes",
			  closeOnConfirm: false
			},
			function(){
			  swal("您已经成功退出啦！", "我们期待与您下次服务~", "success");
			  $.ajax({
	                 type: "POST",
	                 url: "user.s?op=quit",
	                 cache: false, //不缓存此页面   
	             });
			  window.location.reload();
			});
	});
</script>

