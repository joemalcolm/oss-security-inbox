X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2645" "Monday" "6" "November" "2017" "21:49:18" "+0300" "gremlin@gremlin.ru" "gremlin@gremlin.ru" "<20171106184918.GB2500@gremlin.ru>" "66" "Re: [oss-security] tftpd-hpa - insecure chroot()" nil nil nil "11" "2017110618:49:18" "[oss-security] tftpd-hpa - insecure chroot()" (number mark "U       gremlin@grem Nov  6   66/2645  " thread-indent "\"Re: [oss-security] tftpd-hpa - insecure chroot()\"\n") "<20171102235647.GA22038@altlinux.org>" ("<20171102121654.GA5905@gremlin.ru>" "<20171102235647.GA22038@altlinux.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10113 invoked by uid 550); 6 Nov 2017 19:22:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25691 invoked from network); 6 Nov 2017 18:49:32 -0000
Date: Mon, 6 Nov 2017 21:49:18 +0300
From: gremlin@gremlin.ru
To: oss-security@lists.openwall.com
Message-ID: <20171106184918.GB2500@gremlin.ru>
References: <20171102121654.GA5905@gremlin.ru> <20171102235647.GA22038@altlinux.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=x-unknown;
	protocol="application/pgp-signature"; boundary="3lcZGd9BuhuYXNfi"
Content-Disposition: inline
In-Reply-To: <20171102235647.GA22038@altlinux.org>
OpenPGP: id=8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8
X-PGP-PubKey: 0xEF3B1FA8
X-PGP-Fingerprint: 8832 FE9F A791 F796 8AC9 6E4E 909D AC45 EF3B 1FA8
Subject: Re: [oss-security] tftpd-hpa - insecure chroot()

--3lcZGd9BuhuYXNfi
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2017-11-03 02:56:47 +0300, Dmitry V. Levin wrote:

 >> #ifdef __CYGWIN__
 >>  chdir("/");             /* Cygwin chroot() bug workaround */
 >> #endif }

 > Sorry, why do you think that
 >  chdir(dir) =3D=3D 0 && chroot(".") =3D=3D 0
 > is any worse than
 >  chroot(dir) =3D=3D 0 && chdir("/") =3D=3D 0
 > assuming that you have control over your signal handlers and can
 > ensure they won't issue any chdir or chroot calls between these
 > two calls?

Personally I just prefer the second sequence since first reading
`man 2 chroot` over 20 years ago: "This call does not change the
current working directory". So all my programs do change it just
immediately after chroot()ing. I've even made a Linux kernel patch
to force chroot() to do internal chdir("/"), but noone was really
interested. Those were the days...

Now, I've simply (and really accidentally, as all I wanted at that
time was to boot-up some hardware via PXE) noticed the tftpd server
running with "-s" ("secure") parameter without being chroot()ed.
This issue did cost me only some time, as that was in a properly
isolated VLAN, but I really prefer chroot()ed programs not to leave
their subdirectories, so I decided to have a look into the code and
the abovequoted piece appeared as the most suspicious for me.

The ${subj} in general and this issue in particular may deserve
more thoroughful exploration, but I'm very unlikely to do this in
the observable future, but even this notice may save (at least)
time to someone else.


--=20
Alexey V. Vissarionov aka Gremlin from Kremlin
GPG: 8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8

--3lcZGd9BuhuYXNfi
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJaAK6uAAoJEJCdrEXvOx+oG68QALI+zCN+Fz88CTDINtS7E1F/
6WBXiz6iExNhv69ljJ9uK+2d06goyUtI9Jq64TGBzX5A6/HACQ3vUNTekvqN8bOt
4XvzekXVYWuFdYXK5eNnhXeUAak+VYqZH9M8G91JWGdYtEaKT9YFjcEAszVASduq
4iwPZ1G1yK4IlJpPsdnBLBYW58u9axKuiO76SB9/3Mlmb70saXfQplq2OyzFUJb7
anDScTajGiyYIBmLyBRPVkbWsNgOoS0UlLYFF07NOTutHEHzy1iZEB5qj+/fem7u
Akef28KbtYUm4ctBP+wwRY20rRYi2wXQaowLa/0+LPB8YMiQ62i/Xz8IuWEJCv/x
7WL1c7dgbwJAe1amlfrHNEXc8X3ADJgkRqAIoe4nwk2AA46q8Nca6qQxfepSuOS6
QUTWdiDVpGZSNiY9/imqH2z/kkKvoEatvwtD2ydT92noTEIAqw2IQloA33cKn5gv
9EqCGBueI6tGj/tU5/Kv9nPzA5eZmYLDD8mVHlPu7qZvE4lqaYSP4EXOuxZTGyy5
YG3NV51cY/62Wx0hIi5Hdt/aCrJo4DAP9BTc3hF5xa76RvI6PzWGPNBzK+Ncnm2J
uAmEZE3YmFfL7kA/V0SkWhEvp3ZeT6mWJDAFLJ9BEHiXDLXFfLyD09D2WxTJpGlI
en2jBpSEOMBMIhWENmmE
=08y4
-----END PGP SIGNATURE-----

--3lcZGd9BuhuYXNfi--
