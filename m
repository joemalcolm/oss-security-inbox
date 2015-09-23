X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10008" "Wednesday" "23" "September" "2015" "09:05:09" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQ+sMDwN2CwzSzAXnjFvHjHOx1aAbfADeJTgrxt0W-1BQ@mail.gmail.com>" "187" "[oss-security] CVE Request: Buffer overflow in global memory affecting optipng 0.7.5" nil nil nil "9" "2015092312:05:09" "[oss-security] CVE Request: Buffer overflow in global memory affecting optipng 0.7.5" (number mark "U       gustavo.grie Sep 23  187/10008 " thread-indent "\"[oss-security] CVE Request: Buffer overflow in global memory affecting optipng 0.7.5\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3564 invoked by uid 550); 23 Sep 2015 12:05:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3540 invoked from network); 23 Sep 2015 12:05:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=p8YwZgsU7k9QrrE2DJ75WHOf7NqbKM7oQ2GbfbWXGRw=;
        b=lxgLPwF4BbM6C6ya6mi8bO5IgqDyYaSLbHpGrzq6qmRcPZ9VvjC9Yre114Ov7fmElW
         ugp+GkOT0qi4ZfTuCMO13NK94M1yFMAYWJihAYRNiISY7bFpTxOu/EU9b5Gxiw2xklOa
         8zCFKAn6ktIYj7amTWpU4yvQ2JF89RENcQ/yn2bnA/DgPyAK0bhkWPw5Jw7Dg7cn6QbS
         6c5oetaaKM53uVi4VveRbONjjk+Zhwy5ggnHsnYgI6zp5+lQ4KcWMOjLEv2dNpIODM2Z
         rpNSvjxCIzASxd5iuMomUpxNrBTmWOa9o4jEoZg5KfO8LeYLdtrwT0yICzMVpA+56xmc
         atWQ==
MIME-Version: 1.0
X-Received: by 10.25.78.79 with SMTP id c76mr3719018lfb.18.1443009909281; Wed,
 23 Sep 2015 05:05:09 -0700 (PDT)
Message-ID: <CACn5sdQ+sMDwN2CwzSzAXnjFvHjHOx1aAbfADeJTgrxt0W-1BQ@mail.gmail.com>
Content-Type: multipart/mixed; boundary=001a11406a5a0d4330052068ed64
Date: Wed, 23 Sep 2015 09:05:09 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Buffer overflow in global memory affecting optipng 0.7.5
To: oss-security@lists.openwall.com

--001a11406a5a0d4330052068ed64
Content-Type: multipart/alternative; boundary=001a11406a5a0d4329052068ed62

--001a11406a5a0d4329052068ed62
Content-Type: text/plain; charset=UTF-8

Hi,

We found a buffer overflow in global memory affecting optipng 0.7.5 using a
gif file. Upstream was notified. Find attached the test case in case
someone wants to provide some feedback. ASAN report is here:
$ ./optipng g.gif.-1694659802519428239

** Processing: g.gif.-1694659802519428239
Warning: Bogus data in GIF
=================================================================
==11221== ERROR: AddressSanitizer: global-buffer-overflow on address
0x00000069541e at pc 0x46d24b bp 0x7fffffffaee0 sp 0x7fffffffaed8
READ of size 1 at 0x00000069541e thread T0
    #0 0x46d24a
(/home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x46d24a)
    #1 0x46d724
(/home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x46d724)
    #2 0x46cfe8
(/home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x46cfe8)
    #3 0x46cbde
(/home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x46cbde)
    #4 0x46c35b
(/home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x46c35b)
    #5 0x41c013
(/home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x41c013)
    #6 0x418878
(/home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x418878)
    #7 0x408c9a
(/home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x408c9a)
    #8 0x40c309
(/home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x40c309)
    #9 0x40e7c5
(/home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x40e7c5)
    #10 0x404f3b
(/home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x404f3b)
    #11 0x40503d
(/home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x40503d)
    #12 0x7ffff4aa7ec4 (/lib/x86_64-linux-gnu/libc-2.19.so+0x21ec4)
    #13 0x401848
(/home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x401848)
0x00000069541e is located 58 bytes to the right of global variable
'last_byte (gifread.c)' (0x6953e0) of size 4
  'last_byte (gifread.c)' is ascii string ''
0x00000069541e is located 2 bytes to the left of global variable 'buffer
(gifread.c)' (0x695420) of size 280
  'buffer (gifread.c)' is ascii string ''
Shadow bytes around the buggy address:
  0x0000800caa30: f9 f9 f9 f9 00 f9 f9 f9 f9 f9 f9 f9 00 f9 f9 f9
  0x0000800caa40: f9 f9 f9 f9 00 f9 f9 f9 f9 f9 f9 f9 00 f9 f9 f9
  0x0000800caa50: f9 f9 f9 f9 04 f9 f9 f9 f9 f9 f9 f9 04 f9 f9 f9
  0x0000800caa60: f9 f9 f9 f9 04 f9 f9 f9 f9 f9 f9 f9 04 f9 f9 f9
  0x0000800caa70: f9 f9 f9 f9 04 f9 f9 f9 f9 f9 f9 f9 04 f9 f9 f9
=>0x0000800caa80: f9 f9 f9[f9]00 00 00 00 00 00 00 00 00 00 00 00
  0x0000800caa90: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0000800caaa0: 00 00 00 00 00 00 00 f9 f9 f9 f9 f9 04 f9 f9 f9
  0x0000800caab0: f9 f9 f9 f9 04 f9 f9 f9 f9 f9 f9 f9 04 f9 f9 f9
  0x0000800caac0: f9 f9 f9 f9 04 f9 f9 f9 f9 f9 f9 f9 04 f9 f9 f9
  0x0000800caad0: f9 f9 f9 f9 04 f9 f9 f9 f9 f9 f9 f9 04 f9 f9 f9
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07
  Heap left redzone:     fa
  Heap righ redzone:     fb
  Freed Heap region:     fd
  Stack left redzone:    f1
  Stack mid redzone:     f2
  Stack right redzone:   f3
  Stack partial redzone: f4
  Stack after return:    f5
  Stack use after scope: f8
  Global redzone:        f9
  Global init order:     f6
  Poisoned by user:      f7
  ASan internal:         fe
==11221== ABORTING

Regards,
Gustavo.

--001a11406a5a0d4329052068ed62
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p>Hi,</p>
<p>We found a buffer overflow in global memory affecting optipng 0.7.5 usin=
g a gif file. Upstream was notified. Find attached the test=20
case in case someone wants to provide some <span class=3D"">feedback</span>=
. ASAN report is here:</p>$ ./optipng g.gif.-1694659802519428239<br><br><di=
v>** Processing: g.gif.-1694659802519428239<br>Warning: Bogus data in GIF<b=
r>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>=3D=3D11221=3D=3D ERROR=
: AddressSanitizer: global-buffer-overflow on address 0x00000069541e at pc =
0x46d24b bp 0x7fffffffaee0 sp 0x7fffffffaed8<br>READ of size 1 at 0x0000006=
9541e thread T0<br>=C2=A0=C2=A0=C2=A0 #0 0x46d24a (/home/vagrant/repos/opti=
png-0.7.5/src/optipng/optipng+0x46d24a)<br>=C2=A0=C2=A0=C2=A0 #1 0x46d724 (=
/home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x46d724)<br>=C2=A0=
=C2=A0=C2=A0 #2 0x46cfe8 (/home/vagrant/repos/optipng-0.7.5/src/optipng/opt=
ipng+0x46cfe8)<br>=C2=A0=C2=A0=C2=A0 #3 0x46cbde (/home/vagrant/repos/optip=
ng-0.7.5/src/optipng/optipng+0x46cbde)<br>=C2=A0=C2=A0=C2=A0 #4 0x46c35b (/=
home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x46c35b)<br>=C2=A0=C2=
=A0=C2=A0 #5 0x41c013 (/home/vagrant/repos/optipng-0.7.5/src/optipng/optipn=
g+0x41c013)<br>=C2=A0=C2=A0=C2=A0 #6 0x418878 (/home/vagrant/repos/optipng-=
0.7.5/src/optipng/optipng+0x418878)<br>=C2=A0=C2=A0=C2=A0 #7 0x408c9a (/hom=
e/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x408c9a)<br>=C2=A0=C2=A0=
=C2=A0 #8 0x40c309 (/home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0=
x40c309)<br>=C2=A0=C2=A0=C2=A0 #9 0x40e7c5 (/home/vagrant/repos/optipng-0.7=
.5/src/optipng/optipng+0x40e7c5)<br>=C2=A0=C2=A0=C2=A0 #10 0x404f3b (/home/=
vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x404f3b)<br>=C2=A0=C2=A0=
=C2=A0 #11 0x40503d (/home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+=
0x40503d)<br>=C2=A0=C2=A0=C2=A0 #12 0x7ffff4aa7ec4 (/lib/x86_64-linux-gnu/<=
a href=3D"http://libc-2.19.so">libc-2.19.so</a>+0x21ec4)<br>=C2=A0=C2=A0=C2=
=A0 #13 0x401848 (/home/vagrant/repos/optipng-0.7.5/src/optipng/optipng+0x4=
01848)<br>0x00000069541e is located 58 bytes to the right of global variabl=
e &#39;last_byte (gifread.c)&#39; (0x6953e0) of size 4<br>=C2=A0 &#39;last_=
byte (gifread.c)&#39; is ascii string &#39;&#39;<br>0x00000069541e is locat=
ed 2 bytes to the left of global variable &#39;buffer (gifread.c)&#39; (0x6=
95420) of size 280<br>=C2=A0 &#39;buffer (gifread.c)&#39; is ascii string &=
#39;&#39;<br>Shadow bytes around the buggy address:<br>=C2=A0 0x0000800caa3=
0: f9 f9 f9 f9 00 f9 f9 f9 f9 f9 f9 f9 00 f9 f9 f9<br>=C2=A0 0x0000800caa40=
: f9 f9 f9 f9 00 f9 f9 f9 f9 f9 f9 f9 00 f9 f9 f9<br>=C2=A0 0x0000800caa50:=
 f9 f9 f9 f9 04 f9 f9 f9 f9 f9 f9 f9 04 f9 f9 f9<br>=C2=A0 0x0000800caa60: =
