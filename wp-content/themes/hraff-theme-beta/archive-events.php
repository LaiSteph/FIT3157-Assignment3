<!doctype html>

<?php get_header(); ?>


<section>
<!-- ========== START PAGE TEMPLATE ========== -->
  <h2><?php wp_title( '' ); ?></h2>
  <template><a href="" class="event-container">
	<div class="event-image"><img src="<?php echo get_stylesheet_directory_uri(); ?>/images/test-thumb.jpg"/></div>
	<div class="event-title"></div>
	<div class="event-excerpt"></div>
  </a></template>
  
  <div class="event-listings">
	  <?php 
	  $query = new WP_Query( array( 'post_type' => 'events', 'posts_per_page' => 20));
		if ( $query->have_posts() ) : while ( $query->have_posts() ) : $query->the_post(); 
	  ?>
	  
	  <article>
		  <div href="<?php the_permalink(); ?>" class="event-container" onclick="location='<?php the_permalink(); ?>'">
			<div class="event-image">
				<img src="<?php the_post_thumbnail_url() ?>"/>
			</div>
			<div class="event-title"><?php if (strlen(get_the_title()) <= 20):?>
					<?php the_title(); ?>
				<?php else:?>
					<?php echo substr(get_the_title(),0,20)?>...
				<?php endif; ?>
				</div>
			<div class="event-excerpt"><?php echo substr(get_the_excerpt(),0,100); ?>...</div>
			<div class="event-date"><?php the_field('event_date'); ?></div>
		  </div>
	  </article>
	  
	  <?php endwhile; else : ?>
	  
	  <h2>Error</h2>
	  <p>Sorry, no posts matched your criteria.</p>
	  
	  <?php endif; ?>
  </div>
  
<!-- ========== END PAGE TEMPLATE ========== -->
</section>


<?php get_footer(); ?>