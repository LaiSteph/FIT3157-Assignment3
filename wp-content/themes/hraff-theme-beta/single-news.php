<!doctype html>

<?php get_header(); ?>

<!-- ========== START PAGE TEMPLATE ========== -->
<?php if (has_post_thumbnail()): ?>
	<div class="title-banner">
<?php else: ?>
	<div class="title-banner no-image">
<?php endif; ?>
			<div class="title-banner-image"><?php the_post_thumbnail( 'large' ); ?></div>
		<div class="title-banner-info">
			<span class="post-type"><?php echo get_post_type(); ?> | <?php echo get_the_date();?></span>
			<h2 class="article-title"><?php wp_title( '' ); ?></h2>
			<span class="author"><?php
					$terms = wp_get_post_terms(get_the_ID(), 'article_author');
					$author_name = $terms[0]->name;
					$author_desc = $terms[0]->description;
					$author_image = $terms[0]->author_image;
					echo $author_name;
				?></span>
		</div>
	</div>
  <section>
  <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
  
  
  <article class="news-article">
  
    <?php if ( is_archive() || is_home() ) { ?>
      <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
      <?php
      the_post_thumbnail( 'thumbnail' );
      the_excerpt();
    } else {
      
      the_content();
    }?>
	<!--div class="author-snippet">
		<img class="author-image" src="<?php echo $author_image; ?>"/>
		<span class="author-name"=><?php echo $author_name; ?></span>
		<span class="author-description"=><?php echo $author_desc; ?></span>
	</div-->
  </article>
  
  
  <?php endwhile; else : ?>
  
  <h2>Error</h2>
  <p>Sorry, no posts matched your criteria.</p>
  
  <?php endif; ?>
  
<!-- ========== END PAGE TEMPLATE ========== -->
</section>


<?php get_footer(); ?>