f9 f9 f9 f9 04 f9 f9 f9 f9 f9 f9 f9 04 f9 f9 f9<br>=C2=A0 0x0000800caa70: f=
9 f9 f9 f9 04 f9 f9 f9 f9 f9 f9 f9 04 f9 f9 f9<br>=3D&gt;0x0000800caa80: f9=
 f9 f9[f9]00 00 00 00 00 00 00 00 00 00 00 00<br>=C2=A0 0x0000800caa90: 00 =
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00<br>=C2=A0 0x0000800caaa0: 00 0=
0 00 00 00 00 00 f9 f9 f9 f9 f9 04 f9 f9 f9<br>=C2=A0 0x0000800caab0: f9 f9=
 f9 f9 04 f9 f9 f9 f9 f9 f9 f9 04 f9 f9 f9<br>=C2=A0 0x0000800caac0: f9 f9 =
f9 f9 04 f9 f9 f9 f9 f9 f9 f9 04 f9 f9 f9<br>=C2=A0 0x0000800caad0: f9 f9 f=
9 f9 04 f9 f9 f9 f9 f9 f9 f9 04 f9 f9 f9<br>Shadow byte legend (one shadow =
byte represents 8 application bytes):<br>=C2=A0 Addressable:=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00<br>=C2=A0 Partially addres=
sable: 01 02 03 04 05 06 07 <br>=C2=A0 Heap left redzone:=C2=A0=C2=A0=C2=A0=
=C2=A0 fa<br>=C2=A0 Heap righ redzone:=C2=A0=C2=A0=C2=A0=C2=A0 fb<br>=C2=A0=
 Freed Heap region:=C2=A0=C2=A0=C2=A0=C2=A0 fd<br>=C2=A0 Stack left redzone=
