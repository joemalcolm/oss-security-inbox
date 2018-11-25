X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5037" "Sunday" "25" "November" "2018" "09:57:37" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20181125095737.5f7e726d@computer>" "108" "[oss-security] catdoc: out of bounds heap read and nullpointer / segfault" "^Date:" nil nil "11" "2018112508:57:37" "[oss-security] catdoc: out of bounds heap read and nullpointer / segfault" (number mark "        hanno@hboeck Nov 25  108/5037  " thread-indent "\"[oss-security] catdoc: out of bounds heap read and nullpointer / segfault\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7230 invoked by uid 550); 25 Nov 2018 08:57:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7193 invoked from network); 25 Nov 2018 08:57:48 -0000
Message-ID: <20181125095737.5f7e726d@computer>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MP_/nOLAFkeCzVq/qB2wQx2xsNN"
Date: Sun, 25 Nov 2018 09:57:37 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] catdoc: out of bounds heap read and nullpointer / segfault
To: oss-security@lists.openwall.com

--MP_/nOLAFkeCzVq/qB2wQx2xsNN
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

I reported two memory safety bugs in the command line tool catdoc.
However the mails to the developer bounced.

The first is an out of bounds heap read, to detect it catdoc needs to
be compiled with address sanitizer (test it with -fsanitize=3Daddress in
CFLAGS).

The second is a null pointer and will just crash catdoc.


ASAN crash traces:

=3D=3D4036=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address 0x=
6020000015d1 at pc 0x00000050560c bp 0x7ffe3d0b7d40 sp 0x7ffe3d0b7d38
READ of size 1 at 0x6020000015d1 thread T0
    #0 0x50560b in getlong /f/catdoc/catdoc-0.95/src/numutils.c:22:37
    #1 0x506c7d in ole_init /f/catdoc/catdoc-0.95/src/ole.c:254:18
    #2 0x4fa2df in analyze_format /f/catdoc/catdoc-0.95/src/analyze.c:58:17
    #3 0x4f6bec in main /f/catdoc/catdoc-0.95/src/catdoc.c:180:6
    #4 0x7fa1362ae4ea in __libc_start_main (/lib64/libc.so.6+0x244ea)
    #5 0x41b489 in _start (/r/catdoc/catdoc+0x41b489)

0x6020000015d1 is located 0 bytes to the right of 1-byte region [0x60200000=
15d0,0x6020000015d1)
allocated by thread T0 here:
    #0 0x4c5973 in malloc (/r/catdoc/catdoc+0x4c5973)
    #1 0x505e70 in ole_init /f/catdoc/catdoc-0.95/src/ole.c:119:10
    #2 0x4fa2df in analyze_format /f/catdoc/catdoc-0.95/src/analyze.c:58:17
    #3 0x4f6bec in main /f/catdoc/catdoc-0.95/src/catdoc.c:180:6
    #4 0x7fa1362ae4ea in __libc_start_main (/lib64/libc.so.6+0x244ea)



And:

=3D=3D6151=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x00000000=
0020 (pc 0x000000509f93 bp 0x0c18000000d1 sp 0x7fff4819ed80 T0)
=3D=3D6151=3D=3DThe signal is caused by a READ memory access.
=3D=3D6151=3D=3DHint: address points to the zero page.
    #0 0x509f92 in calcFileBlockOffset /f/catdoc/catdoc-0.95/src/ole.c
    #1 0x509f92 in ole_read /f/catdoc/catdoc-0.95/src/ole.c:493
    #2 0x4fa3ec in analyze_format /f/catdoc/catdoc-0.95/src/analyze.c:64:14
    #3 0x4f6bec in main /f/catdoc/catdoc-0.95/src/catdoc.c:180:6
    #4 0x7f70645a64ea in __libc_start_main (/lib64/libc.so.6+0x244ea)
    #5 0x41b489 in _start (/r/catdoc/catdoc+0x41b489)


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--MP_/nOLAFkeCzVq/qB2wQx2xsNN
Content-Type: application/zip
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=catdoc-bug-samples.zip

