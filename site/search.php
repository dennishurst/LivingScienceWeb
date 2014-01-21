<!DOCTYPE html>
<html lang="en">
<head>
<title>Search results</title>
<meta charset="utf-8">
<meta name = "format-detection" content = "telephone=no" />
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">   
<meta name = "format-detection" content = "telephone=no" /> 
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<!--CSS-->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/style.css">
<!--JS-->
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="search/search.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<!--[if lt IE 8]>
    <div style='text-align:center'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg"border="0"alt=""/></a></div>  
<![endif]-->
<!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>
<body>
<div class="global">
<!--header-->
<header>
    <div class="main">
        <div class="gradient">
        <div class="container">
             <article>
                <div class="navbar navbar_ clearfix">
                    <div class="navbar-inner">      
                          <div class="clearfix">
                                <div class="nav-collapse nav-collapse_">
                                	<ul class="nav sf-menu clearfix">
                                	  <li><a href="index.html">Home</a></li>
                                      <li class="sub-menu"><a href="index-1.html">Programs<span></span></a>
                                        <ul>
                                            <li><a href="#">Lorem ipsum dolor sit amet</a></li>
                                            <li><a href="#">Conse ctetur adipisicing<span></span></a>
                                                <ul>
                                                    <li><a href="#">labore eiusmod</a></li>
                                                    <li><a href="#">tempor ctetur</a></li>
                                                    <li><a href="#">adipisicing conse</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Elit sed do eiusmod tempor</a></li>
                                            <li><a href="#">Incididunt ut labore</a></li>
                                        </ul>
                                      </li>
                                      <li><a href="index-2.html">About Us</a></li>
                                      <li><a href="index-3.html">Events</a></li>
                                      <li><a href="index-4.html">Contacts</a></li>
                                    </ul>
                                 </div>
                                 <ul class="follow_icon">
                                    <li><a href="#"><img src="img/follow_icon1.png" alt=""></a></li>
                                    <li><a href="#"><img src="img/follow_icon2.png" alt=""></a></li>
                                    <li><a href="#"><img src="img/follow_icon3.png" alt=""></a></li>
                                </ul>
                          </div>
                    </div>
                </div>
                <h1 class="brand"><a href="index.html"><img src="img/logo.png" alt=""></a></h1>
                <form id="search" class="search" action="search.php" method="GET" accept-charset="utf-8">
                	 <input type="text" onfocus="if(this.value =='' ) this.value=''" onblur="if(this.value=='') this.value=''" value="" name="s">
                     <a href="#" onClick="document.getElementById('search').submit()"><img src="img/magnify.png" alt=""></a>
                </form>
             </article>
        </div>
        </div>
    </div>
</header>
<!--content-->
<div class="main">
    <div class="gradient">
        <div class="container">
            <div class="row">
                <article class="span12">
                    <h3>Search result:</h3>
                    <div id="search-results"></div>
                </article>
            </div>
        </div>
    </div>
</div>
</div>
<!--footer-->
<footer>
    <div class="main">
        <div class="container">
            <div class="row">
                <article class="span12">
                    <p>Language Teaching Centre &copy; 2013. <a href="index-5.html">Privacy Policy</a></p>
                </article>
            </div>
        </div>  
    </div> 
</footer>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script>
    $('#search a').hover(function(){
        $(this).stop().animate({opacity:'0.5'});	
            }, function(){
       $(this).stop().animate({opacity:'1'});						 
    })
</script>
</body>
</html>