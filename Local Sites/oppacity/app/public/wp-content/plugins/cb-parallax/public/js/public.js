(function ($) {
    "use strict";
    // Global Variables
    let cbPublicIsMobile = true === /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ? '1' : '0';
    let $instance = null;
    let viewport = $(window);

    function CbParallaxPublic() {
        this.cbParallaxPublic = Cb_Parallax_Public;

        this.defaultOptions = {
            background_image_url: '',
            background_color: '',
            position_x: 'center',
            position_y: 'center',
            background_attachment: 'fixed',

            can_parallax: '0',
            parallax_enabled: '0',
            direction: 'vertical',
            vertical_scroll_direction: 'top',
            horizontal_scroll_direction: 'left',
            horizontal_alignment: 'center',
            vertical_alignment: 'center',
            overlay_image: '',
            image_width: viewport.innerWidth(),
            image_height: viewport.innerHeight(),
            overlay_path: '',
            overlay_opacity: '0.3',
            overlay_color: ''
        };
        this.direction = undefined !== this.cbParallaxPublic.image_options.direction ? this.cbParallaxPublic.image_options.direction : this.defaultOptions.direction;
        this.verticalScrollDirection = undefined !== this.cbParallaxPublic.image_options.vertical_scroll_direction ? this.cbParallaxPublic.image_options.vertical_scroll_direction : this.defaultOptions.vertical_scroll_direction;
        this.horizontalScrollDirection = undefined !== this.cbParallaxPublic.image_options.horizontal_scroll_direction ? this.cbParallaxPublic.image_options.horizontal_scroll_direction : this.defaultOptions.horizontal_scroll_direction;
        this.horizontalAlignment = undefined !== this.cbParallaxPublic.image_options.horizontal_alignment ? this.cbParallaxPublic.image_options.horizontal_alignment : this.defaultOptions.horizontal_alignment;
        this.verticalAlignment = undefined !== this.cbParallaxPublic.image_options.vertical_alignment ? this.cbParallaxPublic.image_options.vertical_alignment : this.defaultOptions.vertical_alignment;
        //
        this.parallaxEnabled = undefined !== this.cbParallaxPublic.plugin_options.parallax_enabled ? this.cbParallaxPublic.plugin_options.parallax_enabled : '0';
        this.allowOverride = undefined !== this.cbParallaxPublic.plugin_options.allow_override ? this.cbParallaxPublic.plugin_options.allow_override : '0';
        this.disableOnMobile = undefined !== this.cbParallaxPublic.plugin_options.disable_on_mobile ? this.cbParallaxPublic.plugin_options.disable_on_mobile : '0';
        //
        this.canParallax = undefined !== this.cbParallaxPublic.image_options.can_parallax ? this.cbParallaxPublic.image_options.can_parallax : '0';
        this.scrolling = {preserved: undefined !== this.cbParallaxPublic.plugin_options.preserve_scrolling ? this.cbParallaxPublic.plugin_options.preserve_scrolling : '0'};
        this.image = {
            src: undefined !== this.cbParallaxPublic.image_options.background_image_url ? this.cbParallaxPublic.image_options.background_image_url : this.defaultOptions.background_image_url,
            backgroundColor: undefined !== this.cbParallaxPublic.image_options.background_color ? this.cbParallaxPublic.image_options.background_color : this.defaultOptions.background_color,
            positionX: undefined !== this.cbParallaxPublic.image_options.position_x ? this.cbParallaxPublic.image_options.position_x : this.defaultOptions.position_x,
            positionY: undefined !== this.cbParallaxPublic.image_options.position_y ? this.cbParallaxPublic.image_options.position_y : this.defaultOptions.position_y,
            backgroundAttachment: undefined !== this.cbParallaxPublic.image_options.background_attachment ? this.cbParallaxPublic.image_options.background_attachment : this.defaultOptions.background_attachment,
            backgroundRepeat: undefined !== this.cbParallaxPublic.image_options.background_repeat ? this.cbParallaxPublic.image_options.background_repeat : this.defaultOptions.background_repeat,

            width: undefined !== this.cbParallaxPublic.image_data.image_width ? this.cbParallaxPublic.image_data.image_width : this.defaultOptions.image_width,
            height: undefined !== this.cbParallaxPublic.image_data.image_height ? this.cbParallaxPublic.image_data.image_height : this.defaultOptions.image_height
        };
        this.overlay = {
            path: undefined !== this.cbParallaxPublic.overlay_options.overlay_path ? this.cbParallaxPublic.overlay_options.overlay_path : this.defaultOptions.overlay_path,
            image: undefined !== this.cbParallaxPublic.overlay_options.overlay_image ? this.cbParallaxPublic.overlay_options.overlay_image : this.defaultOptions.overlay_image,
            opacity: undefined !== this.cbParallaxPublic.overlay_options.overlay_opacity ? this.cbParallaxPublic.overlay_options.overlay_opacity : this.defaultOptions.overlay_opacity,
            color: undefined !== this.cbParallaxPublic.overlay_options.overlay_color ? this.cbParallaxPublic.overlay_options.overlay_color : this.defaultOptions.overlay_color
        };

        this.imageAspectRatio = this.getBackgroundImageAspectRatio();
        this.context = null;
        this.img = null;
        this.parallaxfactor = 1.2;
        $instance = this;
    }

    CbParallaxPublic.prototype = {

        init: function () {
            if ('none' !== this.image.src) {
                this.imports = {polyfill: polyfill};
                this.imports = {requestAnimationFrame: requestAnimationFrame};
                window.__forceSmoothScrollPolyfill__ = true;
                polyfill();
                this.addEvents();
            }
        },

        initBackground: function () {
            if ('none' !== this.image.src) {
                if ('parallax' === this.getBackgroundMode()) {
                    this.setupCanvas();
                    let canvasDim = this.getCanvasDimensions();
                    let canvas = document.getElementById('cb_parallax_canvas');
                    let context = canvas.getContext('2d');
                    this.img = new Image();
                    let $this = this;
                    this.img.onload = function () {
                        context.drawImage(this, 0, 0, canvasDim.x, canvasDim.y);
                        $this.initParallaxBackgroundImage();
                    };
                    this.img.src = this.image.src + '?' + escape(new Date().toDateString());
                } else {
                    this.initStaticBackgroundImage();
                }
            }
        },

        getBackgroundMode: function () {
            let mode = 'static';

            if ('1' === this.parallaxEnabled && '1' === this.canParallax) {
                mode = 'parallax';
            }
            if ('1' === cbPublicIsMobile && '1' === this.disableOnMobile) {
                mode = 'static';
            }

            return mode;
        },

        addEvents: function () {
            let viewport = $(window);
            if ('1' === this.canParallax && '1' === this.parallaxEnabled) {
                viewport.on('scroll', {context: this}, this.parallaxOnScroll);
                viewport.on('resize', {context: this}, this.parallaxOnResize);
            } else {
                viewport.on('resize', {context: this}, this.staticBackgroundImageOnResize);
            }
        },

        initParallaxBackgroundImage: function () {
            this.setupOverlay();
            this.addCss();
            this.updateCanvasAlignment();
            this.updateParallaxAxis();
            // We call this one once from here so everything is Radiohead, Everything in its right place :)
            this.doParallaxTranslate3DTransform(this.getParallaxTransform());
            //this.fixDarkReaderPlugin();
        },

        setupCanvas: function () {
            let canvasDim = this.getCanvasDimensions();
            let html = '<canvas id="cb_parallax_canvas" class="custom-background" width="' + canvasDim.x + '" height="' + canvasDim.y + '" style="background-color: ' + this.image.backgroundColor + '"></canvas>';
            $('body').prepend(html);
        },

        setupOverlay: function () {
            $('body').prepend('<div id="cb_parallax_overlay"></div>');
            this.overlayContainer = $('#cb_parallax_overlay');

            if ('0.0' !== this.overlay.opacity && 'none' !== this.overlay.opacity) {
                this.overlayContainer.css({
                    'opacity': this.overlay.opacity
                });
            }
            if ('' !== this.overlay.color) {
                this.overlayContainer.css({
                    'background-color': this.overlay.color
                });
            }
            if ('none' !== this.overlay.image) {
                this.overlayContainer.css({
                    'background': 'url(' + this.overlay.path + this.overlay.image + ')'
                });
            }
        },

        parallaxOnScroll: function (event) {
            let $this = this;

            if (undefined !== event) {
                $this = event.data.context;
            }
            $this.isScrolling = '1';
            $instance = $this;
            requestAnimationFrame($this.scrollParallaxBackgroundImage);
        },

        scrollParallaxBackgroundImage: function () {
            if ('1' === $instance.isScrolling) {
                $instance.doParallaxTranslate3DTransform($instance.getParallaxTransform());
            }
            $instance.isScrolling = '0';
            requestAnimationFrame($instance.scrollParallaxBackgroundImage);
        },

        parallaxOnResize: function (event) {
            let $this = this;

            if (undefined !== event) {
                $this = event.data.context;
            }
            $this.isResizing = '1';
            $instance = $this;
            requestAnimationFrame($this.resizeParallaxBackgroundImage);
        },

        resizeParallaxBackgroundImage: function () {
            if ('1' === $instance.isResizing) {
                $instance.updateCanvasDimensions();
                $instance.updateCanvasAlignment();
                $instance.doParallaxTranslate3DTransform($instance.getParallaxTransform());
                $instance.updateParallaxAxis();
            }
            $instance.isResizing = '0';
            requestAnimationFrame($instance.resizeParallaxBackgroundImage);
        },

        getBackgroundImageHorizontalAlignment: function () {
            let posX = null;
            let canvasDim = this.getCanvasDimensions();
            let aspectRatio = this.getViewportAspectRatio();
            let landscape = aspectRatio >= this.imageAspectRatio ? '1' : '0';
            let portrait = aspectRatio < this.imageAspectRatio ? '1' : '0';
            let viewport = $(window);

            if ('vertical' === this.direction) {
                if ('to top' === this.verticalScrollDirection) {
                    if ('1' === landscape) {
                        switch (this.horizontalAlignment) {
                            case 'left':
                                posX = '0';
                                break;
                            case 'center':
                                posX = (viewport.innerWidth() / 2) - (canvasDim.x / 2);
                                break;
                            case 'right':
                                posX = viewport.innerWidth() - canvasDim.x;
                                break;
                        }
                        return parseInt(posX) + 'px';
                    } else if ('1' === portrait) {
                        switch (this.horizontalAlignment) {
                            case 'left':
                                posX = '0';
                                break;
                            case 'center':
                                posX = (viewport.innerWidth() / 2) - (canvasDim.x / 2);
                                break;
                            case 'right':
                                posX = viewport.innerWidth() - canvasDim.x;
                                break;
                        }
                        return parseInt(posX) + 'px';
                    }
                } else if ('to bottom' === this.verticalScrollDirection) {
                    if ('1' === landscape) {
                        switch (this.horizontalAlignment) {
                            case 'left':
                                posX = '0';
                                break;
                            case 'center':
                                posX = (viewport.innerWidth() / 2) - (canvasDim.x / 2);
                                break;
                            case 'right':
                                posX = viewport.innerWidth() - canvasDim.x;
                                break;
                        }
                        return parseInt(posX) + 'px';
                    } else if ('1' === portrait) {
                        switch (this.horizontalAlignment) {
                            case 'left':
                                posX = '0';
                                break;
                            case 'center':
                                posX = (viewport.innerWidth() / 2) - (canvasDim.x / 2);
                                break;
                            case 'right':
                                posX = viewport.innerWidth() - canvasDim.x;
                                break;
                        }
                        return parseInt(posX) + 'px';
                    }
                }
            }
        },

        updateCanvasAlignment: function () {
            let element = $('#cb_parallax_canvas');

            if ('vertical' === this.direction) {
                element.css({'left': this.getBackgroundImageHorizontalAlignment()});
            } else if ('horizontal' === this.direction) {
                element.css({'top': this.getBackgroundImageVerticalAlignment()});
            }
        },

        getBackgroundImageVerticalAlignment: function () {
            let posY = null;
            let canvasDim = this.getCanvasDimensions();
            let aspectRatio = this.getViewportAspectRatio();
            let landscape = aspectRatio >= this.imageAspectRatio ? '1' : '0';
            let portrait = aspectRatio < this.imageAspectRatio ? '1' : '0';
            let viewport = $(window);

            if ('horizontal' === this.direction) {
                if ('to the left' === this.horizontalScrollDirection) {
                    if ('1' === landscape) {
                        switch (this.verticalAlignment) {
                            case 'top':
                                posY = '0';
                                break;
                            case 'center':
                                //posY = -( canvasDim.y / 2 ) - ($( window ).innerHeight() / 2 );
                                posY = (viewport.innerHeight() / 2) - (canvasDim.y / 2);
                                break;
                            case 'bottom':
                                posY = viewport.innerHeight() - canvasDim.y;
                                break;
                        }
                        return parseInt(posY) + 'px';
                    } else if ('1' === portrait) {
                        switch (this.verticalAlignment) {
                            case 'top':
                                posY = '0';
                                break;
                            case 'center':
                                posY = (viewport.innerHeight() / 2) - (canvasDim.y / 2);
                                //posY = - ( ( canvasDim.y / 2 ) - $( window ).innerHeight() / 2 ) / 2;
                                break;
                            case 'bottom':
                                posY = -viewport.innerHeight() + canvasDim.y;
                                break;
                        }
                        return parseInt(posY) + 'px';
                    }
                } else if ('to the right' === this.horizontalScrollDirection) {
                    if ('1' === landscape) {
                        switch (this.verticalAlignment) {
                            case 'top':
                                posY = '0';
                                break;
                            case 'center':
                                //posY = ( $( window ).innerHeight() / 2 ) - ( canvasDim.y / 2 );
                                posY = (viewport.innerHeight() / 2) - (canvasDim.y / 2);
                                break;
                            case 'bottom':
                                posY = viewport.innerHeight() - canvasDim.y;
                                break;
                        }
                        return parseInt(posY) + 'px';
                    } else if ('1' === portrait) {
                        switch (this.verticalAlignment) {
                            case 'top':
                                posY = '0';
                                break;
                            case 'center':
                                //posY = - ( canvasDim.y / 2 ) + ($( window ).innerHeight() / 2 );
                                posY = (viewport.innerHeight() / 2) - (canvasDim.y / 2);
                                break;
                            case 'bottom':
                                posY = viewport.innerHeight() - canvasDim.y;
                                break;
                        }
                        return parseInt(posY) + 'px';
                    }
                }
            }
        },

        updateParallaxAxis: function () {
            let element = $("#cb_parallax_canvas");

            if ('vertical' === this.direction) {
                if ('to bottom' === this.verticalScrollDirection) {
                    element.css({
                        'position': 'fixed',
                        'top': this.getBackgroundImageVerticalPositionInPx()
                    });
                }
            } else if ('horizontal' === this.direction) {
                element.css({
                    'position': 'fixed',
                    'left': this.getBackgroundImageHorizontalPositionInPx()
                });
            }
        },

        getParallaxTransform: function () {
            let transform = {
                x: null,
                y: null
            };
            let ratio = this.getParallaxScrollRatio();
            let scrollingPosition = $(window).scrollTop();

            // Determines the values for the transformation.
            if ('vertical' === this.direction) {
                if ('to top' === this.verticalScrollDirection) {
                    transform.x = 0;
                    transform.y = -scrollingPosition * ratio;
                } else if ('to bottom' === this.verticalScrollDirection) {
                    transform.x = 0;
                    transform.y = scrollingPosition * ratio;
                }
            } else if ('horizontal' === this.direction) {
                if ('to the left' === this.horizontalScrollDirection) {
                    transform.x = -scrollingPosition * ratio;
                    transform.y = 0;
                } else if ('to the right' === this.horizontalScrollDirection) {
                    transform.x = scrollingPosition * ratio;
                    transform.y = 0;
                }
            }
            return transform;
        },

        getParallaxScrollRatio: function () {
            let canvasDim = this.getCanvasDimensions();
            let documentOffsetX = null;
            let imageOffsetY = null;
            let imageOffsetX = null;
            let ratio = null;
            let viewport = $(window);

            if ('vertical' === this.direction) {
                documentOffsetX = $(document).innerHeight() - viewport.innerHeight();
                imageOffsetY = canvasDim.y - viewport.height();
                ratio = (imageOffsetY / documentOffsetX);
            } else if ('horizontal' === this.direction) {
                documentOffsetX = $(document).innerHeight() - viewport.innerHeight();
                imageOffsetX = canvasDim.x - viewport.innerWidth();
                ratio = (imageOffsetX / documentOffsetX);
            }
            return ratio;
        },

        doParallaxTranslate3DTransform: function (transform) {
            $("#cb_parallax_canvas").css({
                '-webkit-transform': 'translate3d(' + transform.x + 'px, ' + transform.y + 'px, 0px)',
                '-moz-transform': 'translate3d(' + transform.x + 'px, ' + transform.y + 'px, 0px)',
                '-ms-transform': 'translate3d(' + transform.x + 'px, ' + transform.y + 'px, 0px)',
                '-o-transform': 'translate3d(' + transform.x + 'px, ' + transform.y + 'px, 0px)',
                'transform': 'translate3d(' + transform.x + 'px, ' + transform.y + 'px, 0px)'
            });
        },

        getViewportDimensions: function () {
            let viewport = $('window');
            return {height: viewport.innerHeight(), width: viewport.innerWidth()};
        },

        getCanvasDimensions: function () {
            let viewport = $(window);
            let displayRatio = viewport.innerWidth() / viewport.innerHeight();
            let imageRatio = this.image.width / this.image.height;
            let imageHeight = 0;
            let imageWidth = 0;

            if ('vertical' === this.direction) {

                if (imageRatio < displayRatio) {
                    imageWidth = viewport.innerWidth();
                    imageHeight = imageWidth / this.image.width * this.image.height;
                    return {x: imageWidth.toFixed(0), y: imageHeight.toFixed(0)};
                } else {
                    imageHeight = viewport.innerHeight() * this.parallaxfactor;
                    imageWidth = imageHeight / this.image.height * this.image.width;
                    return {x: imageWidth.toFixed(0), y: imageHeight.toFixed(0)};
                }
            }
            if ('horizontal' === this.direction) {

                if (imageRatio < displayRatio) {
                    imageWidth = viewport.innerWidth() * this.parallaxfactor;
                    imageHeight = imageWidth / this.image.width * this.image.height;
                    return {x: imageWidth.toFixed(0), y: imageHeight.toFixed(0)};
                } else {
                    imageHeight = viewport.innerHeight();
                    imageWidth = imageHeight / this.image.height * this.image.width;
                    return {x: imageWidth.toFixed(0), y: imageHeight.toFixed(0)};
                }
            }
        },

        updateCanvasDimensions: function () {
            let canvasDim = this.getCanvasDimensions();
            let canvas = $("#cb_parallax_canvas");
            canvas.width(parseInt(canvasDim.x));
            canvas.height(parseInt(canvasDim.y));
        },

        initStaticBackgroundImage: function () {
            this.setupOverlay();
            this.addCss();
            this.setupStaticBackgroundImageContainer();
            //this.fixDarkReaderPlugin();
        },

        setupStaticBackgroundImageContainer: function () {
            let canvasDim = this.getStaticBackgroundImageDimensions();

            $('body').css({
                'background': 'url(' + this.image.src + ')',
                'background-size': canvasDim.width + 'px' + ' ' + canvasDim.height + 'px',
                'background-position': this.image.positionX + ' ' + this.image.positionY,
                'background-attachment': this.image.backgroundAttachment,
                'background-repeat': this.image.backgroundRepeat
            });
        },

        staticBackgroundImageOnResize: function (event) {
            let $this = this;

            if (undefined !== event) {
                $this = event.data.context;
            }
            $this.isResizing = '1';
            $instance = $this;
            requestAnimationFrame($this.updateStaticBackgroundImageAlignment);
        },

        updateStaticBackgroundImageAlignment: function () {
            if ('1' === $instance.isResizing) {
                $instance.updateStaticBackgroundImageDimensions();
            }
            $instance.isResizing = '0';
            requestAnimationFrame($instance.updateStaticBackgroundImageAlignment);
        },

        updateStaticBackgroundImageDimensions: function () {
            let canvasDim = $instance.getStaticBackgroundImageDimensions();
            $('body').css({'background-size': canvasDim.width + 'px' + ' ' + canvasDim.height + 'px'});
        },

        getStaticBackgroundImageDimensions: function () {
            let viewportSize = this.getViewportDimensions();
            let canvasDim = {};

            if (this.getViewportAspectRatio() >= this.imageAspectRatio) {
                // Landscape
                canvasDim.width = viewportSize.width;
                canvasDim.height = canvasDim.width / this.imageAspectRatio;
                return (canvasDim);
            } else {
                // Portrait
                canvasDim.height = viewportSize.height;
                canvasDim.width = canvasDim.height * this.imageAspectRatio;
                return canvasDim;
            }

        },

        addCss: function () {
            let body = $('>body');
            body.removeClass('custom-background');
            body.removeProp('background-image');

            body.css('background-color', 'transparent');
            body.css('background', 'transparent');
            body.find('::before').css('background-color', 'transparent');
            body.find('::before').css('background', 'transparent');
            $(':root').css('background-color', 'transparent');
        },

        getBackgroundImageHorizontalPositionInPx: function () {
            let posX = null;
            let canvasDimensions = this.getCanvasDimensions();

            if ('to the left' === this.horizontalScrollDirection) {
                posX = 0;
                return posX.toString() + 'px';
            } else if ('to the right' === this.horizontalScrollDirection) {
                let number = $(window).innerWidth() - canvasDimensions.x;
                posX = parseInt(number.toFixed());
                return posX.toString() + 'px';
            }
        },

        getBackgroundImageVerticalPositionInPx: function () {
            let posY = null;
            let canvasDimensions = this.getCanvasDimensions();

            if ('to top' === this.verticalScrollDirection) {
                posY = 0;
                return posY.toString() + 'px';
            } else if ('to bottom' === this.verticalScrollDirection) {
                let number = $(window).innerHeight() - canvasDimensions.y;
                posY = parseInt(number.toFixed());
                return posY.toString() + 'px';
            }
        },

        getBackgroundImageAspectRatio: function () {
            let image = this.image;
            return image.width / image.height;
        },

        getViewportAspectRatio: function () {
            let viewport = $(window);
            return viewport.innerWidth() / viewport.innerHeight();
        },

    };

    $(document).one('ready', function () {
        let cbParallaxPublic = new CbParallaxPublic();
        cbParallaxPublic.init();
    });

    $(window).on('load', function () {
        let cbParallaxPublic = new CbParallaxPublic();
        cbParallaxPublic.initBackground();
    });

})(jQuery);
