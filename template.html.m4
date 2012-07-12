m4_divert(1)m4_dnl
<!doctype html>
m4_dnl  Prepare some default values. If we have not defined a __TITLE macro in
m4_dnl  the content, the page title will be "Untitled Page."
m4_ifdef(`__TITLE',, `m4_define(`__TITLE', `Untitled Page')')
m4_ifdef(`__PROJECTNAME',, `m4_define(`__PROJECTNAME', `Savo How-Tos')')
m4_ifdef(`__ROOT',, `m4_define(`__ROOT', `.')')
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>__TITLE</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="__ROOT/_/bootstrap/css/bootstrap.css" rel="stylesheet">
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>
    <link href="__ROOT/_/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="__ROOT/_/bootstrap/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="__ROOT/_/bootstrap/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="__ROOT/_/bootstrap/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="__ROOT/_/bootstrap/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="__ROOT/_/bootstrap/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <body>

    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="`#'">__PROJECTNAME</a>
          <div class="nav-collapse">
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container">
	<h1>__TITLE</h1>

m4_dnl
m4_divert(3)m4_dnl  --- Content will be placed here ---
m4_dnl

    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="__ROOT/_/bootstrap/js/jquery.js"></script>
    <script src="__ROOT/_/bootstrap/js/bootstrap-transition.js"></script>
    <script src="__ROOT/_/bootstrap/js/bootstrap-alert.js"></script>
    <script src="__ROOT/_/bootstrap/js/bootstrap-modal.js"></script>
    <script src="__ROOT/_/bootstrap/js/bootstrap-dropdown.js"></script>
    <script src="__ROOT/_/bootstrap/js/bootstrap-scrollspy.js"></script>
    <script src="__ROOT/_/bootstrap/js/bootstrap-tab.js"></script>
    <script src="__ROOT/_/bootstrap/js/bootstrap-tooltip.js"></script>
    <script src="__ROOT/_/bootstrap/js/bootstrap-popover.js"></script>
    <script src="__ROOT/_/bootstrap/js/bootstrap-button.js"></script>
    <script src="__ROOT/_/bootstrap/js/bootstrap-collapse.js"></script>
    <script src="__ROOT/_/bootstrap/js/bootstrap-carousel.js"></script>
    <script src="__ROOT/_/bootstrap/js/bootstrap-typeahead.js"></script>

  </body>
</html>
m4_dnl vim: ft=m4 :
