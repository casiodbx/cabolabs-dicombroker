<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<g:layoutHead/>
		<r:layoutResources />
		
		<!-- Latest compiled and minified CSS -->
      <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
      
      <!-- ======================== Bootstrap core JavaScript ========================== -->
      <!-- Placed at the end of the document so the pages load faster -->
      <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
      <!-- Latest compiled and minified JavaScript -->
      <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	</head>
	<body>
	   <nav class="navbar navbar-default fixed-top" role="navigation">
	      <div class="container">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="http://www.cabolabs.com"><img src="http://www.cabolabs.com/images/logo_min_2.png" alt="CaboLabs" class="img-responsive" /></a>
	        </div>
	      
	         <div class="navbar-collapse collapse">
	            <ul class="nav navbar-nav navbar-right">
	               <li>
	                 <g:link controller="dashboard">Home</g:link>
	               </li>
		            <sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_GODLIKE">
		               <li><g:link controller='log' action='list'>log</g:link></li>
		            </sec:ifAnyGranted>
		            <sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_GODLIKE">
		               <li><g:link controller='user'>security</g:link></li>
		            </sec:ifAnyGranted>
		            <sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_GODLIKE">
		               <li><g:link controller='destinationConfig' action='list'>destinations</g:link></li>
		            </sec:ifAnyGranted>
		            <sec:ifAnyGranted roles="ROLE_DOCTOR,ROLE_GODLIKE">
		               <li><g:link controller='StudySearchResult'>search</g:link></li>
		            </sec:ifAnyGranted>
		            <!--
	               <li>
	                 <a href="https://plus.google.com/s/CaboLabs" target="_blank" class="social"><img src="http://cabolabs.com/images/google+.png"></a>
	                 <a href="http://www.facebook.com/CaboLabs" target="_blank" class="social"><img src="http://cabolabs.com/images/facebook.png"></a>
	                 <a href="http://www.linkedin.com/company/cabolabs" target="_blank" class="social"><img src="http://cabolabs.com/images/linkedin.png"></a>
	                 <a href="skype:cabolabs" target="_blank" class="social"><img src="http://cabolabs.com/images/skype.png"></a>
	               </li>
	               -->
	               <sec:ifLoggedIn>
	                  <li>
				            <p class="navbar-text">Logged in as <sec:loggedInUserInfo field="username"/></p>
				         </li>
				         <li>
				            <g:link controller='logout'>Logout</g:link>
				         </li>
				      </sec:ifLoggedIn>
				      <sec:ifNotLoggedIn>
				         <li>
				            <g:link controller='login' action='auth'>Login</g:link>
				         </li>
				      </sec:ifNotLoggedIn>
	            </ul>
	         </div>
	      </div>
	   </nav>
	   <div class="container">
	     <g:layoutBody/>
	     <div class="footer" role="contentinfo"></div>
	   </div>

		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>