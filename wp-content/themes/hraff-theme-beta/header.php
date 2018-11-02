<html>
<head>
	<title><?php wp_title( '-', true, 'right' ); bloginfo( 'name' ); ?></title>
    <link href="https://v4-alpha.getbootstrap.com/assets/css/docs.min.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">

  <link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_uri(); ?>" />
  <?php wp_head(); ?>
    
</head>

<body>

  <header>
    <h1><a href="<?php bloginfo( 'url' ); ?>"><?php bloginfo( 'name' ) ?></a></h1>
  </header>
  
  <nav>
    <?php wp_nav_menu( [ 'theme_location' => 'main-menu' ] ); ?>
  </nav>