X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1783" "Wednesday" "2" "November" "2016" "12:53:04" "+0100" "Robert Scheck" "robert@fedoraproject.org" "<20161102115304.GA11945@hurricane.linuxnetz.de>" "49" "Re: [oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" "^Cc:" nil nil "11" "2016110211:53:04" "[oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" (number mark "        robert@fedor Nov  2   49/1783  " thread-indent "\"Re: [oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host\"\n") "<alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>" ("<alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8089 invoked by uid 550); 2 Nov 2016 12:44:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21991 invoked from network); 2 Nov 2016 11:53:22 -0000
Message-ID: <20161102115304.GA11945@hurricane.linuxnetz.de>
References: <alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="6c2NcOVqGQ03X4Wi"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>
X-GnuPG-Key: 0xCE3E1F56, available at http://pgp.uni-mainz.de/
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.78 on 127.0.0.1
Cc: Daniel Stenberg <daniel@haxx.se>
Date: Wed, 2 Nov 2016 12:53:04 +0100
From: Robert Scheck <robert@fedoraproject.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use
 wrong host
To: oss-security@lists.openwall.com

--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, 02 Nov 2016, Daniel Stenberg wrote:
> For example, `stra=DFe.de` is translated into `strasse.de` using IDNA 200=
3 but
> is translated into `xn--strae-oqa.de` using IDNA 2008. Needless to say, t=
hose
> host names could very well resolve to different addresses and be two
> completely independent servers. IDNA 2008 is mandatory for .de domains.
>=20
> curl is not alone with this problem, as there's currently a big flux in t=
he
> world of network user-agents about which IDNA version to support and use.

=46rom my point of view, this especially affects GNU libc for example.

On the other hand, I am wondering if this should be really classified as a
security related issue. Being interested in IDNA 2008 support myself, I did
some IDNA 2008 patches in the past, but practically IDNA 2008 support is
still not that widespread as I would wish. Does using an older standard (as
in IDNA 2003) really classify this issue as a security related one? If so,
I guess many upstreams should be explicitly made aware of that soon. Maybe
MITRE (or somebody else) could share their thoughts about this, too?

> It was first reported to the curl project on October 11 by Christian Heim=
es.

I reported the "=DF" issue and the lack of IDNA 2008 support in cURL on Sun,
18 May 2014 17:17:03 +0200 directly to you, but I didn't classify it as a
security related issue though... ;-)


Greetings,
  Robert

--6c2NcOVqGQ03X4Wi
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iEUEARECAAYFAlgZ06AACgkQUwMgnc4+H1Y6TQCXYyWObt76DDM5Fbxdls++Lv+d
BwCdEq7Oj5kAyABMiZkCjfkQDsPZvEI=
=jma9
-----END PGP SIGNATURE-----

--6c2NcOVqGQ03X4Wi--
