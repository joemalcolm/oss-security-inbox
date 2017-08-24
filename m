X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1311" "Thursday" "24" "August" "2017" "11:03:14" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20170824180314.GA9813@hunt>" "38" "Re: [oss-security] Linux kernel: fixed bug in net/core/flow_dissector.c" "^Date:" nil nil "8" "2017082418:03:14" "[oss-security] Linux kernel: fixed bug in net/core/flow_dissector.c" (number mark "        seth.arnold@ Aug 24   38/1311  " thread-indent "\"Re: [oss-security] Linux kernel: fixed bug in net/core/flow_dissector.c\"\n") "<459c5905-fded-264c-ac85-c5a456aa836e@linux.com>" ("<459c5905-fded-264c-ac85-c5a456aa836e@linux.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24274 invoked by uid 550); 24 Aug 2017 18:04:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24031 invoked from network); 24 Aug 2017 18:03:28 -0000
Message-ID: <20170824180314.GA9813@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <459c5905-fded-264c-ac85-c5a456aa836e@linux.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8t9RHnE3ZwKMSgU+"
Content-Disposition: inline
In-Reply-To: <459c5905-fded-264c-ac85-c5a456aa836e@linux.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Thu, 24 Aug 2017 11:03:14 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: fixed bug in
 net/core/flow_dissector.c
To: oss-security@lists.openwall.com

--8t9RHnE3ZwKMSgU+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 24, 2017 at 05:52:45PM +0300, Alexander Popov wrote:
> I was asked to investigate a suspicious kernel crash on some Linux
> server. It is at least a remote DoS (and maybe RCE): Linux is crashed by
> receiving a single special MPLS packet.
>=20
> I bisected and found out that the bug was introduced in
> commit b3baa0fbd02a1a9d493d8cb92ae4a4491b9e9d13
> And was later fixed it in
> commit a6e544b0a88b53114bfa5a57e21b7be7a8dfc9d0

> Is it worth requesting a CVE ID for that issue?

I think it is, it's an easy way to make sure all downstream consumers
are alerted to the issue.

Thanks

--8t9RHnE3ZwKMSgU+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJZnxTiAAoJEPMhclmdjS6XJwUH/jL+Mfqz86inifMcgjH2NcZl
XcSJHiEvFHIyyI4Mw/d6g2Lz3D70MYr4KlFoKzBMbp3sWqhmIHRSErW4gbr0vXSC
T/NXbNnvx7rEcunkY/eJ3/dI5hHwHa/AKF6CZgiOEARdaaiwg7FAaINwdb6qOrJQ
5yLLLPBsh9ioHofp42BUHBqeaK4wfMZ6jA0Su0vdrUJMiVYEOLDmkXpgqkFeIqtx
JMscCRp5peGkkm2Lx/LZX3vLl2bQZDTBS+dzmS3aFmgmOXw8kK5HdPBsi8QdPg2v
9qaFnnpCc3nhEKosswjgx9NNvWlu3GwHteK8DVFmh44tjxl3VLwH/4hunl2XXJU=
=Df+i
-----END PGP SIGNATURE-----

--8t9RHnE3ZwKMSgU+--
