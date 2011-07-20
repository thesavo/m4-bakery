m4_divert(1)m4_dnl
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
m4_dnl
m4_dnl  Set some defaults:
m4_dnl  - __TITLE: Page Title
m4_dnl  - __ROOT:  Path to site root
m4_dnl
m4_ifdef(`__TITLE',, `m4_define(`__TITLE', `Untitled Page')')
m4_ifdef(`__ROOT',, `m4_define(`__ROOT', `')')
m4_dnl
m4_dnl
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
 <head>
  <title>__TITLE</title>
  <link rel="stylesheet" title="Default Style" type="text/css" media="screen" href="__ROOT/default.css">
 </head>
 <body>
m4_dnl
m4_dnl  ------ Content will be placed here ------
m4_dnl
m4_divert(3)
  <p class="footer">Generated: m4_esyscmd(`date')</p>
 </body>
</html>
