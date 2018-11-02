<!DOCTYPE html>
<html>
<?php get_header(); ?>

<head></head>
    <body>
        <section>
            

        <h2><?php wp_title( '' ); ?></h2>
 

<!---Carousel--->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="../../uploads/2018/10/the-song-keepers-1024x683.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="../../uploads/2018/10/daydreamer-wolf-150x150.png" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="../../uploads/2018/10/her-sound-her-story.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  
<!-- End Carousel -->
  <div class="intro">
      <div class="shape"></div>
      <div class="content">
        <h3>The Human Rights Arts and Film Festival (HRAFF) was founded in 2007 to make human rights relevant, accessible, and engaging to all Australians.</h3>
        <p> Welcome to the 2018 Human Rights Arts & Film Festival.
        In a ‘post-truth’ world, the powerful role creativity can
        play in opening minds and hearts can’t be underestimated.
        Through its dynamic mix of thought-provoking films, forums
        and arts events – this festival invites us to ask questions,
        explore new perspectives and learn about the experiences
        of others in our community and beyond. <br/><br/>Martin Foley - Minister for Creative Industries</p>
      </div>
    </div>
    
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
        <div><?php the_post_thumbnail('medium');?></div>
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
        <div><?php the_post_thumbnail('medium');?></div>
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
            
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" integrity="sha384-3ceskX3iaEnIogmQchP8opvBy3Mi7Ce34nWjpBIwVTHfGYWQS9jwHDVRnpKKHJg7" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>       
    </body>
</html>
    