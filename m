X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4002" "Sunday" "16" "April" "2017" "16:25:38" "-0400" "Brad Spengler" "spender@grsecurity.net" "<20170416202538.GA12165@grsecurity.net>" "73" "[oss-security] Silently (or obliviously) partially-fixed CONFIG_STRICT_DEVMEM bypass" "^Date:" nil nil "4" "2017041620:25:38" "[oss-security] Silently (or obliviously) partially-fixed CONFIG_STRICT_DEVMEM bypass" (number mark "        spender@grse Apr 16   73/4002  " thread-indent "\"[oss-security] Silently (or obliviously) partially-fixed CONFIG_STRICT_DEVMEM bypass\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17799 invoked by uid 550); 16 Apr 2017 23:05:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25694 invoked from network); 16 Apr 2017 20:25:51 -0000
Message-ID: <20170416202538.GA12165@grsecurity.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Sun, 16 Apr 2017 16:25:38 -0400
From: Brad Spengler <spender@grsecurity.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Silently (or obliviously) partially-fixed CONFIG_STRICT_DEVMEM bypass
To: oss-security@lists.openwall.com

--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

I wanted to provide some small notice of upstream kernel developers silently
or obliviously partially fixing a CONFIG_STRICT_DEVMEM bypass which explicitly has
never been possible in grsecurity in the past 15 years.  I say this because the commit
message makes no mention of this partially fixing a CONFIG_STRICT_DEVMEM bypass (and I
suppose a Secure Boot bypass, but what isn't these days?), and similarly makes no
mentions of the modifications it makes to the write side.  CONFIG_STRICT_DEVMEM exists
to prevent userland from directly modifying kernel memory, yet the kernel will happily
make slab allocations in allowed regions below 1MB.  CONFIG_STRICT_DEVMEM explicitly
allowed both reads and writes to these allocations.  As noted, the commit below doesn't
fix the mmap side.

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=a4866aa812518ed1a37d8ea0c881dc946409de94

Feel free to look at GRKERNSEC_KMEM code going back to 2002 in our 2.4.20
patch, or when it changed in 2003 for 2.4.21, or this explicit hunk, comment and
all, that's been around ever since CONFIG_STRICT_DEVMEM was added in 2008:

+#ifdef CONFIG_GRKERNSEC_KMEM
+       /* throw out everything else below 1MB */
+       if (pagenr <= 256)
+               return 0;
+#endif

<additional comments/details removed: b76e178e7b24f238ba0dd70104336298f493f0142056a1e5f35c27897369adc6>

While I'm here, some more VMAP_STACK fallout (DoS/potential memory corruption,
adding to the dozen or so posted earlier):
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=67b0503db9c29b04eadfeede6bebbfe5ddad94ef
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=606142af57dad981b78707234cfbd15f9f7b7125
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3f190e3aec212fc8c61e202c51400afa7384d4bc
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=005145378c9ad7575a01b6ce1ba118fb427f583a
https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=3b30460c5b0ed762be75a004e924ec3f8711e032
https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=c919a3069c775c1c876bec55e00b2305d5125caa
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c4baad50297d84bde1a7ad45e50c73adae4a2192
https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=5593523f968bc86d42a035c6df47d5e0979b5ace
https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=7926aff5c57b577ab0f43364ff0c59d968f6a414
https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=2d6a0e9de03ee658a9adc3bfb2f0ca55dff1e478
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7a7b5df84b6b4e5d599c7289526eed96541a0654
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8e9faa15469ed7c7467423db4c62aeed3ff4cae3

Thanks,
-Brad


--J2SCkAp4GZ/dPZZf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJY89M7AAoJEETRwPglJf5JvwUP/jP8GgKecORlsYrRDuDtDP+1
EaljUlKFH0YyAVDj9z3Hx5ew8yApaNAcij10lJrcjAH2vuwFLEfImVzQfIh5MOVw
onLLyeqt3yEdAO0J8QearOUb5r5LSQ7sVz2mb1FK0meGzA1iGzuSbIwIBbkJUOxs
DY/WAe/tg1UuPu/kco1nExJ4sljiTS+pZbbqwXkGXRog1O0fVuCitpAsGN12QXUd
IzKe1w1p7TCDcnS73YAjcwHHkf03oo9QCvxjk2sN2DXjKun0cyOiJ89AT9Bd8OHb
ZW3Aes7vKb6D/8KiR6Ac2BFOeWH0C7e47guFLr+JKSN/TcJRYpDTUxRgmURImi3n
GJ3TcykYQpNasJIZq4u+WnEQjlYP6GxFV/JdsrEsE4nLd7Eb8CyrVACfElXCsZB2
EGs38gZbaK1yME8NkwmfSHoR3qXnzD4PGmdtpfZZqcOSkbyKwC3e0pVdUev9oOnV
Z4f8P/cG0N6bj3RM7rXl1EByxkzZWENkcwDuPtW3XmUpYyb5qF4DJnCWugF+zVW+
xluO0ztr/RaNzZchDp0xr1Coa5H9nv2V7ZE1CCKR4OT0/z3Axk5udTznuJKRrd25
NNUZHZRU1dHE2bLMYgjydl7YeEtKzMT4bvwE02kIJ3ko5L3K3tLY5TMxVVh/PsvP
42nqUV71opxNRXtWiPro
=qR9Z
-----END PGP SIGNATURE-----

--J2SCkAp4GZ/dPZZf--
