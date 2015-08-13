<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" type="text/css"
	href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-6 col-xs-10 col-xs-offset-1">
				<div class="idea-post row">
					<div class="panel panel-default">
						<div class="panel-heading">Post your Idea</div>
						<div class="panel-body">
							<form:form action="idea" onsubmit="return validate();" name="idea-form" method="post">
								<strong><label class="mar-top">Your Idea </label></strong><br>
								<input type="text" name="idea-heading" id="idea-heading"
									class="form-control mar-top"> <strong><label
									class="mar-top">Describe Your Idea</label></strong><br>
								<textarea class="form-control idea-form mar-top" rows="4"
									name="idea">
							    	</textarea>
								<strong><label class="mar-top">Add Tags</label></strong><br>
								<input type="text" name="search-category" id="search-category"
									class="form-control mar-top"> <input type="submit"
									value="Post Idea"
									class="mar-top btn btn-primary btn-xs pull-right">
							</form:form>
						</div>
					</div>
				</div>
				<div class="row ideas-feed">
					<div class="col-md-12 feed">
						<!-- insert for loop here -->
						<div class="idea row" id="idea-1">
							<!-- idea-id -->
							<div class="col-md-12 idea-card">
								<div class="row idea-heading">
									<div class="col-md-12">
										<h4>
											<strong>Some Feature</strong>
										</h4>
									</div>
								</div>
								<div class="row idea-user-details">
									<div class="col-md-2 user-pic">
										<img alt="user" src="images/user.jpg" class="img-circle">
									</div>
									<div class="col-md-10 user-name">
										<a href="user.jsp">Gopesh Tulsyan</a>
									</div>
								</div>
								<div class="row idea-description">
									<div class="col-md-12 more">Lorem ipsum dolor sit amet,
										consectetur adipiscing elit. Donec a diam lectus. Sed sit amet
										ipsum mauris. Maecenas congue ligula ac quam viverra nec
										consectetur ante hendrerit. Donec et mollis dolor. Praesent et
										diam eget libero egestas mattis sit amet vitae augue. Nam
										tincidunt congue enim, ut porta lorem lacinia consectetur.
										Donec ut libero sed arcu vehicula ultricies a non tortor.
										Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Aenean ut gravida lorem. Ut turpis felis, pulvinar a semper
										sed, adipiscing id dolor. Pellentesque auctor nisi id magna
										consequat sagittis. Curabitur dapibus enim sit amet elit
										pharetra tincidunt feugiat nisl imperdiet. Ut convallis libero
										in urna ultrices accumsan. Donec sed odio eros. Donec viverra
										mi quis quam pulvinar at malesuada arcu rhoncus. Cum sociis
										natoque penatibus et magnis dis parturient montes, nascetur
										ridiculus mus. In rutrum accumsan ultricies. Mauris vitae nisi
										at sem facilisis semper ac in est.</div>
								</div>
								<div class="row idea-footer">
									<div class="col-md-12">
										<ul class="unordered-list">
											<li class="upvote-btn">
												<button class="btn btn-primary btn-xs">Upvote</button>
											</li>
											<li class="count">12</li>
											<li class="downvote-btn btn btn-primary btn-xs mar-left">Downvote</li>
											<li class="count">14</li>
											<li class="comments mar-left"><a href="#">Comments</a></li>
											<li class="count">23</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var showChar = 100;
						var ellipsestext = "...";
						var moretext = "more";
						var lesstext = "less";
						$('.more')
								.each(
										function() {
											var content = $(this).html();

											if (content.length > showChar) {

												var c = content.substr(0,
														showChar);
												var h = content.substr(
														showChar - 1,
														content.length
																- showChar);

												var html = c
														+ '<span class="moreellipses">'
														+ ellipsestext
														+ '&nbsp;</span><span class="morecontent"><span>'
														+ h
														+ '</span>&nbsp;&nbsp;<a href="" class="morelink">'
														+ moretext
														+ '</a></span>';

												$(this).html(html);
											}

										});

						$(".morelink").click(function() {
							if ($(this).hasClass("less")) {
								$(this).removeClass("less");
								$(this).html(moretext);
							} else {
								$(this).addClass("less");
								$(this).html(lesstext);
							}
							$(this).parent().prev().toggle();
							$(this).prev().toggle();
							return false;
						});
					});
</script>
</html>