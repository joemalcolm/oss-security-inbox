X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1291" "Thursday" "8" "October" "2015" "16:10:44" "+0200" "Stefan Cornelius" "scorneli@redhat.com" "<20151008161044.7ea0d818@redhat.com>" "46" "Re: [oss-security] CVE Request: ImageMagick" nil nil nil "10" "2015100814:10:44" "[oss-security] CVE Request: ImageMagick" (number mark "        scorneli@red Oct  8   46/1291  " thread-indent "\"Re: [oss-security] CVE Request: ImageMagick\"\n") "<20151007043811.GB19384@hunt>" ("<20151007043811.GB19384@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5498 invoked by uid 550); 8 Oct 2015 14:11:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5475 invoked from network); 8 Oct 2015 14:11:13 -0000
Message-ID: <20151008161044.7ea0d818@redhat.com>
In-Reply-To: <20151007043811.GB19384@hunt>
References: <20151007043811.GB19384@hunt>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/Fma86u.jKjJdPHBUUCzQ2JP"; protocol="application/pgp-signature"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Cc: oss-security@lists.openwall.com, security@ubuntu.com
Date: Thu, 8 Oct 2015 16:10:44 +0200
From: Stefan Cornelius <scorneli@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: ImageMagick
To: Seth Arnold <seth.arnold@canonical.com>

--Sig_/Fma86u.jKjJdPHBUUCzQ2JP
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 6 Oct 2015 21:38:11 -0700
Seth Arnold <seth.arnold@canonical.com> wrote:

> Hello MITRE, all,
>=20

>=20
> https://bugs.launchpad.net/ubuntu/+source/imagemagick/+bug/1448803
> Fix unknown.
>=20

Hi,

According to my analysis, there's a patch for this in the following
commit (the pict.c part):=20
https://github.com/ImageMagick/ImageMagick/commit/0f6fc2d5bf8f500820c3dbcf0=
d23ee14f2d9f734

Also, this is what I would classify as an integer truncation issue, not
a double-free.

Thanks,
--=20
Stefan Cornelius / Red Hat Product Security

--Sig_/Fma86u.jKjJdPHBUUCzQ2JP
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWFnllAAoJEETwiYCjVSmPQioIAJUAsn1gqncUDXjVFg2AVPlQ
qTMGMUopDkV2P+SEJEbulRowW7iS1xyOlWrSK/HlkYQSaviFu4m9kriVkelWrx9r
UPxszyUcqzC95WnZUwfF5EqWSeqkJbbX3il1qweRIZGMqciiDfqyrEVVXmo1o1a/
IX9fjB1r0ft0dcfpVfygI7MSpCj007nyYoh1J9AU5g0MY2Bx32nd0ZDarQja7Fcy
zI1lUlJ1n20aDX62YAKeZoI1NiA7rY/N+qO6P0jdouvAfU4GxGAWx9oITVqeIaIH
/doXgrHBSVfpiYkiB36dCB9/f3RyQ429cQMac7w7iDNyD/ssv14Pwbs+KYs5UhE=
=Ivq+
-----END PGP SIGNATURE-----

--Sig_/Fma86u.jKjJdPHBUUCzQ2JP--
