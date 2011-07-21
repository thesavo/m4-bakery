m4_dnl  Macros file.
m4_divert(2)

m4_define(`TITLE',
m4_dnl  Set the title of this page.
`m4_define(`__TITLE', $1)')

m4_dnl  Configuration of the site
m4_dnl  ----------------------------------------------------------------------

m4_dnl  If your site is rooted somewhere other than /, specify it with no
m4_dnl  trailing slash:
m4_dnl      m4_define(`__ROOT', `/~user')
m4_dnl  Your Google analytics code:
m4_dnl      m4_define(`__GACODE', `UA-XXXXXX-XX')



m4_dnl vim: et: commentstring=m4_dnl\ %s:comments=\:#,\:#m4_dnl
