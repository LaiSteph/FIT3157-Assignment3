<html>
<head>
	<title><?php wp_title( '-', true, 'right' ); bloginfo( 'name' ); ?></title>
  <link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_uri(); ?>" />
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:700|Oxygen:700" rel="stylesheet">
  <?php wp_head(); ?>
</head>

<body>

  <header>
	<div>
		<a href="<?php bloginfo( 'url' ); ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/images/hraff-logo.svg" width="100%"/></a>
	</div>
    <!--h1><?php bloginfo( 'name' ) ?></h1-->
  </header>
  <div id="navbar">
	  <div style="text-align:center;">
		<a href="<?php bloginfo( 'url' ); ?>"><img id="float-logo" src="<?php echo get_stylesheet_directory_uri(); ?>/images/hraff-logo.svg" height="75px"/></a>
		</div>
	  <nav>
		<?php wp_nav_menu( [ 'theme_location' => 'main-menu' ] ); ?>
	  </nav>
  </div>
  <div id="title"></div>
  <script>
	var header = document.getElementsByTagName("header")[0];
	var navlogo = document.getElementById("float-logo");
	window.addEventListener('scroll', function(e){
		let headheight = header.clientHeight;
		scroll = window.scrollY;
			if (scroll > headheight){
				navlogo.style.opacity = 1;
			}
			else {
				navlogo.style.opacity = 0;
			}
		}
		);
  </script>
  <!--script>
	var header = document.getElementsByTagName("header")[0];
	console.log(header);
	var scroll;
	var navbar = document.getElementById("navbar");
	var navlogo = document.getElementById("float-logo");
	var title = document.getElementById("title");
	var body = document.getElementsByTagName("body")[0];
	window.addEventListener('scroll', function(e){
		let headheight = header.clientHeight;
		//let navheight = navbar.clientHeight;
		scroll = window.scrollY;
		if (window.innerWidth > 500){
			if (scroll > headheight){
				title.setAttribute("style", "background-color: blue; height: "+ navbar.clientHeight +"px");
				navbar.classList.add("float");
				navbar.style.width = header.offsetWidth+"px";
				navlogo.style.opacity = 1;
			}
			else {
				title.setAttribute("style", "background-color: red; height: 0px");
				navbar.classList.remove("float");
				navlogo.style.opacity = 0;
			}
		}
})</script--!>