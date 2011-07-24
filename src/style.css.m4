m4_dnl  
m4_dnl  Since this CSS file is interpreted by m4, we can do some neat tricks
m4_dnl  like creating a macro that expands to an HTML color, so you can change
m4_dnl  all the places it is used in the style in one place. 
m4_dnl
m4_dnl  If I'm still experimenting with the color palette for my site, or maybe
m4_dnl  I want to change it for events, but I know that I want boldface text to
m4_dnl  always have the same color as the table header background.  Without a
m4_dnl  macro processor, we would have to state the color in multiple places in
m4_dnl  the file, and if we ever need to change the color we would have to
m4_dnl  modify it in more than one place. Having variables and macros lets us
m4_dnl  be expressive about the intent for a particular color.
m4_define(`HLCOLOR', `#0066ff')
m4_define(`FGCOLOR', `#333333')
m4_define(`BGCOLOR', `#cccccc')

b {
	color: HLCOLOR;
}

th {
	background: HLCOLOR;
	forground: BGCOLOR;
}

m4_dnl	"Invert" the color for the header and footer div.
html, #header, #footer {
	color: BGCOLOR;
	background-color: FGCOLOR;
}
#header a, #footer a {
	color: BGCOLOR;
}

#content {
	margin: 1em;
	padding: 1em;
	color: FGCOLOR;
	background-color: BGCOLOR;
}
#footer {
	text-align: right;
}
#title {
	margin-top: 0em;
}
