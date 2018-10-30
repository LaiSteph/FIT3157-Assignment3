<!doctype html>

<?php get_header(); ?>


<section>
<!-- ========== START PAGE TEMPLATE ========== -->
  <h2><?php wp_title( '' ); ?></h2>
  
  <?php 
	query_posts( array( 'post_type' => 'news'));
	if ( have_posts() ) : while ( have_posts() ) : the_post(); 
  ?>
  
  
  <article>
    <?php if ( is_archive() || is_home() ) { ?>
		<h3><a href="A<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
		<?php
			the_excerpt();
		} else {
			the_content();
		}?>
		<div><?php echo get_the_date();?></div>
		<div><?php if( get_field( 'article_author' ) ) {
			the_field( 'article_author' );
		}?></div>
	
  </article>
  
  <?php endwhile; else : ?>
  
  <h2>Error</h2>
  <p>Sorry, no posts matched your criteria.</p>
  
  <?php endif; ?>
  
<!-- ========== END PAGE TEMPLATE ========== -->
</section>


<?php get_footer(); ?>