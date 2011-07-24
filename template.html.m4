m4_divert(1)m4_dnl
<html>

m4_dnl  Prepare some default values. If we have not defined a __TITLE macro in
m4_dnl  the content, the page title will be "Untitled Page."
m4_ifdef(`__TITLE',, `m4_define(`__TITLE', `Untitled Page')')

<head>
    <title>__TITLE</title>
m4_dnl	Caveat: defining the stylesheet like this will make the browser look in
m4_dnl	the same path as the html file for the stylesheet. This works fine if
m4_dnl	you have a flat heiarchy and all the files are in the root of your
m4_dnl	site.
    <link rel="stylesheet" href="style.css">
</head>

<body>
	<div id="header">This header will appear on every page.</div>
	<div id="content">
	<h1 id="title">__TITLE</h1>
m4_dnl
m4_divert(3)m4_dnl  --- Content will be placed here ---
m4_dnl
	</div>
	<div id="footer">Created by <a href="http://datagrok.org">Michael F. Lamb</a></div>
m4_dnl	The github ribbon, from https://github.com/blog/273-github-ribbons
	<a href="http://github.com/datagrok/m4-bakery"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://a248.e.akamai.net/assets.github.com/img/e6bef7a091f5f3138b8cd40bc3e114258dd68ddf/687474703a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f7265645f6161303030302e706e67" alt="Fork me on GitHub"></a>
</body>
</html>
m4_dnl vim: ft=m4 :