UEsDBBQAAAAIABxMeU1dfGEvGwAAAAECAAAXABwAY2F0ZG9jLW9vYi1vbGVf
aW5pdC5kb2NVVAkAAzde+lvpXvpbdXgLAAEEAAAAAAQAAAAAu3Be8MHCjVIP
DbACBlQeFCAJ/cfBHgVDBQAAUEsDBBQAAAAIAG9MeU3pYtl/ggUAAAAkAAAv
ABwAY2F0ZG9jLXNlZ2ZhdWx0LW51bGxwdHItY2FsY0ZpbGVCbG9ja09mZnNl
dC5kb2NVVAkAA9Fe+ls+X/pbdXgLAAEEAAAAAAQAAAAA7ZldTFxFFMfP7Be7
lMKyIEWKsqVbqLSlfFgKWpWvAm7lq1BR22oWFuxadhcXamnig7Ex8UFjjWmN
iYnR4Isag5r44IuGRH0wVR/sQ99q9MXEh2p8sImw/Z+Ze2FZvu6uCK25f/Lj
zp29M+fMzLlz58798Yfca+9+UvQzJel+stJc3EWOhDwBcvQTN5FFy5uLx+N6
dtzUbaVZ7chjaMP42QGPeQZwAhfIBFtAFtgKsrUxd2tHU7evjlIUfxPkpcMU
wTFG55KnglVVgIhJrM9ImTmD1xmVaT99+/r8ner9z88Bvv9zgQfkgXxwB3FM
EG0DheBOUAS2g2Jwl2avBEevli7FcSfwgV2gDJSD3eAeUAH2gL1gH6gE+0EV
qAY1oBbcCw6AOnAQ1IMGcB/x84zoEHgAPAgeAo2gCTSDFtAKDoM20A46wMPA
D46AR0An6ALdoAf0gqOgD/SDY+BRMAAeA49rbTxOt+ZcKeCVNVPFkMNlkTHx
lQqNNh6/ztBQLDoeHZnwDkRjwX2t0dNnwsORCRkTnX2c1xodkpHA6UqcyN8r
6+mvhk+fXTEE5yXUMiJteRB1majl+MLKhJ5AaP4Rt/ARsdyF+S1GYQrQKKmY
rvaJCp+opeYK6vZbqRe0+Asp3JFhGwdHOizU47dRpMPmnABP+u0UwO9PdTTY
VvWljeZKBFkEx08GomcYNoMUwrz6NPGdk0N5U9cpf2qSHD6Bu6Pb74BxB4wX
S4PKUDHiuNnN9XA8uxBVwzQpZ+hmtCQo52c3/jzBfCFQI+67qVeI76b9biE8
wou0DbEaonGU4u7NJa47A/FeinpLRaP0rwXejeGKEGqNSP88qG1S+pcF/zyy
U+qcgoty+086RZlsYY3gO9SOeyMCf9g7PsuTpZQlVpb0Q04WMrq46wudaobR
0/rqMks7WtwJGT1qtOS/9oILwkg49KM5Ybg0ju7owvEsjvyI4+HnRh5APUbi
rQ/dHKZBlOSgqS0zZr0JgRbSAi0ESyJ37TI8UIPwNIZy+mB4YX9Y1jVioE0H
HbBkwLtjuJprjMoHPaYug+W65AIhKr1ii+xHK/x4Tp4FENwB6St6Df0k3GtW
uGKbVe2L+7HXt95eNiMshfNVzG5fIxROyco7Z05/y3BaWeMo2SLP+NxG52UI
LM7V/Wp3yGeZjHdT6ctTtf51Jt3tXoODlLInL6RaQGkuzmG0dEri0Lr20jt/
3ug+5f7wdSftKf/sKvv0PKlZk3/n9Q2vzxpJrdF4fcLByesOnkCDpNZrY6S6
4bdZoru1dLVWji5+wUVVWhOnY+9999rl8z/JZ8X037++xenl/P/9fSE6vS70
6XXPlypLdZ02w2dTSyA6GojUL9OhLlsBlWcvnGctvWSR4vEc+fQQWtqRkE7W
y/L/Jc3nSwZmEL4mf+3L5vWBUB5/LhZ7/gvOe/7VmkZpxtAjZ6lqMRaDCfa/
F2pVbur/qRmx9p3zX8hCVzfBqilTpm4d8VvuKP544X1WvmmPYt2xdbPdMrVR
4jUeKNDWe/TPZjtkaiPkqHOKk05h1df5s5vtkKmNltwB2UWHqqhk+sVK7/Q3
TTumI7ZSsPNCxOYDtT1Eu2soe5WX6ZXefznHcuXylbcrt7vfeBPvv3tvfMz7
8/akvBOkvjPo2zFuWnjXXSnf1ILW8/sf93PyN4Tlylh5t2SbSgtqkVuZY9RN
g/RMyv57MKpskTd15C6zQemWBOyOYg2TrjJhne1aU7DP/uo7DdXUTwG0PF0f
sjX7uoyUYV8valvvduqjM+j/sNwePSf39Efmv5gsfB1YSU7Y178ZGrXPe1Af
aekBaStIrTgOSU+Gte1pYypKo/07gL7vZF9iObX+qE/DPn+XMt7CtZWq/cTv
vzcBUEsBAh4DFAAAAAgAHEx5TV18YS8bAAAAAQIAABcAGAAAAAAAAAAAAICB
AAAAAGNhdGRvYy1vb2Itb2xlX2luaXQuZG9jVVQFAAM3XvpbdXgLAAEEAAAA
AAQAAAAAUEsBAh4DFAAAAAgAb0x5Teli2X+CBQAAACQAAC8AGAAAAAAAAAAA
AICBbAAAAGNhdGRvYy1zZWdmYXVsdC1udWxscHRyLWNhbGNGaWxlQmxvY2tP
ZmZzZXQuZG9jVVQFAAPRXvpbdXgLAAEEAAAAAAQAAAAAUEsFBgAAAAACAAIA
0gAAAFcGAAAAAA==

--MP_/nOLAFkeCzVq/qB2wQx2xsNN--
