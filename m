X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5359" "Tuesday" "18" "April" "2017" "08:37:13" "-0400" "Brad Spengler" "spender@grsecurity.net" "<20170418123713.GA5756@grsecurity.net>" "129" "Re: [oss-security] Silently (or obliviously) partially-fixed CONFIG_STRICT_DEVMEM bypass" "^Date:" nil nil "4" "2017041812:37:13" "[oss-security] Silently (or obliviously) partially-fixed CONFIG_STRICT_DEVMEM bypass" (number mark "        spender@grse Apr 18  129/5359  " thread-indent "\"Re: [oss-security] Silently (or obliviously) partially-fixed CONFIG_STRICT_DEVMEM bypass\"\n") "<20170417070929.GB23282@kroah.com>" ("<20170416202538.GA12165@grsecurity.net>" "<20170417070929.GB23282@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12087 invoked by uid 550); 18 Apr 2017 13:06:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29806 invoked from network); 18 Apr 2017 12:37:25 -0000
Message-ID: <20170418123713.GA5756@grsecurity.net>
References: <20170416202538.GA12165@grsecurity.net>
 <20170417070929.GB23282@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YiEDa0DAkWCtVeE4"
Content-Disposition: inline
In-Reply-To: <20170417070929.GB23282@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Tue, 18 Apr 2017 08:37:13 -0400
From: Brad Spengler <spender@grsecurity.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Silently (or obliviously) partially-fixed
 CONFIG_STRICT_DEVMEM bypass
To: oss-security@lists.openwall.com

--YiEDa0DAkWCtVeE4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

BTW, forgot I had posted this 8 years ago:

https://lwn.net/Articles/330488/

Since I always reveal hashes at the proper time:

spender@www:~$ ls -al devmem
-rw-r--r-- 1 spender spender 161 Apr 27  2009 devmem
spender@www:~$ cat devmem
there exist paging structures within the first 1MB of /dev/mem which can
be modified to thereby modify arbitrary memory and bypass any
restrictions on /dev/mem
spender@www:~$ md5sum ./devmem
6c8eb1e89e3e1a8c3bb207eecc517a20  ./devmem
spender@www:~$ sha1sum ./devmem
570b82139714e6640b9b1af02060e51de0558a9c  ./devmem

Of course, it's unlikely anyone upstream figured out the above so I'm being
overly generous here.  Enjoy it while it lasts Greg ;)

-Brad

