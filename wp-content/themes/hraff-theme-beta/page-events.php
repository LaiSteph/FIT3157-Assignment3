<!doctype html>

<?php get_header(); ?>


<section>
<!-- ========== START PAGE TEMPLATE ========== -->
  <h2><?php wp_title( '' ); ?></h2>
  
  <?php 
	query_posts( array( 'post_type' => 'event'));
	if ( have_posts() ) : while ( have_posts() ) : the_post(); 
  ?>
  
  
  <article>
  
    <?php if ( is_archive() || is_home() ) { ?>
		<h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
		<?php
			the_excerpt();
		} else {
			the_content();
		}?>
		<div><?php the_field('event_date'); ?></div>
		<div><?php the_field('event_language'); ?></div>
		<div><?php if( get_field( 'event_duration' ) ) {
			the_field( 'event_duration' );
		}?></div>
		<div><?php if( get_field( 'age_restriction' ) ) {
			the_field( 'age_restriction' );
		}?></div>
	
  </article>
  
  <?php endwhile; else : ?>
  
  <h2>Error</h2>
  <p>Sorry, no posts matched your criteria.</p>
  
  <?php endif; ?>
  
<!-- ========== END PAGE TEMPLATE ========== -->
</section>


<?php get_footer(); ?>