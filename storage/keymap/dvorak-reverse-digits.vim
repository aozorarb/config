" Maintainer:   Ashish SHUKLA <wahjava@members.fsf.org>
" Change to reverse digits with symbol
" Last Changed: 2024/04/19
"
" All characters are ASCII, conversion to another encoding (e.g., UTF-8)
" should work.
let b:keymap_name = "en-dv(rd)"

loadkeymap
q	'
w	,
e	.
r	p
t	y
y	f
u	g
i	c
o	r
p	l
[	/
]	=
\\	\\
a	a
s	o
d	e
f	u
g	i
h	d
j	h
k	t
l	n
;	s
'	-
z	;
x	q
c	j
v	k
b	x
n	b
m	m
,	w
.	v
/	z
Z	:
X	Q
C	J
V	K
B	X
N	B
M	M
<	W
>	V
?	Z
A	A
S	O
D	E
F	U
G	I
H	D
J	H
K	T
L	N
:	S
\"	_
Q	"
W	<
E	>
R	P
T	Y
Y	F
U	G
I	C
O	R
P	L
{	?
}	+
|	|
-	[
_	{
=	]
+	}
" reverse digits and symbol
1 !
2 @
3 #
4 $
5 %
6 ^
7 &
8 *
9 ( 
0 )
! 1
@ 2
# 3
$ 4
% 5
^ 6
& 7
* 8
( 9
) 0
