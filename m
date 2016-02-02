X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3156" "Tuesday" "2" "February" "2016" "10:56:22" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160202105622.08d2d62c@pc1>" "80" "[oss-security] Miscomputations of elliptic curve scalar multiplications in Nettle" "^Date:" nil nil "2" "2016020209:56:22" "[oss-security] Miscomputations of elliptic curve scalar multiplications in Nettle" (number mark "        hanno@hboeck Feb  2   80/3156  " thread-indent "\"[oss-security] Miscomputations of elliptic curve scalar multiplications in Nettle\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26190 invoked by uid 550); 2 Feb 2016 09:55:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26131 invoked from network); 2 Feb 2016 09:55:49 -0000
Message-ID: <20160202105622.08d2d62c@pc1>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.29; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-21899-1454406936-0001-2"
Date: Tue, 2 Feb 2016 10:56:22 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Miscomputations of elliptic curve scalar multiplications in Nettle
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--=_zucker.schokokeks.org-21899-1454406936-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/38-Miscomputations-of-elliptic-curve-scala=
r-multiplications-in-Nettle.html

The Nettle library is a library for basic cryptographic functions. Its
most prominent user is GnuTLS.

Through fuzzing of elliptic curve scalar multiplications (multiplying a
point on an elliptic curve with a scalar number) I discovered two carry
propagation bugs that would lead the cauculations to produce wrong
results. They affect the NIST P-256 and P-384 curves. The P-256 bug is
in the C code and affects multiple architectures. The P-384 bug is in
the assembly code and only affects 64 bit x86.

While analyzing these bugs Nettle developer Niels M=C3=B6ller discovered
another carry propagation bug in P-256 that was fixed in the same
commit. Nettle 3.2 fixes all three bugs.

The impact is currently unclear, but miscalculations in cryptographic
functions should generally be considered security issues. I'd like to
encourage cryptographers to try to analyze whether these bugs can lead
to cryptographic breaks.

https://github.com/hannob/bignum-fuzz/blob/master/point-fuzz.c
I have published a code example on how to fuzz elliptic curve
multiplications. It can compare the output of OpenSSL with either
Nettle or NSS. It currently works only with prime field curves, but it
can probably be adapted to other curves.

P-256 bug:
https://lists.lysator.liu.se/pipermail/nettle-bugs/2015/003028.html
Mailing list post with code sample
https://git.lysator.liu.se/nettle/nettle/commit/c71d2c9d20eeebb985e3872e455=
0137209e3ce4d
Commit / fix for P-256 bug

P-384 bug:
https://lists.lysator.liu.se/pipermail/nettle-bugs/2015/003024.html
Mailing list post with code sample
https://git.lysator.liu.se/nettle/nettle/commit/fa269b6ad06dd13c901dbd84a12=
e52b918a09cd7
Commit / fix for P-384 bug

https://lists.gnu.org/archive/html/info-gnu/2016-01/msg00006.html
Nettle 3.2 release notes

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-21899-1454406936-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWsH1GAAoJEKWIAHK7tR5CE+YQAIlBVeDVWMKBNe7rwQpYeoGr
GgnQw1VnQNBEqCC16MEOexTe00z/F3uGS99qPweitT310Iq3vk3jxc/TUrKVzgEE
HLHeKry/Zz/ndqJi7y5mhCyOXc4u88t7Dgp3nNhlJRSduz9HrIygQY03Wr7gl+F6
ThNyqwCd2NxnGh+aZ+D14SfAOUkNHGbO15BPjM2WWUQDrypKEjg9nZ70eIl0Q24g
QWGAnu3C3vBkBoCi3tSz4BsfFdahyba8tTlioPi7vVlKNu4Syfbeez0bLcwfl/nD
gxZs1f0LAlh3m4WpsaG3hf4DKJDNMVORXU4dbWeG3vexnAzztpnwG17iMInhFhLO
HT2yqjqJbTEGQIFSPpS53m21gvXT3egUlAeXNSjYIUbjFENzoqCGJ0UDG+8GvJ/W
8pXP5MkD+BrW+z+GoZF/DTFwOq+9L+dpoGEIXlBxDemgQpSHbTF9vxDT2mpSBl8o
raMtABmAbNA8UToqrZTunZ9xjMjdJhLuK+hBYuMGG1Xv6BN3pNm66kLCnCBWQ5Wo
co0gJr7RfywLxqn8w3HTdQhP+R02ykFpUABn6I7/bGw+rkz5lGUm0EgS6sgzSGax
DsXHJBKKXY3Q4HcOjJYf9Hq70c3i0Y8uW46Fsil8CAa6mKCwmCm35KRBji3nRE2z
RyksHqEKeByQ/h9E9m4m
=anyR
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-21899-1454406936-0001-2--
