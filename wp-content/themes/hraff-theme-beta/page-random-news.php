<!doctype html>

<?php get_header(); ?>


<section>
<!-- ========== START PAGE TEMPLATE ========== -->

  <h2><?php wp_title( '' ); ?></h2>
      <button id="reloadButton" type="button">Load Random News!</button>
  <template id="newsTemplate">
        <article class="newsItem">
             <h2 class="newsTitle">
                 <a class="newsLink" href=""></a>
             </h2>
             <div class="newsContent">
             </div>
        </article>
    </template>
<!-- ========== END PAGE TEMPLATE ========== -->
</section>
<script>
    var newsUrl = "http://localhost:3157/fit3157/wp-json/wp/v2/posts?categories=2";
    var newsTemplate = document.querySelector('#newsTemplate');
    document.querySelector('#reloadButton').addEventListener('click', loadData);
    function loadData(){
        fetch(newsUrl).then(processResponse);
    }
    
    function processResponse(response){
        if (response.status === 200) response.json().then(processData);
    }
    function processData(data){
        var i = parseInt( Math.random() * data.length );
        var news = data[i];
        var newsItem = newsTemplate.content.cloneNode( true );
        newsItem.querySelector( '.newsLink' ).href = news.link;
        newsItem.querySelector( '.newsLink' ).innerHTML = news.title.rendered;
        newsItem.querySelector( '.newsContent' ).innerHTML = news.excerpt.rendered;
        document.querySelector( 'section' ).appendChild( newsItem );
    }
    
    
</script>


<?php get_footer(); ?>