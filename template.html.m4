m4_divert(1)m4_dnl
<!doctype html>
m4_dnl  Prepare some default values. If we have not defined a __TITLE macro in
m4_dnl  the content, the page title will be "Untitled Page."
m4_ifdef(`__TITLE',, `m4_define(`__TITLE', `Untitled Page')')
m4_ifdef(`__ROOT',, `m4_define(`__ROOT', `')')
<!--[if lt IE 7 ]> <html class="ie ie6 no-js" lang="en"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie ie7 no-js" lang="en"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie ie8 no-js" lang="en"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie ie9 no-js" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--><html class="no-js" lang="en"><!--<![endif]-->
m4_dnl  The "no-js" class is for Modernizr.
<head id="www-sitename-com" data-template-set="html5-reset">
    <meta charset="utf-8">

    m4_dnl  Always force latest IE rendering engine (even in intranet) & Chrome Frame
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title>__TITLE</title>

    <meta name="title" content="__TITLE">
    <meta name="description" content="">
    m4_dnl  Google will often use this as its description of your page/site. Make it good.
    
    <meta name="google-site-verification" content="">
    m4_dnl  Speaking of Google, don't forget to set your site up: http://google.com/webmasters
    
    <meta name="author" content="Your Name Here">
    <meta name="Copyright" content="Copyright Your Name Here 2011. All Rights Reserved.">

    m4_dnl  Dublin Core Metadata : http://dublincore.org/
    <meta name="DC.title" content="Project Name">
    <meta name="DC.subject" content="What you're about.">
    <meta name="DC.creator" content="Who made this site.">
    
    m4_dnl  Mobile Viewport Fix
    m4_dnl  j.mp/mobileviewport & davidbcalhoun.com/2010/viewport-metatag 
    m4_dnl  device-width : Occupy full width of the screen in its current orientation
    m4_dnl  initial-scale = 1.0 retains dimensions instead of zooming out if page height > device height
    m4_dnl  maximum-scale = 1.0 retains dimensions instead of zooming in if page width < device width
    m4_dnl  
    m4_dnl  Uncomment to use; use thoughtfully!
    m4_dnl  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    m4_dnl

    <link rel="shortcut icon" href="_/img/favicon.ico">
    m4_dnl  This is the traditional favicon.
    m4_dnl  - size: 16x16 or 32x32
    m4_dnl  - transparency is OK
    m4_dnl  - see wikipedia for info on browser support: http://mky.be/favicon/
         
    <link rel="apple-touch-icon" href="_/img/apple-touch-icon.png">
    m4_dnl  The is the icon for iOS's Web Clip.
    m4_dnl  - size: 57x57 for older iPhones, 72x72 for iPads, 114x114 for iPhone4's retina display (IMHO, just go ahead and use the biggest one)
    m4_dnl  - To prevent iOS from applying its styles to the icon name it thusly: apple-touch-icon-precomposed.png
    m4_dnl  - Transparency is not recommended (iOS will put a black BG behind the icon)
    m4_dnl  
    m4_dnl  CSS: screen, mobile & print are all in the same file
    <link rel="stylesheet" href="_/css/style.css">
    
    m4_dnl  all our JS is at the bottom of the page, except for Modernizr.
    <script src="_/js/modernizr-1.7.min.js"></script>
</head>

<body>
<div class="wrapper">m4_dnl  not needed? up to you: http://camendesign.com/code/developpeurs_sans_frontieres
    <header>
        <h1><a href="/">__TITLE</a></h1>
        <nav>
            <ol>
                <li><a href="">Nav Link 1</a></li>
                <li><a href="">Nav Link 2</a></li>
                <li><a href="">Nav Link 3</a></li>
            </ol>
        </nav>
    </header>
    <article>
m4_dnl
m4_divert(3)m4_dnl  --- Content will be placed here ---
m4_dnl
    </article>
    <aside>
        <h2>Sidebar Content</h2>
    </aside>
    <footer>
        <p>Created by <a href="http://datagrok.org">Michael F. Lamb</a></p>
    </footer>
m4_dnl	The github ribbon, from https://github.com/blog/273-github-ribbons
	<a href="http://github.com/datagrok/m4-bakery"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://a248.e.akamai.net/assets.github.com/img/e6bef7a091f5f3138b8cd40bc3e114258dd68ddf/687474703a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f7265645f6161303030302e706e67" alt="Fork me on GitHub"></a>
</div>

m4_dnl  Grab Google CDN's jQuery. fall back to local if necessary
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
<script>window.jQuery || document.write("<script src='_/js/jquery-1.5.1.min.js'>\x3C/script>")</script>

m4_dnl  this is where we put our custom functions
<script src="_/js/functions.js"></script>

m4_ifdef(`__GACODE', `<script>
    var _gaq = _gaq || [];
    _gaq.push(["_setAccount", "__GACODE"]);
    _gaq.push(["_trackPageview"]);
    (function() {
        var ga = document.createElement("script"); ga.type = "text/javascript"; ga.async = true;
        ga.src = ("https:" == document.location.protocol ? "https://ssl" : "http://www") + ".google-analytics.com/ga.js";
        var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(ga, s);
    })();
</script>') 

</body>
</html>
m4_dnl vim: ft=m4 :
