<form action="<?php echo home_url( '/' ); ?>" method="get">
    <input type="text" name="s" id="search" value="<?php the_search_query(); ?>" placeholder="Rechercher" />
    <input type="image" alt="Search" src="<?php bloginfo( 'template_url' ); ?>/images/search.png" />
</form>