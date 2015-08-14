<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<title>Idea Forum</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <meta charset="utf-8"> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
<!-- <link rel="stylesheet" type="text/css" href="stylingMyProfile.css"> -->
<!-- <script src="assets/jquery-ui.min.js"></script>
<script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- Fixed navbar -->
	<div id="navigation" class="navbar navbar-default navbar-fixed-top">
		<div class='container'>
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/"><b>Idea Forum</b></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right">
					<li><form>
                                <input type="text" placeholder="Search..." required>
                                <span class="glyphicon glyphicon-search"></span>
                                <input type="button" value="Search">
						</form> 
						<!-- <form method="get" action="http://www.mysite.com/search.php">
							<table style="cellpadding:0px ;cellspacing:0px">
								<tr>
									<td
										style="border-style: solid none solid solid; border-color: #4B7B9F; border-width: 1px;">
										<input type="text" name="zoom_query"
										style="width: 100px; border: 0px solid; height: 17px; padding: 0px 3px; position: relative;">
									</td>
									<td
										style="border-style: solid; border-color: #4B7B9F; border-width: 1px;">
										<input type="submit" value=""
										style="border-style: none; background: url('searchbutton3.gif') no-repeat; width: 24px; height: 20px;">
									</td>
								</tr>
							</table>
						</form> -->
					</li>
					<li class="active"><a href="#home" class="smothscroll">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">My Profile<span class="glyphicon glyphicon-user"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Logout</a></li>
							<li><a href="#">Edit Profile</a></li>
						</ul></li>

					<li><img alt="Photo" class="img-circle" src="Images/dp.JPG"
						style="width: 50px; height: 50px;" /></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<div class='container'>
		<div id="message"></div>
	</div>
	<div class='container'>
		<div class='row user' id='user-1'>
			<div class='col-md-4' >
				<div class='topic-left'>
					<div class='row topic-gravatar'>
						<div class='col-md-12'>
							<img alt="Photo" class="topic-image" height="145px;"
								src="Images/dp.JPG" width="145px;" />
						</div>
					</div>
					<div class='row topic-links'>
						<div class='col-md-12'>
							<ul style="list-style-type: none">
								<li><a href='#'>Activity</a></li>
								<li>User Name</li>
								<li>Employee Id</li>
								<li>Date of Birth</li>
								<li>No of Ideas</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- Middle Block -->
			<div class='col-md-8 topic-middle'>
				<div class='row topic-middle-wrap-header'>
					<div class='col-md-12'>
						<div class='row topic-header'>
							<div class='col-md-12'>
								<h3>
									<strong>Gopesh Tulsyan</strong>
								</h3>
								<div class='row user-employ'>
									<div class='col-md-12'>
										<h4></h4>
									</div>
								</div>
							</div>
						</div>
						<div class='row topic-desc'>
							<div class='col-md-12'>
								<p>Write Some Description About for Yourself....</p>
							</div>
						</div>
						<!-- <div class='row topic-middle-footer'>
							<div class='col-md-12'>
								<ul>
									<li><a class="btn btn-primary btn-xs user-follow-btn"
										href="javascript:void(0)">Follow</a></li>
								</ul>
							</div>
						</div> -->
					</div>
				</div>
				<div class='row topic-middle-post'>
					<div class='col-md-12'>
						<div class='row'>
							<div class='col-md-12'>
								<div class='topic-middle-post-header'>ACTIVITY</div>
							</div>
						</div>
						<div class='row'>
							<div class='col-md-12 page-middle-body'>
								<div class='row user-activity'>
									<div class='col-md-12'>
										<!-- <div class='row user-activity-type light'>
											<div class='col-md-12'>You upvoted this answer</div>
										</div> -->
										<div class='row posts'>
											<div class='col-md-11 col-xs-11'>
												<h4>
													<strong><a
														href="/question/what-type-of-questions-are-asked-in-a-upsc-interview">What
															type of questions are asked in a UPSC interview?</a></strong>
												</h4>
												<div class='row'>
													<div class='col-md-2'>
														<img alt="Photo" class="img-circle" src="Images/dp.JPG"
															style="width: 50px; height: 50px;" />
													</div>
													<div class='col-md-10'>
														<div class='row'>
															Gopesh Tulsyan <i class='fa fa-check-circle'></i>
														</div>
														<div class='row'></div>
													</div>
												</div>
												<div class='row'>
													<div class='col-md-12 col-xs-12'>
														<p>Already people have shared their own experiences of
															interview.I have only something to share here(I already
															commented it in Akand's answer) I am copy-pasting it here
															as an answer. I personally met an interviewer (I am
															unable to recognize his name) .He shared his experience
															and things in mind while taking interview of candidates.
															According to him an administrator should not apologize
															easily. He told us while sharing experiences that many of
															the aspirants while giving interview ,easily get agitated
															and in very less span of time say "Sorry". According to
															him they must either stick to their words or give a
															diplomatic response if possible.Don't get persuaded
															easily.</p>
													</div>
												</div>
												<div class='row qbottom'>
													<div class='col-md-12'>
														<ul class="list-inline">
															<!-- <li><a href='#'> <span class='ans-no'>4</span>
																	Answers
															</a></li> -->
															<li><a href='#'> <span class='ans-no'>upvote</span>
																	<i class='fa fa-arrow-up'></i>
															</a></li>
															<li><a href='#'> <span class='ans-no'>downvote</span>
																	<i class='fa fa-arrow-down'></i>
															</a></li>
															<!-- <li><a href='#'> <span class='ans-no'>25+</span>
																	<i class='fa fa-comment'></i>
															</a></li> -->
														</ul>
													</div>
												</div>
											</div>
											<div class='col-md-1 col-xs-1 votes'>
												<i class='fa fa-caret-up fa-2x vote-up'></i> <i
													class='fa fa-caret-down fa-2x'></i>
											</div>
										</div>
									</div>
								</div>
								<!-- <div class='row user-activity'>
									<div class='col-md-12'>
										<div class='row user-activity-type light'>
											<div class='col-md-12'>You followed Roman Saini</div>
										</div>
										<div class='row posts'>
											<div class='col-md-10 col-xs-10'>
												<div class='row'>
													<div class='col-md-2'>
														<img alt="Photo" class="img-circle" src="Images/dp.JPG" />
													</div>
													<div class='col-md-10'>
														<div class='row'>
															Gopesh Tulsyan <i class='fa fa-check-circle'></i>
														</div>
														<div class='row'></div>
													</div>
												</div>
												<div class='row qbottom post-bottom'>
													<div class='col-md-12'>
														<ul>
															<li><a class="btn btn-primary btn-xs"
																disabled="disabled" href="#">Follow</a></li>
															<li><a href='#'><span class='ans-no'>54</span>Answers
															</a></li>
															<li><a href='#'><span class='ans-no'>88</span>Questions
															</a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div> -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- <div class='col-md-offset-1 col-md-2'>
				<div class='row topic-right about'>
					<div class='col-md-12'>
						<div class='row topic-related'>
							<div class='topic-middle-post-header'>About</div>
						</div>
						<div class='row'>
							<div class='col-md-12 nopadding'>
								<span> <strong>Aspirant</strong>
								</span> <span>UPSC</span>
							</div>
						</div>
						<div class='row'>
							<div class='col-md-12 nopadding'>
								<span> <strong>Works At</strong>
								</span> <span> </span>
							</div>
						</div>
						<div class='row'>
							<div class='col-md-12 nopadding'>
								<span> <strong>From</strong>
								</span> <span>Kolkata, West bengal</span>
							</div>
						</div>
					</div>
				</div>
				<div class='row topic-right'>
					<div class='col-md-12'>
						<div class='row topic-related'>
							<div class='topic-middle-post-header'>INTERESTED TOPICS</div>
						</div>
						<div class='row topics-related'>
							<div class='col-md-4 nopadding'>
								<img alt="Missing" height="50px;"
									src="/assets/missing-f04312dcc4ffde63b3a94162658cc218.png"
									width="50px;" />
							</div>
							<div class='col-md-8 related-topic nopadding'>
								<a href='/topic/2'> <span> <strong> Civil
											Services </strong>
								</span> <br> <span class='light'> 4 Followers </span> </br>
								</a>
							</div>
						</div>
						<div class='row topics-related'>
							<div class='col-md-4 nopadding'>
								<img alt="Missing" height="50px;"
									src="/assets/missing-f04312dcc4ffde63b3a94162658cc218.png"
									width="50px;" />
							</div>
							<div class='col-md-8 related-topic nopadding'>
								<a href='/topic/1'> <span> <strong> UPSC </strong>
								</span> <br> <span class='light'> 4 Followers </span> </br>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div aria-hidden='true' aria-labelledby='mySmallModalLabel'
		class='modal fade' id='voterModal' role='dialog' tabindex='-1'>
		<div class='modal-dialog modal-sm'>
			<div class='modal-content'>
				<div class='modal-header'>
					<button aria-label='Close' class='close' data-dismiss='modal'
						type='button'>
						<span aria-hidden='true'>&times;</span>
					</button>
					<h4 class='modal-title' id='voterModalLabel'>Upvotes By</h4>
				</div>
				<div class='modal-body'>
					<i class='fa fa-spinner fa-spin voter-spin'></i>
				</div>
			</div>
		</div>
	</div>
 -->
		</div>
	</div>
</body>
</html>