:=C2=A0=C2=A0=C2=A0 f1<br>=C2=A0 Stack mid redzone:=C2=A0=C2=A0=C2=A0=C2=A0=
 f2<br>=C2=A0 Stack right redzone:=C2=A0=C2=A0 f3<br>=C2=A0 Stack partial r=
edzone: f4<br>=C2=A0 Stack after return:=C2=A0=C2=A0=C2=A0 f5<br>=C2=A0 Sta=
ck use after scope: f8<br>=C2=A0 Global redzone:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 f9<br>=C2=A0 Global init order:=C2=A0=C2=A0=C2=A0=C2=A0 f6<=
br>=C2=A0 Poisoned by user:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 f7<br>=C2=A0 ASan=
 internal:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fe<br>=3D=3D1122=
1=3D=3D ABORTING<br><br></div><div>Regards,<br></div><div>Gustavo.<br></div=
></div>

--001a11406a5a0d4329052068ed62--

--001a11406a5a0d4330052068ed64
Content-Type: application/octet-stream; name="g.gif.-1694659802519428239"
Content-Disposition: attachment; filename="g.gif.-1694659802519428239"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_iewqw4r00

R0lGODlhBAADAOcAAAgABAgGAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQA
/f8AACwAAAAABAADAAACA6wphAAh+QQA/f8AACwAAAAABQD//4EAAAAAAAAA
AAAAAAAAAAACAVQAIfkEAP7/AAAsAAAAAAAAAwCBAgQEAAAEAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIEFH8BUQAh+QQABgAAACwAAAAA
+//7/4EGAAYBBwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIA
IfkEAAEAAAAsAAAAAAYABACBBQgAAgUAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAACAxQ6CAAh+QQACAAAACwAAAAABQAIAIECBQAEAAMFAgAh+QQA/v8AACwA
AAAA/P8FAIEBAwgGAgSEMVdwACH5BAAFAAAALAAAAAAHAAIAgQUBAwMAAAAA
AAAAAAACADs=

--001a11406a5a0d4330052068ed64--
