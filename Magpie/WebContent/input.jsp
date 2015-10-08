<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script>

	function fun1() {
		var inputvalue = document.getElementById("input1").value;
		//alert("inputvalue");
		inputvalue = document.getElementsByName("aa").item(0).value;
		//alert(inputvalue);
		
		
	
	var board = document.getElementById("div2");
		var e = document.createElement("input");
		e.type = "button";
		e.value = "这是测试加载的小例子";
		var object = board.appendChild(e);

		/////////////

		var element = document.createElement("a");
		element.setAttribute("href", "http://"+inputvalue);

		element.innerHTML = inputvalue;
		//$(element).html('<tr><td>IE下tbody的innerHTML是只读的</td></tr>');
		//$("body").html('<tr><td>IE下tbody的innerHTML是只读的</td></tr>');
		//alert("1");

		//$("<div><p>Hello</p></div>").appendTo("#body");
		//$('<div />',{id:citycode,html: '<a href="">cityname</a>'}).appendTo("#"+provincecode);

		var div2 = document.getElementById("div2");
		div2.appendChild(element);
		//myrefresh();
		alert("inputvalue");
	}

	function myrefresh() {
		window.location.reload();
	}
	//setTimeout('myrefresh()',1000); //指定1秒刷新一次
</script>
<body>
	<a href="http://www.w3school.com.cn">W3School</a>
	<br/>
	
	<div name=div1>
	<input id="input1" name="aa" width="50px"></input> <input type="button" value="提交" onClick='fun1()'></input>
	</div>
	<div id=div2></div>
	
	
	
	
	
	
	
	
	
-------------------------------------------------------------------------------------------
	<form action="form_action.asp" method="get">
		First name: <input type="text" name="fname" /> Last name: <input
			type="text" name="lname" /> <input type="submit" value="提交" />
	</form>
	
	<a href="http://www.w3school.com.cn" >baidu.com</a>
-------------------------------------------------------------------------------------------------

	<div dojoType="com.shy.widget.DemoWidget" width="260" height="220"
		dialogTitle="I am title">
		<input id="text1" dojoType="dijit.form.TextBox" value="shaoyu"></input>
		<button id="button1" dojoType="dijit.form.Button">Submit</button>
	</div>


-------------------------------------------
	<div class="container main-container">
	
		<!-- top banner -->
		<div class="row top-banner">
			<div class="col-md-2 site-logo">
				<img class="site-logo-img" src="images/sh114logo.png">
			</div>
			<div class="col-md-4 search-box panel panel-default" id="baiduPanel">
				<div class="panel-body search-box-body">
					<div class="row">
						<div class="baidu-form">
							<form id="form_baidu" role="form" class="form-inline" target="_blank" action="http://www.baidu.com/s" method="get">
								<div><input type="text" class="form-control input-box" id="wd" name="wd" placeholder="请输入关键词搜索"></div>
								<div class="baidu-logo"><img src="images/baidu-logo.png"><input type="submit" id="button" class="btn  btn-success " value="百度一下"></div>
								<input id="tn" type="hidden" value="70049059_zhj_zd" name="tn">
							</form>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-6 short-banner" id="adTopRight">
				
				<script src="http://www.adxquare.com/page/s.php?s=172&w=610&h=100"></script>
				
				 
				<script>
					var mediav_ad_ref = 'sh.114so.cn';
					var mediav_ad_pub = 'labki7_1027249';
					var mediav_ad_width = '610';
					var mediav_ad_height = '100';
				</script>
				<script type="text/javascript" language="javascript" charset="utf-8" src="http://static.mediav.com/js/mvf_g2.js"></script>
			</div>
			
			
		</div>
	</div>




##############################################
	<div class="baidu-form">
		<form id="form_gfsoso" role="form" class="form-inline" target="_blank" action="http://www.gfsoso.com/" method="get">
			<div><input type="text" class="form-control input-box" id="q" name="q" placeholder="请输入关键词搜索"></div>
				<div class="baidu-logo"><img src="images/baidu-logo.png"><input type="submit" id="button2" class="btn  btn-success " value="搜索"></div>

		</form>
	</div>
------------------------------------------------------------------
	<div class="g-wd hao123-search-panel" alog-alias="search"
		monkey="search">
		<div class='hao123-search'>
			<div id="search" class="search">
				<div class="left logo" monkey="baidulogo">
					<a id="search_logolink" class='link link-hook' title="百度首页"
						href="http://www.baidu.com/?tn=sitehao123"><img
						class="img-hook"
						src="http://s1.hao123img.com/res/images/search_logo/web_png8.png"
						alt="百度首页" width="97" height="32" /></a>
				</div>
				<div class="right tabs" monkey="search" alog-alias="search">
					<a class="tab tab-hook s-bg20 g-fc5 g-fc5h curr curr-hook"
						data-tab="web" href="http://www.hao123.com">网页</a><a
						class="tab tab-hook g-fc0" data-tab="music"
						href="http://music.baidu.com">音乐</a><a class="tab tab-hook g-fc0"
						data-tab="video" href="http://v.baidu.com">视频</a><a
						class="tab tab-hook g-fc0" data-tab="image"
						href="http://image.baidu.com">图片</a><a class="tab tab-hook g-fc0"
						data-tab="tieba" href="http://tieba.baidu.com">贴吧</a><a
						class="tab tab-hook g-fc0" data-tab="zhidao"
						href="http://zhidao.baidu.com">知道</a><a class="tab tab-hook g-fc0"
						data-tab="news" href="http://news.baidu.com">新闻</a><a
						class="tab tab-hook g-fc0" data-tab="map"
						href="http://map.baidu.com">地图</a><a class="tab more g-fc0"
						style="" href="http://www.baidu.com/more/">更多>></a>
				</div>
				<div class="right form-wrapper">
					<form class="form-hook" action="http://www.baidu.com/s"
						target="_blank">
						<div class="input-wrapper wrapper-hook g-ib">
							<div class="input-shadow shadow-hook g-ib">
								<input class="input input-hook" type="text" autocomplete="off"
									maxlength="100" name="word" /><a class="hotword hotword-hook"
									href="http://top.baidu.com/buzz?b=1">实时热点</a>
							</div>
						</div>

						<div class="button-wrapper g-ib">
							<input class="button button-hook" type="submit" value="百度一下" />
						</div>
						<div class="hidden-params params-hook">
							<input id="search_tn" type="hidden" value="sitehao123" name="tn" /><input
								type="hidden" value="utf-8" name="ie" />
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>