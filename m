X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5498" "Tuesday" "13" "September" "2016" "12:24:23" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20160913192423.GA13420@hunt>" "154" "Re: [oss-security] Heapoverflow in giflib5.1.4" "^Cc:" nil nil "9" "2016091319:24:23" "[oss-security] Heapoverflow in giflib5.1.4" (number mark "        seth.arnold@ Sep 13  154/5498  " thread-indent "\"Re: [oss-security] Heapoverflow in giflib5.1.4\"\n") "<20160913185508.1351b147@hboeck.de>" ("<a3d8ebfe-9b67-997e-aaeb-5afe207ac97a@724safe.com>" "<20160913185508.1351b147@hboeck.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5240 invoked by uid 550); 13 Sep 2016 19:24:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5217 invoked from network); 13 Sep 2016 19:24:40 -0000
Message-ID: <20160913192423.GA13420@hunt>
Mail-Followup-To: Hanno =?iso-8859-1?Q?B=F6ck?= <hanno@hboeck.de>,
	"vul@724safe" <vul@724safe.com>, oss-security@lists.openwall.com
References: <a3d8ebfe-9b67-997e-aaeb-5afe207ac97a@724safe.com>
 <20160913185508.1351b147@hboeck.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline
In-Reply-To: <20160913185508.1351b147@hboeck.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "vul@724safe" <vul@724safe.com>, oss-security@lists.openwall.com
Date: Tue, 13 Sep 2016 12:24:23 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Heapoverflow in giflib5.1.4
To: Hanno =?iso-8859-1?Q?B=F6ck?= <hanno@hboeck.de>

--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 13, 2016 at 06:55:08PM +0200, Hanno B=C3=B6ck wrote:
> Two notes:
> * This is a bug *only* in the gif2rgb command line tool, not in giflib
>   itself.
> * I reported this before. The giflib maintainer claimed multiple times
>   that he has fixed it, yet he hasn't. See:
> https://sourceforge.net/p/giflib/bugs/79/

Hanno, can you still reproduce this issue? I followed your excellent
reproducer script and I don't get any ASAN warnings. If you still get ASAN
warnings this may indicate the source of the confusion.

Thanks

ubuntu@x1:~$ git clone --depth=3D1 git://git.code.sf.net/p/giflib/code gifl=
ib-code
Cloning into 'giflib-code'...
remote: Counting objects: 149, done.
remote: Compressing objects: 100% (147/147), done.
remote: Total 149 (delta 22), reused 10 (delta 0)
Receiving objects: 100% (149/149), 389.03 KiB | 0 bytes/s, done.
Resolving deltas: 100% (22/22), done.
Checking connectivity... done.
ubuntu@x1:~$  cd giflib-code/
ubuntu@x1:~/giflib-code$ CFLAGS=3D"-fsanitize=3Daddress -g" LDFLAGS=3D"-fsa=
nitize=3Daddress" ./autogen.sh
Warning: This script will run configure for you -- if you need to pass
  arguments to configure, please give them as arguments to this script.
aclocal: warning: couldn't open directory 'm4': No such file or directory
configure.ac:14: installing './ar-lib'
configure.ac:14: installing './compile'
configure.ac:15: installing './config.guess'
configure.ac:15: installing './config.sub'
configure.ac:5: installing './install-sh'
configure.ac:5: installing './missing'
Makefile.am: installing './INSTALL'
parallel-tests: installing './test-driver'
lib/Makefile.am: installing './depcomp'
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... gawk
[...]
configure: creating ./config.status
config.status: creating util/Makefile
config.status: creating lib/Makefile
config.status: creating Makefile
config.status: creating doc/Makefile
config.status: creating pic/Makefile
config.status: creating config.h
config.status: executing depfiles commands
config.status: executing libtool commands
ubuntu@x1:~/giflib-code$ make -j
make  all-recursive
make[1]: Entering directory '/home/ubuntu/giflib-code'
Making all in lib
make[2]: Entering directory '/home/ubuntu/giflib-code/lib'
  CC       dgif_lib.lo
  CC       gif_font.lo
  CC       egif_lib.lo
  CC       gif_hash.lo
  CC       gifalloc.lo
  CC       openbsd-reallocarray.lo
  CC       gif_err.lo
  CC       quantize.lo
  CCLD     libgif.la
ar: `u' modifier ignored since `D' is the default (see `U')
make[2]: Leaving directory '/home/ubuntu/giflib-code/lib'
Making all in util
make[2]: Entering directory '/home/ubuntu/giflib-code/util'
  CC       getarg.o
  CC       gif2rgb.o
  CC       qprintf.o
  CC       gifbuild.o
  CC       gifecho.o
  CC       gifinto.o
  CC       giftext.o
  CC       giftool.o
  CC       gifclrmp.o
  CC       giffix.o
  CC       gifbg.o
  CC       gifcolor.o
  CC       giffilter.o
  CC       gifsponge.o
  CC       gifhisto.o
  CC       gifwedge.o
  AR       libgetarg.a
