TITLE( HTML Colors Demonstration )

m4_define(`_bgcolor',`ffffff')
m4_define(`_panel1',_ColorAverage(_bgcolor,`0066ff'))
m4_define(`_panel2',_ColorAverage(_bgcolor,`ff9900'))
m4_define(`_panel3',_ColorAverage(_bgcolor,`00ff00'))

<table cellpadding=8 cellspacing=0 border=0>
<tr>
<td bgcolor=_bgcolor><img height=1 width=1></td>
<td bgcolor=_panel1><img height=1 width=1></td>
<td bgcolor=_panel1><img height=1 width=1></td>
<td bgcolor=_bgcolor><img height=1 width=1></td>
<td bgcolor=_bgcolor><img height=1 width=1></td>
</tr>
<tr>
<td bgcolor=_panel2><img height=1 width=1></td>
<td bgcolor=_ColorAverage(_panel1,_panel2)><img height=1 width=1></td>
<td bgcolor=_ColorAverage(_panel1,_panel2)><img height=1 width=1></td>
<td bgcolor=_panel2><img height=1 width=1></td>
<td bgcolor=_panel2><img height=1 width=1></td>
</tr>
<tr>
<td bgcolor=_panel2><img height=1 width=1></td>
<td bgcolor=_ColorAverage(_panel1,_panel2)><img height=1 width=1></td>
<td bgcolor=_ColorAverage(_ColorAverage(_panel1,_panel2),_panel3)><img height=1 width=1></td>
<td bgcolor=_ColorAverage(_panel2,_panel3)><img height=1 width=1></td>
<td bgcolor=_panel2><img height=1 width=1></td>
</tr>
<tr>
<td bgcolor=_bgcolor><img height=1 width=1></td>
<td bgcolor=_panel1><img height=1 width=1></td>
<td bgcolor=_ColorAverage(_panel1,_panel3)><img height=1 width=1></td>
<td bgcolor=_panel3><img height=1 width=1></td>
<td bgcolor=_bgcolor><img height=1 width=1></td>
</tr>
<tr>
<td bgcolor=_bgcolor><img height=1 width=1></td>
<td bgcolor=_panel1><img height=1 width=1></td>
<td bgcolor=_panel1><img height=1 width=1></td>
<td bgcolor=_bgcolor><img height=1 width=1></td>
<td bgcolor=_bgcolor><img height=1 width=1></td>
</tr>
</table>
