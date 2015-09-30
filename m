X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2151" "Wednesday" "30" "September" "2015" "12:50:31" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150930105031.GA8507@kronk.local>" "64" "Re: [oss-security] CVE Request: cacti multiple SQL injections" nil nil nil "9" "2015093010:50:31" "[oss-security] CVE Request: cacti multiple SQL injections" (number mark "        alessandro@g Sep 30   64/2151  " thread-indent "\"Re: [oss-security] CVE Request: cacti multiple SQL injections\"\n") "<20150718173121.GA15158@kronk.local>" ("<20150718173121.GA15158@kronk.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19739 invoked by uid 550); 30 Sep 2015 10:50:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19715 invoked from network); 30 Sep 2015 10:50:44 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=hsC598ELcJTvDocV8Np9onx+bXqUO3LNTr+lA38WCqM=;
        b=RtWLpU9DIj4bKzDR129Uf/cw0fucyMfldsR7BmAnqmrk+GDcnxyekuPTq93lO1fa0+
         /Kpe0hmW7aP7VPY1nCe427eGwUe5P4vaF6JIxWuzxmkTf+QJcl51bTM2waANV5UlzkjM
         ZuYvUvFxOMLP8yQ0U9INQCLUfR/brvI9cr3ggd/rT/D9+qWBn413fyJF6cH/p2GmIgRp
         KmCpBIQFYnoAsSOZrvQ6xDwqpTpA5ACaGBIBtskuf2XJX8N3iP3OxoLz5XOiCh/Z4bKk
         6K7znbHSBcocMa32E8G0QTxJ0u12TJU8PBBmxXIxt3WApsUtu3Zd0PP8GTJEUaUR9sgF
         kNJQ==
X-Received: by 10.180.106.66 with SMTP id gs2mr31463034wib.14.1443610232980;
        Wed, 30 Sep 2015 03:50:32 -0700 (PDT)
Message-ID: <20150930105031.GA8507@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com, cve-assign@mitre.org
References: <20150718173121.GA15158@kronk.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline
In-Reply-To: <20150718173121.GA15158@kronk.local>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: cve-assign@mitre.org
Date: Wed, 30 Sep 2015 12:50:31 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: cacti multiple SQL injections
To: oss-security@lists.openwall.com

--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jul 18, 2015 at 07:31:21PM +0200, Alessandro Ghedini wrote:
> Hi,
>=20
> CVE-2015-4634 was assigned for an SQL injection in cacti [0], but accordi=
ng to
> the commit fixing it [1] several other SQL injections were also found:
>=20
> -bug#0002574: SQL Injection Vulnerabilitie in graph items and graph templ=
ate items
> http://bugs.cacti.net/view.php?id=3D0002574
>=20
> -bug#0002579: SQL Injection Vulnerabilitie in data sources
> http://bugs.cacti.net/view.php?id=3D0002579
>=20
> -bug#0002580: SQL Injection in cdef.php
> http://bugs.cacti.net/view.php?id=3D0002580
>=20
> -bug#0002582: SQL Injection in data_templates.php
> http://bugs.cacti.net/view.php?id=3D0002582
>=20
> -bug#0002583: SQL Injection in graph_templates.php
> http://bugs.cacti.net/view.php?id=3D0002583
>=20
> -bug#0002584: SQL Injection in host_templates.php
> http://bugs.cacti.net/view.php?id=3D0002584
>=20
> Could CVEs be assigned for these issues as well?
>=20
> Thanks
>=20
> [0] http://bugs.cacti.net/view.php?id=3D0002577
> [1] http://svn.cacti.net/viewvc?view=3Drev&revision=3D7731

Re-ping?

Cheers

--cNdxnHkX5QqsyA0e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWC753AAoJEK+lG9bN5XPLXBMP/1yCoq0t7ouNlefeifOMAusX
8yVGC/Hj7JMSGguAVHaGQNeiHg1AfmJ5BCpcCaGjQyUKwUnW+ZM2GpejpUK8DYiD
IEJnhZB7GQ9JKY/lht8PnvJDDmicLzx3n36OX13kzXbqAtiErZlTeGXWIzPseVJM
0FxLnlwzLVa4cHg1IuoRHsNLXqjC6EGr+iUwRDrEtx/bNiSGxoSD74N4SBcX9xO1
ec+Z72Gbhn8YDlO/gSzPouErbwESYyDlRPmxin3h0sC3BXsO8ttoXoHXcU32Ky2t
IQURQgqq4chKBp4IGqbIxXIXkH9Q167go2uB/Pl1yVRibKpItst1/rq6/3TY5KEz
fBMUAEnL6wOm2a1KImTN+yn6KzhEbVD7yMDzacLVv05IS6Xt+LD98P966FECphsP
ifFfAOn3N9skRDJNFdCIUR5M3Pfdk0+eswRBRplAB9x4k+Mv/9hY694SfWQTtFoY
7Sra0CfBFGoPa21vNdgPloMRqNO7oT27rfNc8Tb1BlyKocJ/HDoeaA6APHN+EZ1t
yPvzSQKbxZj1suzmX01T5YRMvKfTxZpg/cuG1knmPjFCTdekSTZsLz2K+jqp3qwq
o03lKys25HKBoqwZgBv3ubnwJ19BX0GMy+jmN14zISJEOcV1EO/PBMoKr5dzdNO0
5JHaklOTCCeikptPzoLt
=poZ6
-----END PGP SIGNATURE-----

--cNdxnHkX5QqsyA0e--
