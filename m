X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1368" "Tuesday" "14" "July" "2015" "13:11:52" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20150714201152.GG19574@hunt>" "39" "Re: [oss-security] siege: off-by-one in load_conf()" nil nil nil "7" "2015071420:11:52" "[oss-security] siege: off-by-one in load_conf()" (number mark "        seth.arnold@ Jul 14   39/1368  " thread-indent "\"Re: [oss-security] siege: off-by-one in load_conf()\"\n") "<6439170.QNVfc3SXO1@arcadia>" ("<6439170.QNVfc3SXO1@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13606 invoked by uid 550); 14 Jul 2015 20:12:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13586 invoked from network); 14 Jul 2015 20:12:07 -0000
Message-ID: <20150714201152.GG19574@hunt>
Mail-Followup-To: Agostino Sarubbo <ago@gentoo.org>,
	oss-security@lists.openwall.com, cve-assign@mitre.org
References: <6439170.QNVfc3SXO1@arcadia>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="E69HUUNAyIJqGpVn"
Content-Disposition: inline
In-Reply-To: <6439170.QNVfc3SXO1@arcadia>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: oss-security@lists.openwall.com, cve-assign@mitre.org
Date: Tue, 14 Jul 2015 13:11:52 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] siege: off-by-one in load_conf()
To: Agostino Sarubbo <ago@gentoo.org>

--E69HUUNAyIJqGpVn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 14, 2015 at 09:17:04PM +0200, Agostino Sarubbo wrote:
> Description:
> Siege is an http load testing and benchmarking utility.
>=20
> During the test of a webserver, I hit a segmentation fault. I recompiled=
=20
> siege with ASan and it clearly show an off-by-one in load_conf(). The iss=
ue=20
> is reproducible without passing any arguments to the binary.

Does load_conf() process any information from any untrusted sources? Has
Siege processed any data from the network at this point? This sounds like
a regular bug rather than a security boundary, unless I've misunderstood
the application.

Thanks

--E69HUUNAyIJqGpVn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVpW0IAAoJEPMhclmdjS6XpZkH/AwXINMQnyhuAD6sGo1mViZ7
RU9stWuPXMnDM6jPMkmCBsKnO7qTb6IaWyD5vmsTOo8jmwt7j8gZjnXt7ISNxWtB
SkEhuOh454qDvyFf1WLEQK823t99jkDs4bPNEetnc8iUsyjZQxoFHJ4y/AUueAdY
sN2NSDVJGhb48XSdY4aDaNOzXr7gkY95no4zNB1c4PJcz6ZSiGAPcme3vMrr5wE4
vdvh9LsNDjIvpi3+Rw2d5VE35Sq5AeJheL9TXX9Tp41DlvLSRrx6GmK4Q4ptnz5f
a8WfjRElxef3buCIPktIn2Ifsc+8ZPSVHsD1P5dAD03hhKjcAY1snUe/Fq/C3YM=
=RHt5
-----END PGP SIGNATURE-----

--E69HUUNAyIJqGpVn--
