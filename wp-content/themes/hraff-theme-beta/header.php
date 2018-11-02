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
	<div class="banner">
		<img class="banner" src="<?php echo get_stylesheet_directory_uri(); ?>/images/banner.png"/>
	</div>
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