<?php

// Enable 'Featured Image' in post/page editor
add_theme_support( 'post-thumbnails' );

// Define 'Main Menu' as a selectable location in the menu editor
register_nav_menus( [ 'main-menu' => 'Main Menu' ] );

// Hook the default 'excerpt_length' action and run a custom function
add_filter( 'excerpt_length', 'custom_excerpt_length' );

// Return a custom length of 25 words 
function custom_excerpt_length() {
	return 20;
}

// Replaces the excerpt "Read More" text by a link
function new_excerpt_more($more) {
       global $post;
	return '<a class="moretag" href="'. get_permalink($post->ID) . '">  ..more</a>';
}
add_filter('excerpt_more', 'new_excerpt_more');

?>