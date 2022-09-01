<?php 

// Ajouter la prise en charge des images mises en avant
add_theme_support( 'post-thumbnails' );
add_theme_support( 'post-thumbnails' );

// Définir la taille des images mises en avant
set_post_thumbnail_size( 2000, 400, true );

// Définir d'autres tailles d'images
add_image_size( 'products', 800, 600, false );
add_image_size( 'square', 256, 256, false );

// Ajouter automatiquement le titre du site dans l'en-tête du site
add_theme_support( 'title-tag' );

	// // Configuration du thème
	// require_once get_template_directory() . '/inc/config.php';

	// // Types de publication et taxonomies
	// require_once get_template_directory() . '/inc/post-types.php';

	// // Fonctionnalités
	// require_once get_template_directory() . '/inc/features.php';
    
function capitaine_register_assets() {
    
    // Déclarer jQuery
    wp_enqueue_script('jquery' );
    
    // Déclarer le JS
	wp_enqueue_script( 
        'capitaine', 
        get_template_directory_uri() . '/js/script.js', 
        array( 'jquery' ), 
        '1.0', 
        true
    );
    
    // Déclarer le fichier style.css à la racine du thème
    wp_enqueue_style( 
        'capitaine',
        get_stylesheet_uri(), 
        array(), 
        '1.0'
    );
  	
    // Déclarer le fichier CSS à un autre emplacement
    wp_enqueue_style( 
        'capitaine', 
        get_template_directory_uri() . '/css/main.css',
        array(), 
        '1.0'
    );
}
add_action( 'wp_enqueue_scripts', 'capitaine_register_assets' );

	// Déclarer un autre fichier JS
	wp_enqueue_script( 
        'diaporama', 
        get_template_directory_uri() . '/js/diaporama.js', 
        array( 'jquery' ), 
        '1.0', 
        true
    );

    function capitaine_child_register_assets() {
  
    // Chargement de la feuille du style du theme parent
 	wp_enqueue_style( 'capitaine-theme', get_template_directory_uri() . '/style.css' );

    // Chargement de la feuille de style complémentaire du thème enfant
 	wp_enqueue_style( 'capitaine-child-theme', get_stylesheet_directory_uri() . '/style.css' );
}
add_action( 'wp_enqueue_scripts', 'capitaine_child_register_assets' );

register_nav_menus( array(
	'main' => 'Menu Principal',
	'footer' => 'Bas de page',
) );