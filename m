X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2220" "Wednesday" "17" "May" "2017" "09:56:27" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87inkzd1tg.fsf@fifthhorseman.net>" "63" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Cc:" nil nil "5" "2017051713:56:27" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        dkg@fifthhor May 17   63/2220  " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<CAP145pjXuwa2QwR18Vq29i4aBYqSweHTWt-QYge=JrDxEmZnSQ@mail.gmail.com>" ("<20170501164428.GA12322@openwall.com>" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>" "<20170516220345.GA10874@openwall.com>" "<CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>" "<20170517012314.vyjnu3k7pgh5ey6s@schmorp.de>" "<CAP145pjXuwa2QwR18Vq29i4aBYqSweHTWt-QYge=JrDxEmZnSQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21915 invoked by uid 550); 17 May 2017 15:04:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7825 invoked from network); 17 May 2017 14:57:08 -0000
In-Reply-To: <CAP145pjXuwa2QwR18Vq29i4aBYqSweHTWt-QYge=JrDxEmZnSQ@mail.gmail.com>
References: <20170501164428.GA12322@openwall.com> <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com> <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com> <20170516220345.GA10874@openwall.com> <CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com> <20170517012314.vyjnu3k7pgh5ey6s@schmorp.de> <CAP145pjXuwa2QwR18Vq29i4aBYqSweHTWt-QYge=JrDxEmZnSQ@mail.gmail.com>
Message-ID: <87inkzd1tg.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, rxvt-unicode@lists.schmorp.de, rxvt@schmorp.de
Date: Wed, 17 May 2017 09:56:27 -0400
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
To: Robert =?utf-8?B?xZp3acSZY2tp?= <robert@swiecki.net>,
 oss-security@lists.openwall.com

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Wed 2017-05-17 12:51:57 +0200, Robert =C5=9Awi=C4=99cki wrote:
> Please consider the following example:
>
> $ tail -n1 /etc/hosts | xxd
> 00000000: 3132 372e 302e 302e 3309 1b47 513b 205a  127.0.0.3..GQ; Z
> 00000010: 5a5a 0a                                  ZZ.
> $ ping ZZZ
> PING ; (127.0.0.3) 56(84) bytes of data.
> ^[G0
> 64 bytes from ; (127.0.0.3): icmp_seq=3D1 ttl=3D64 time=3D0.039 ms
> ^[G0
> 64 bytes from ; (127.0.0.3): icmp_seq=3D2 ttl=3D64 time=3D0.032 ms
> ^[G0
> ^C
> --- ; ping statistics ---
> 2 packets transmitted, 2 received, 0% packet loss, time 1014ms
> rtt min/avg/max/mdev =3D 0.032/0.035/0.039/0.006 ms
> ^[G0
> $ 0
> bash: 0: command not found

what version of ping are you using?  I was unable to replicate this with
either the debian iputils-ping package version 3:20161105-1, or with
debian inetutils-ping package version 2:1.9.4-2+b1.  neither of them seem to
do a getnameinfo() at all if it is initially supplied with an IP
address.

That said, with the same last line of /etc/hosts, getent is willing
to pass along the garbage chars:

0 test@host:~$ getent hosts 127.0.0.3
127.0.0.3       ; ZZZ
^[G0
0 test@host:~$ 0
bash: 0: command not found
127 test@host:~$=20

    --dkg

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOCdgUepHf6PklTkyFJitxsGSMjcFAlkcVosACgkQFJitxsGS
Mjf+5g/+MZ9GmNN83BI7PqXKV75QPUi6pEY14ZUW9IdLjpBnOchB1MKwLO8wkt2t
xPZiwzH/rirnv2s+5R4gRZn5eTvDw6+oGXNu/b6AG63UFPkm9wkEUfEFkIbfnUnh
nIjAvNyPzJL8h3lrOVc5pVOW79M+Wc2Yihiz5QZaA5dH9bY7uil46UYedF+CShB0
ZS8Dh16niHQLVGIpC4IZVfZnxi7xbGOuHvcMCna3Tpo3+0R/5XjqCb9d7Zk9wU1x
RC5s55ZCRIt8x+PhJUj1gbU1H4l+y5pwrsVNIFzM/SWeoQIURZxWsoJkl5M30Vpf
b6LXQpXUk55i9XOOmQ2/GJK0Za7bHvBhxwlUijZVdaNrpMQ1vzIFPKgShsLfElZS
Q3fsIwEH0xv1PjJnXXVopy2iD6pWmOnDiIl9UEjO/dKOizM8nYwEhjo3LM0HvvAG
8bARvfNSMThjHe+5XGrizeZ2OeDEttpmKswC+ik6cG98EWVSPRAwnlM7bbDE8gfI
8A+IZ79B4+PKp/9JvmAHqA8kKMxbDCQRGNEPjTiT3j9MXls4aHroxBcWqbB1A62s
mEitOtlVG3rPEmlqqMbJP3ohyoP9cVbwUoo7no0r49lAgN6DBd0ZFKgz/ElWP41V
hmy+vjlWc+erMDhThOp0MesV9Zuucpa5rx2F0jefrRTV1FXimJI=
=JzAt
-----END PGP SIGNATURE-----
--=-=-=--
