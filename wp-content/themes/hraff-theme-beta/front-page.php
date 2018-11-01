<!DOCTYPE html>
<html>
<?php get_header(); ?>

<head></head>
    <body>
        <section>
            

        <h2><?php wp_title( '' ); ?></h2>
   

<!---Carousel--->

    
  <div class="intro">
    <h3>The Human Rights Arts and Film Festival (HRAFF) was founded in 2007 to make human rights relevant, accessible, and engaging to all Australians.</h3>
    <p> Welcome to the 2018 Human Rights Arts & Film Festival.
        In a ‘post-truth’ world, the powerful role creativity can
        play in opening minds and hearts can’t be underestimated.
        Through its dynamic mix of thought-provoking films, forums
        and arts events – this festival invites us to ask questions,
        explore new perspectives and learn about the experiences
        of others in our community and beyond. <br/><br/>Martin Foley - Minister for Creative Industries</p></div>
    
<!-- Film -->    
    <div id="film-program">
    <h2>Film Program</h2>
    <?php 
	query_posts( array( 'post_type' => 'events', 'event_type'=>'film', 'posts_per_page' => 3));
	if ( have_posts() ) : while ( have_posts() ) : the_post(); 
  ?>
  
  
  <article>
    
    <?php if ( is_archive() || is_home() ) { ?>
        <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
        <div><?php the_post_thumbnail('thumbnail');?></div>
            <?php
			the_excerpt();
		} else {
			the_content();
		}?>
            <div class="details">
		      <div><?php the_field('event_date'); ?></div>
		      <div><?php the_field('venue_name'); ?></div>
		      <div><?php if( get_field( 'event_duration' ) ) {
			     the_field( 'event_duration' ).print(" mins");
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
<div id="arts-program">
    <h2>Arts Program</h2>
        
    <?php 
	query_posts( array( 'post_type' => 'events', 'event_type' => 'art', 'posts_per_page' => 3));
	if ( have_posts() ) : while ( have_posts() ) : the_post(); 
  ?>
  

  <article>
    <?php if ( is_archive() || is_home() ) { ?>
		
        <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
        <div><?php the_post_thumbnail('thumbnail');?></div>
        <?php
			the_excerpt();
		} else {
			the_content();
		}?>
        <div class="details">
		<div><?php the_field('event_date'); ?></div>
        <div><?php the_field('venue_name'); ?></div>    
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
     

</section>


<?php get_footer(); ?>
    </body>
</html>