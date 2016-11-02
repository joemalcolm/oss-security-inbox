X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1677" "Wednesday" "2" "November" "2016" "16:52:09" "-0600" "Seth Arnold" "seth.arnold@canonical.com" "<20161102225209.GG7908@hunt>" "44" "Re: [oss-security] Stack guard canary massaging" nil nil nil "11" "2016110222:52:09" "[oss-security] Stack guard canary massaging" (number mark "U       seth.arnold@ Nov  2   44/1677  " thread-indent "\"Re: [oss-security] Stack guard canary massaging\"\n") "<14b76703-8185-dadb-7605-10496331452c@redhat.com>" ("<14b76703-8185-dadb-7605-10496331452c@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20133 invoked by uid 550); 2 Nov 2016 22:52:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20115 invoked from network); 2 Nov 2016 22:52:24 -0000
Date: Wed, 2 Nov 2016 16:52:09 -0600
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20161102225209.GG7908@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <14b76703-8185-dadb-7605-10496331452c@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="kjpMrWxdCilgNbo1"
Content-Disposition: inline
In-Reply-To: <14b76703-8185-dadb-7605-10496331452c@redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] Stack guard canary massaging

--kjpMrWxdCilgNbo1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[keeping only oss-security]

On Mon, Oct 31, 2016 at 11:48:45AM +0100, Florian Weimer wrote:
> This is an elaborate way of setting ret.bytes[0] =3D '\0'.
>=20
> The intent (determined from an old commit message) is to make it harder to
> obtain the canary value through a read buffer overflow of a NUL-terminated
> string: The read overflow will stop at the NUL byte and not include the
> random canary value, reducing the risk of inappropriate disclosure.

StackGuard used a fixed canary value: CR LF 0x00 0xFF. This was based on
the observation that most unsafe stack buffer manipulations were from
string operations, and most string-handling functions would trip up on at
least one of these values, making it difficult to write the canary with
the functions that were used.

ftp://gcc.gnu.org/pub/gcc/summit/2003/Stackguard.pdf

I suspect the leading 0x00 here is for much the same reason, to trip up
string writing operations more than string reading.

Thanks

--kjpMrWxdCilgNbo1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJYGm4ZAAoJEPMhclmdjS6XkBsH/i9N02+WNWzIRiAqwtNXjoCk
SwRvdDoTrxyvmfEaeq6luKMKLArWlo5A+N8u9brRACdcT4GvASHS/CgwsAnKklf+
eza5k0XZPg8qfKtoZWCRKHwRWtx6/aAUQloTOoovDEVY5Ul+wo4fFQyc3Mkcg6D8
i9djQD1M+fgoU/iQngpR0Rt2Dfg1SpdaagMJ2e01lJcCQ/oF04tlZQyU3FHjjfNY
kYsnFCyt7v4Bkdd7F/wBRV6DCEEPeqYw0FhAey3eeCvCSn2ToXzauIz3HuHNoZ/M
kG1Nxob1azCKqEDYLxR0J2DNCP1kZbhLgu5BtVfFiBRjaGDe+MCsKQKV4wpnsKY=
=gHkJ
-----END PGP SIGNATURE-----

--kjpMrWxdCilgNbo1--
