X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1826" "Wednesday" "17" "February" "2016" "10:30:32" "+0100" "Florent Daigniere" "florent.daigniere@trustmatta.com" "<1455701432.2704.1.camel@trustmatta.com>" "55" "Re: [oss-security] Re: Umbraco - The open source ASP.NET CMS Multiple Vulnerabilities" "^Cc:" nil nil "2" "2016021709:30:32" "[oss-security] Re: Umbraco - The open source ASP.NET CMS Multiple Vulnerabilities" (number mark "        florent.daig Feb 17   55/1826  " thread-indent "\"Re: [oss-security] Re: Umbraco - The open source ASP.NET CMS Multiple Vulnerabilities\"\n") "<20160216222342.CCC126FC01D@smtpvmsrv1.mitre.org>" ("<20160216222342.CCC126FC01D@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10132 invoked by uid 550); 17 Feb 2016 09:30:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10104 invoked from network); 17 Feb 2016 09:30:13 -0000
Authentication-Results: filter.trustmatta.local; dkim=pass
	reason="1024-bit key; unprotected key"
	header.d=trustmatta.com header.i=@trustmatta.com header.b=JpQ4aesa;
	dkim-adsp=pass; dkim-atps=neutral
X-Spam-ASN:  
Message-ID: <1455701432.2704.1.camel@trustmatta.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trustmatta.com;
	s=dkim2015; t=1455701398;
	bh=hsPHSQ0W6p0LIzCNI0HALXfRASJhYhBnOIXcxGutuq8=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=JpQ4aesaQoPl2yTlmrAz5MiOAkx8gtEwNLIM3IelGA4IOWe+hP/C3CWAHoC/XnboM
	 zrNsOrSz6oee+x1VVWErqq1OledFIpuO59j/c8hDtB4eZY1UFUvkfdqkSx2P4j/Ldi
	 yX75c3SHgKwT3itjfpEtU27I6uW30LIXO8jgD3SA=
In-Reply-To: <20160216222342.CCC126FC01D@smtpvmsrv1.mitre.org>
References: <20160216222342.CCC126FC01D@smtpvmsrv1.mitre.org>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-bLL1TBQm88HYnujf3rma"
Mime-Version: 1.0
X-Envelope-From: <florent.daigniere@trustmatta.com>
Cc: cve-assign@mitre.org
Date: Wed, 17 Feb 2016 10:30:32 +0100
From: Florent Daigniere <florent.daigniere@trustmatta.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Umbraco - The open source ASP.NET CMS
 Multiple Vulnerabilities
To: oss-security@lists.openwall.com, sandeepk.l337@gmail.com

--=-bLL1TBQm88HYnujf3rma
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2016-02-16 at 17:23 -0500, cve-assign@mitre.org wrote:
> > http://issues.umbraco.org/issue/U4-7457
> > SSRF
>=20
> > the feedproxy.aspx is used to access the external resources using
> > the URL GET parameter.
>=20
> > http://local/Umbraco/feedproxy.aspx?url=3Dhttp://bobsite/index
> >=20
> > once you change the URL to the
> > http://local/Umbraco/feedproxy.aspx?url=3Dhttp://127.0.0.1:80/index,=20
> > you able
> > to access the localhost application of the server.
> >=20
> > Using this payload change the port number to perform port scanning
> > of the
> > server. It will be helpful to find the more details of the server.
> > For example:
> >=20
> > http://local/Umbraco/feedproxy.aspx?url=3Dhttp://127.0.0.1:25/index
> > http://local/Umbraco/feedproxy.aspx?url=3Dhttp://127.0.0.1:8080/index
> >=20
> > If the port number is closed, you will find the error message on
> > the
> > feedproxy.aspx page.
>=20
> Use CVE-2015-8813.
>=20

How different is it from=C2=A0CVE-2012-1301 ? Have they re-introduced it?

Florent=

--=-bLL1TBQm88HYnujf3rma
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAABCAAGBQJWxD24AAoJEOrF6/B6qcKjGjUH/2H0LuWLD3w+KF1gXXXAJsrM
+RsQZBFGApQaKFHmDPdmO2NpHTX+0ZA1iy9yU3CGvWZB3nN85G8krGySxH47zFlm
Gqu5jaWCY9BZLKBQaX0HclCPTcrfv/rzJSE9DG111KFWSsa3RMn06wbDRIH9vOdX
P9X1p+uei5LGRgWoWidUZ6uYDqH2evPlo/+FU98PqQPrsdgj4lTPspSDHlm9xgYL
Akgnhl+I0aX5njX1foDthOKv5xmyGyTWYz80HVUb9hmMeKk6ddOqskZCJtizSYRa
JlDGLC8Ud2p+Pd81Fk1gwZwdGD1YYxnAJOGwxCRofPCF+PUGQp2y79eI0z1/cgs=
=/MqE
-----END PGP SIGNATURE-----

--=-bLL1TBQm88HYnujf3rma--
