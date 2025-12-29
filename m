Received: (qmail 30459 invoked by uid 550); 29 Dec 2025 17:05:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26583 invoked from network); 29 Dec 2025 09:15:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=verbuecheln.ch;
	s=default; t=1766999731;
	bh=wcBk5mkc6ixBKBAwY3iSguZBJRNLAY0y2rj0CrQUnjc=;
	h=Subject:From:To:Date:In-Reply-To:References:From;
	b=oCuiWhWL49lohKv+Cyt4wW0x+JBtMmV8JeLbMRpsZQNEf8RGyPnoFwzwVIar3Bt+a
	 7MXvrn/wvqgxbBQLEEa9+A58CGDEKzOdJ4T0WTj10mP4Fs65cSZuJD75EGGO/mDNA+
	 ++Nh/JaBuzib3N/EWnV0ReYSRyA+FsQq3kqL2mlEXXpOUp/T6cMmPS7Nb2ut6crGY4
	 DQ5gmF/c0VMV6fk3Yhm0VZXnHJf6Tak+ZzAMqYKNgRy7GA458RCDMxvnMrSmRJwwm7
	 QxDC5Jj3XbvAJbINAKVoAJlIpPwmSWpYORNmEqh24gYl1JdyZyL4f4X+vFdfGf5U+O
	 XqMhx88mef10A==
Message-ID: <a5b000db3ddb1c25e18435218f88d6516bbfa7fa.camel@verbuecheln.ch>
From: Stephan =?ISO-8859-1?Q?Verb=FCcheln?= <stephan@verbuecheln.ch>
To: oss-security@lists.openwall.com
Date: Mon, 29 Dec 2025 10:15:29 +0100
In-Reply-To: <e689f7a6-3167-41ea-9ec0-88b87df4d68a@gmail.com>
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
	 <87y0mnj593.fsf@gentoo.org>
	 <e689f7a6-3167-41ea-9ec0-88b87df4d68a@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-tTUCEGw82fJjXADORCQ6"
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

--=-tTUCEGw82fJjXADORCQ6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

GnuPG follows a traditional versioning scheme where even numbers (e.g.
2.2 and 2.4) are release branches and odd numbers (2.3 and 2.5) are
developer branches. So what we have to wait for is 2.4.9 fixing the
vulnerabilities.

Alternatively, distributions will fix the critical ones independently.
For instance, Debian 13 Trixie is using 2.4.7 and applies patches
downstream.

Regards

--=-tTUCEGw82fJjXADORCQ6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRB1rjSpCJd8a7h6mNgNUJZCjx8YgUCaVJGsQAKCRBgNUJZCjx8
Yi6jAQDUzyVtdlixUPGpqS8WHoVyHSNoYeXB8vWz1VBRJxCMtgD/QFq86yTHn5s7
S9JPpW/p3hHcvolUOFSYPStR5hGFdwc=
=juJm
-----END PGP SIGNATURE-----

--=-tTUCEGw82fJjXADORCQ6--
