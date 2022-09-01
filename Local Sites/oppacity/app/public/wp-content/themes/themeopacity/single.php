<?php get_header(); ?>
<main class="wrap">
  <section class="content-area content-full-width">
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
      <article class="article-full">
        <header>
          <h2><?php the_title(); ?></h2>
          Proposé par: <?php the_author(); ?>
        </header>
       <?php the_content(); ?>
      </article>
<?php endwhile; else : ?>
      <article>
        <p> Désolé, aucuns articles trouvés !</p>
      </article>
<?php endif; ?>
  </section>
</main>
<?php get_footer(); ?>