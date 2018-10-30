<!doctype html>

<?php get_header(); ?>


<section>
<!-- ========== START PAGE TEMPLATE ========== -->

  <h2><?php wp_title( '' ); ?></h2>
  
  <section>
    <h3 class="intro">The Human Rights Arts and Film Festival (HRAFF) was founded in 2007 to make human rights relevant, accessible, and engaging to all Australians.</h3>
    <p> Welcome to the 2018 Human Rights Arts & Film Festival.
        In a ‘post-truth’ world, the powerful role creativity can
        play in opening minds and hearts can’t be underestimated.
        Through its dynamic mix of thought-provoking films, forums
        and arts events – this festival invites us to ask questions,
        explore new perspectives and learn about the experiences
        of others in our community and beyond. <br/><br/>Martin Foley - Minister for Creative Industries</p></section>
    
<!-- Film -->    
    <div>
    <h2>Film Program</h2>
    <?php 
	query_posts( array( 'post_type' => 'event', 'event_type'=>'film', 'posts_per_page' => 3));
	if ( have_posts() ) : while ( have_posts() ) : the_post(); 
  ?>
  
  
  <article>
    
    <?php if ( is_archive() || is_home() ) { ?>
		<div class="home-event">
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
      </div>
  </article>
  
  <?php endwhile; else : ?>
  
  <h2>Error</h2>
  <p>Sorry, no posts matched your criteria.</p>
  
  <?php endif; ?>
    </div>

<!-- Art -->
    <div>
        <h2>Arts Program</h2>
    <?php 
	query_posts( array( 'post_type' => 'event', 'event_type' => 'art', 'posts_per_page' => 3));
	if ( have_posts() ) : while ( have_posts() ) : the_post(); 
  ?>
  
  
  <article>
  
    <?php if ( is_archive() || is_home() ) { ?>
		<div class="home-event">
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