ar: `u' modifier ignored since `D' is the default (see `U')
  CCLD     gif2rgb
  CCLD     gifecho
  CCLD     giffix
  CCLD     giftext
  CCLD     gifinto
  CCLD     giftool
  CCLD     gifbg
  CCLD     gifclrmp
  CCLD     gifcolor
  CCLD     giffilter
  CCLD     gifsponge
  CCLD     gifwedge
  CCLD     gifhisto
  CCLD     gifbuild
make[2]: Leaving directory '/home/ubuntu/giflib-code/util'
Making all in pic
make[2]: Entering directory '/home/ubuntu/giflib-code/pic'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/home/ubuntu/giflib-code/pic'
make[2]: Entering directory '/home/ubuntu/giflib-code'
make[2]: Leaving directory '/home/ubuntu/giflib-code'
make[1]: Leaving directory '/home/ubuntu/giflib-code'
ubuntu@x1:~/giflib-code$ wget https://sourceforge.net/p/giflib/bugs/79/atta=
chment/gif2rgb-oob-heap-read.gif
--2016-09-13 19:19:27--  https://sourceforge.net/p/giflib/bugs/79/attachmen=
t/gif2rgb-oob-heap-read.gif
Resolving sourceforge.net (sourceforge.net)... 216.34.181.60
Connecting to sourceforge.net (sourceforge.net)|216.34.181.60|:443... conne=
cted.
HTTP request sent, awaiting response... 200 OK
Length: 20 [image/gif]
Saving to: =E2=80=98gif2rgb-oob-heap-read.gif=E2=80=99

gif2rgb-oob-heap-read.gif    100%[=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D>]      20  --.-KB/s    in 0s

2016-09-13 19:19:27 (2.73 MB/s) - =E2=80=98gif2rgb-oob-heap-read.gif=E2=80=
=99 saved [20/20]

ubuntu@x1:~/giflib-code$  util/gif2rgb gif2rgb-oob-heap-read.gif
Background color out of range for colormap
ubuntu@x1:~/giflib-code$=20


--pf9I7BMVVzbSWLtt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJX2FJnAAoJEPMhclmdjS6Xc+oH/A5r4LaH10p9nkunatvoROD+
oFP46X2qsRyDSp8h9hmVWGhCCFCk2yVVZIvnFUA5/6rGjZAu90D2gro2YEq+T0/J
uosPa3R5fSv1mEEk3OB2Y7CfasZHQNGsBVMCVa6mzOiMOpUMs5MXMhzBzdTdVVoX
EKo5AQdW91f3WBJwGmWNz7CoyDCBwsCln1Vkr+SByIaz84v751lii2A1xt4CLrlJ
LAsjHsnjuAvhg8sD4zWQjXoolyJlbMJK3KbTM6bu7Ap6FSFW+vaY5n74nv2YJ77F
gRXZjgC8DmZGXJaEyHc8qMNdvJ3ToWgKbKE7gLGk6BCIgbc2xA6UjQCUSo4Xpj0=
=Sw2b
-----END PGP SIGNATURE-----

--pf9I7BMVVzbSWLtt--