On Mon, Apr 17, 2017 at 09:09:29AM +0200, Greg KH wrote:
> On Sun, Apr 16, 2017 at 04:25:38PM -0400, Brad Spengler wrote:
> > Hi all,
> >=20
> > I wanted to provide some small notice of upstream kernel developers sil=
ently
> > or obliviously partially fixing a CONFIG_STRICT_DEVMEM bypass which exp=
licitly has
> > never been possible in grsecurity in the past 15 years.  I say this bec=
ause the commit
> > message makes no mention of this partially fixing a CONFIG_STRICT_DEVME=
M bypass (and I
> > suppose a Secure Boot bypass, but what isn't these days?), and similarl=
y makes no
> > mentions of the modifications it makes to the write side.  CONFIG_STRIC=
T_DEVMEM exists
> > to prevent userland from directly modifying kernel memory, yet the kern=
el will happily
> > make slab allocations in allowed regions below 1MB.  CONFIG_STRICT_DEVM=
EM explicitly
> > allowed both reads and writes to these allocations.  As noted, the comm=
it below doesn't
> > fix the mmap side.
> >=20
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/comm=
it/?id=3Da4866aa812518ed1a37d8ea0c881dc946409de94
> >=20
> > Feel free to look at GRKERNSEC_KMEM code going back to 2002 in our 2.4.=
20
> > patch, or when it changed in 2003 for 2.4.21, or this explicit hunk, co=
mment and
> > all, that's been around ever since CONFIG_STRICT_DEVMEM was added in 20=
08:
> >=20
> > +#ifdef CONFIG_GRKERNSEC_KMEM
> > +       /* throw out everything else below 1MB */
> > +       if (pagenr <=3D 256)
> > +               return 0;
> > +#endif
> >=20
> > <additional comments/details removed: b76e178e7b24f238ba0dd70104336298f=
493f0142056a1e5f35c27897369adc6>
> >=20
> > While I'm here, some more VMAP_STACK fallout (DoS/potential memory corr=
uption,
> > adding to the dozen or so posted earlier):
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/comm=
it/?id=3D67b0503db9c29b04eadfeede6bebbfe5ddad94ef
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/comm=
it/?id=3D606142af57dad981b78707234cfbd15f9f7b7125
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/comm=
it/?id=3D3f190e3aec212fc8c61e202c51400afa7384d4bc
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/comm=
it/?id=3D005145378c9ad7575a01b6ce1ba118fb427f583a
> > https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?i=
d=3D3b30460c5b0ed762be75a004e924ec3f8711e032
> > https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?i=
d=3Dc919a3069c775c1c876bec55e00b2305d5125caa
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/comm=
it/?id=3Dc4baad50297d84bde1a7ad45e50c73adae4a2192
> > https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?i=
d=3D5593523f968bc86d42a035c6df47d5e0979b5ace
> > https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?i=
d=3D7926aff5c57b577ab0f43364ff0c59d968f6a414
> > https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?i=
d=3D2d6a0e9de03ee658a9adc3bfb2f0ca55dff1e478
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/comm=
it/?id=3D7a7b5df84b6b4e5d599c7289526eed96541a0654
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/comm=
it/?id=3D8e9faa15469ed7c7467423db4c62aeed3ff4cae3
>=20
> Thanks a lot for the heads up, I'll work on queueing up the first commit
> you posted here for the next stable releases, and go through this list
> to ensure I caught all of these as well.
>=20
> Many thanks for letting us all know!
>=20
> greg k-h

--YiEDa0DAkWCtVeE4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJY9ghxAAoJEETRwPglJf5J6U0QAJZ8+GDdl9853r4jJA29SMxT
nAXlZfJ3tO51MSAHlYQs1HEENkJOs+7OAojWVjp/sTfxHBk6siesk/wtWJMiqsVj
QQDrdF3wJiXqmzmeElYx3t+cgEzl6dobufEEQtsy0J/eZ8+u+08Wtq00tgP3Yl+Z
rEUGJk7iWPE7FXH0nZCPPnys9aWZl4BgXhqfUC7vfmvDDdjt4djnQlHlEuQGczcD
WgP1e/nIW7+v5E0yzXnrI6nY4EsGh7iGV1alqwhn2zs+C8kT27GRdfiU6P9tAinJ
Zh5wNH9043Uc/Gb28Ct1WrYbsRufXgfVNOWlVZT2QL/QRP+A88UIDQ6RH9h69pkh
t+RBW8kz9M4jus3+ub2Q+DNULFsTOMIAXPLfFrj1z21aalstvVv6d3wUJ5aPJD25
ZLIJ4eD5fGaw45RfIqiiWFpMtiTV4XY3a9Uo4J6tLYw6U/hSwSHa7uY6sO0yGLfS
1XjNMDlHwcUXKfSIH7TzDAc9vuXmQeS0y2J4n+cNgg+Zf9/kpwa4O6Bo82bGiY76
e3XVHUjdRXUkgkeCO1JLaLfhfE9cfZiuIrqlZhTh1X5Nj0VZfBVEWVjf4tfcuZ6/
G3TobdZA02rQuJr/pCKFhWj9enLWaWWOD3RfTRvE0kZtlYBW3fihzMJZB4P2Q+Yn
+3eyiaSdXw526ct6mQLG
=HHZX
-----END PGP SIGNATURE-----

--YiEDa0DAkWCtVeE4--
