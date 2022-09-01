<?php get_header(); ?>
<main class="wrap">
  <div class="primary-sidebar"><p>Bonjour</p></div>
  <section class="content-area content-thin">
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
      <article class="article-loop">
        <header>
          <h2><a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><?php the_title(); ?></a></h2>
          Proposé par: <?php the_author(); ?>
        </header>
        <?php the_excerpt(); ?>
      </article>
<?php endwhile; else : ?>
      <article>
        <p>Désolé aucun articles trouvés</p>
      </article>
<?php endif; ?>
</section><?php //get_sidebar(); ?>



</main>
<?php get_footer(); ?>