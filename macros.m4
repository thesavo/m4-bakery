m4_dnl Macros file.
m4_divert(2)
m4_define(`TITLE',` ')
m4_define(`INFO',` ')

m4_dnl  Limits values in hex triad to range 0-ff.
m4_dnl    in: hex triad `0',`ca',`fef'
m4_dnl   out: hex triad `0',`ee',`ff'
m4_define(_3HexLimit, `
m4_ifelse(
   m4_eval(`0x$1 < 0'), 1, 0,
   m4_eval(`0x$1 > 0xff'), 1, ff,
   $1),
 m4_ifelse(
   m4_eval(`0x$2 < 0'), 1, 0,
   m4_eval(`0x$2 > 0xff'), 1, ff,
   $2),
 m4_ifelse(
   m4_eval(`0x$3 < 0'), 1, 0,
   m4_eval(`0x$3 > 0xff'), 1, ff,
   $3)')

m4_dnl  Adds two hex triads.
m4_dnl    in: two hex triads
m4_dnl        ex: `0',`cc',`ff',`33',`22',`11'
m4_dnl   out: split html color string `33',`ee',`ff'
m4_define(_3HexAdd, `
_3HexLimit(
   m4_eval(`0x$1 + 0x$4',16),
   m4_eval(`0x$2 + 0x$5',16),
   m4_eval(`0x$3 + 0x$6',16))')

m4_dnl  Subtracts second hex triad from first.
m4_dnl    in: two hex triads
m4_dnl        ex: `0',`cc',`ff',`33',`22',`11'
m4_dnl   out: split html color string `33',`ee',`ff'
m4_define(_3HexSubtract, `
_3HexLimit(
   m4_eval(`0x$1 - 0x$4',16),
   m4_eval(`0x$2 - 0x$5',16),
   m4_eval(`0x$3 - 0x$6',16))')

m4_dnl  Takes average of first and second hex triad.
m4_dnl    in: two hex triads
m4_dnl        ex: `0',`cc',`ff',`33',`22',`11'
m4_dnl   out: split html color string `33',`ee',`ff'
m4_define(_3HexAverage, `
_3HexLimit(
   m4_eval(`(0x$1 + 0x$4) / 2',16),
   m4_eval(`(0x$2 + 0x$5) / 2',16),
   m4_eval(`(0x$3 + 0x$6) / 2',16))')

m4_dnl  Simulates light shining on a surface.
m4_dnl    in: two hex triads
m4_dnl        ex: `0',`cc',`ff',`33',`22',`11'
m4_dnl   out: split html color string `33',`ee',`ff'
m4_define(_3HexMultiply, `
_3HexLimit(
   m4_eval(`0x$1 * 0x$4 / 0xff',16),
   m4_eval(`0x$2 * 0x$5 / 0xff',16),
   m4_eval(`0x$3 * 0x$6 / 0xff',16))')

m4_define(_ColorTo3Hex, `
m4_substr($1,0,2),
 m4_substr($1,2,2),
 m4_substr($1,4,2)')

m4_define(_3HexToColor, `
m4_ifelse(m4_len($1),`1',`0$1',`$1')`'m4_dnl
m4_ifelse(m4_len($2),`1',`0$2',`$2')`'m4_dnl
m4_ifelse(m4_len($3),`1',`0$3',`$3')')

m4_dnl  Adds two html colors.
m4_dnl    in: html color string (00ccff),
m4_dnl        html color string (00ccff)
m4_dnl   out: html color string (00ffff)
m4_define(_ColorAdd, `
_3HexToColor(
   _3HexAdd(
      _ColorTo3Hex($1),
      _ColorTo3Hex($2)))')

m4_dnl  Subtracts second html color from first.
m4_dnl    in: html color string (00ccff),
m4_dnl        html color string (00ccff)
m4_dnl   out: html color string (000000)
m4_define(_ColorSubtract, `
_3HexToColor(
   _3HexSubtract(
      _ColorTo3Hex($1),
      _ColorTo3Hex($2)))')

m4_dnl  Averages html colors.
m4_dnl    in: html color string (00ccff),
m4_dnl        html color string (00ccff)
m4_dnl   out: html color string (000000)
m4_define(_ColorAverage, `
_3HexToColor(
   _3HexAverage(
      _ColorTo3Hex($1),
      _ColorTo3Hex($2)))')

m4_dnl  Multiplies html colors.
m4_dnl    in: html color string (00ccff),
m4_dnl        html color string (00ccff)
m4_dnl   out: html color string (000000)
m4_define(_ColorMultiply, `
_3HexToColor(
   _3HexMultiply(
      _ColorTo3Hex($1),
      _ColorTo3Hex($2)))')

m4_dnl  Darkens color by one web-safe color level.
m4_dnl    in: html color string (00ccff)
m4_dnl   out: html color string (00ffff)
m4_define(_ColorDarken, `
_ColorSubtract($1,333333)')

m4_dnl m4_define(_C0,000000)
m4_dnl m4_define(_C6,ffffff)
m4_dnl m4_define(_C1,0066ff)
m4_dnl m4_define(_C5,_ColorSubtract(_C6,_C1))
m4_dnl m4_define(_C3,_ColorAverage(_C1,_C5))
m4_dnl m4_define(_C2,_ColorAverage(_C1,_C3))
m4_dnl m4_define(_C4,_ColorAverage(_C3,_C5))
