/**
 * Created by Maen Terawasi on 23/09/2015.
 */

$(function(){
    //Instantiate MixItUp:
    $('#Container').mixItUp();

//Instantiate sliphover

    //hide hover effect on dom load
    $('.imageHoverEffect').hide();
    //trigger image effect on hover
    $('.featuredWorksGallery .mix').hover(function(element) {
        $('.imageHoverEffect',$(this)).stop().slideToggle();
    });

    //Full gallery plugin options with default values.
    var settings = {
        // shows fullscreen overlay
        overlay:    true,
        // shows loading spinner
        spinner:    true,
        // shows navigation arrows
        nav:      true,
        // text for navigation arrows
        navText:    ['&larr;','&rarr;'],
        // shows image captions
        captions:   true,
        // captions attribute (title or data-title)
        captionsData: 'title',
        // shows close button
        close:      true,
        // text for close button
        closeText:    'X',
        // show counter
        showCounter:	true,
        // file extensions
        fileExt:    'png|jpg|jpeg|gif',
        // animation speed in ms
        animationSpeed: 250,
        // image preloading
        preloading:   true,
        // keyboard navigation
        enableKeyboard: true,
        // endless looping
        loop:     true,
        // closes the lightbox when clicking outside
        docClose:     true,
        // how much pixel you have to swipe
        swipeTolerance: 50,
        // lightbox wrapper Class
        className:    'simple-lightbox',
        // width / height ratios
        widthRatio:   0.8,
        heightRatio:  0.9
    };
    //Call gallery the plugin with default options to enable the lightbox.
    var gallery = $('.gallery a').simpleLightbox(settings);
});



