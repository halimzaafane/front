<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
   <title><?php bloginfo('name'); ?> &raquo; <?php is_front_page() ? bloginfo('description') : wp_title(''); ?></title>
   <meta charset="<?php bloginfo( 'charset' ); ?>">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>">
   <link href="assets/bootstrap.css" rel="stylesheet">
   
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <link href="node_modules/rellax/rellax.min.js" rel="stylesheet">  <link href="node_modules/rellax/rellax.min.js" rel="stylesheet">
  <link href="node_modules/rellax/rellax.js" rel="stylesheet">


   <?php wp_head(); ?>
 </head>
 <body <?php body_class(); ?>>
   <header class="my-logo">
   <h1><a href="<?php echo esc_url( home_url( '/' ) ); ?>"><?php bloginfo('name'); ?></a></h1>
 </header>
 <?php wp_nav_menu( array( 'header-menu' => 'header-menu' ) ); ?>