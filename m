X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2084" "Monday" "22" "October" "2018" "20:31:02" "+0000" "Mikhail Klementev" "jollheef@riseup.net" "<20181022203059.mjg5hfb6hprfmfrm@nuc>" "58" "Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" "^Date:" nil nil "10" "2018102220:31:02" "[oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" (number mark "        jollheef@ris Oct 22   58/2084  " thread-indent "\"Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions\"\n") "<DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>" ("<DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25899 invoked by uid 550); 23 Oct 2018 10:22:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1472 invoked from network); 22 Oct 2018 20:30:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1540240203; bh=Y3UzT7zwz3lOTvZqJpLAnmgtaRtkrWMJ+mbyLTpbZ4A=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=NHlrm2RPsT9Iy12AU5b142Id7fY730BMRf0lhg4mEcmgp76UptYqnPNd4gOyzJS1b
	 KCjlYAilIjdv+JIyVfpD+Da89ZExHLsPMtugdQACDRszQU1Ug5NLEM5bD9F4dlf5br
	 dbyOfisfh1R2UjzOM3N+V7xaFBDw1kqgeij1J0+k=
X-Riseup-User-ID: 2E3F8312C8DFB62FCE25D0780288F76F27E0E65A5AC60B215980725782E08443
Message-ID: <20181022203059.mjg5hfb6hprfmfrm@nuc>
References: <DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="al4eetfkwlgq63it"
Content-Disposition: inline
In-Reply-To: <DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>
Date: Mon, 22 Oct 2018 20:31:02 +0000
From: Mikhail Klementev <jollheef@riseup.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] GCC Compiler Induced Vulnerability - affects
 programs compiled with GCC 7 and 8 containing nested functions
To: oss-security@lists.openwall.com

--al4eetfkwlgq63it
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

It was described in GCC documentation even from 2003:

https://web.archive.org/web/20030207183940/http://gcc.gnu.org:80/onlinedocs=
/gccint/Trampolines.html

What's difference between vulnerability you found and behavior that
was described in the documentation?

On Mon, Oct 22, 2018 at 03:07:55PM +0000, Andrew Sandoval wrote:
> ...
> Technical Description of the vulnerability
> When nested C functions are compiled by GCC, code is generated which caus=
es the
> call stack of the currently executing thread to be made executable prior =
to the
> call to a nested function and for the duration of the thread's lifetime. =
 This
> is essentially the equivalent of disabling Data Execution Prevention (DEP=
).
> A stack overflow, etc., that is able to place instructions on the page(s)=
 of
> memory made executable has the potential of gaining execution and running
> malware, etc.  This places the process at substantial risk of being explo=
ited.
> ...

--=20
With eval and apply,
Mikhail Klementev.

--al4eetfkwlgq63it
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEExu41KPSzueAMClya2Q0HJ8H+vqsFAlvOM4EACgkQ2Q0HJ8H+
vquR1Q/+IwiIxB2Zuh2ZS5uaxED9DkqL99M2cSzrV36phPs3wAySOsmQiLZENIOx
M9KnQUpD59nEGweQWMfwhSG6lfqe/ywEjB9f9bmGDffm5wEozcyAuYB5wBqTCu2U
vtv7HEFVJuHbF5LVPwrXnYYottgofCzMDnJWkXJHYdx4xM0aFeoUlRgVdRvzWABB
ol2XN38eO1BVw9hjtBLrYGA0RhBTmWH7nnldScfiTyE+fdWJks+JgwdzCWCAnp7l
XkAQYY6meUpBXEXWlQfL+wgcpIVnc2DgSbe78AwxRyBTusemPitsthkZRtOBARKS
4FpTbK05dm849ixza5r6QPif4T4W5veDVoH3KSXxVrTMmaLe5uQe96GTBCia6lOu
3/I9F2LU3hJj8EK2v1+5HVZt3pxM0Wp/wrYOLbbw7W7hjVJqBR5O+dnC9k3zzsIG
Eom1TYWJacnNtevbfViPi5Xqo4xnOSdO23XxqQikSeTwdaSvqqLdSInZZi+bCg4E
yuGWKWdZlaBFm6mc7SScKhq7mgnObgfHTPqI978gT8bG8yj973lpYGK3WdfHUtLo
SToZMLuEuVJtJDJfvqXz7VROS6cyW2zpjWK/lItn2faN1vyW3Zx/jyYOUhB0M+jI
9GSHnSR0KI4mx/KPdhCFu/D+hu2VA+jQK7Hl3hfuThS7kT7sV4w=
=/5iy
-----END PGP SIGNATURE-----

--al4eetfkwlgq63it--
