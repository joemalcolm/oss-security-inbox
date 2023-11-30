Received: (qmail 30363 invoked by uid 550); 30 Nov 2023 09:44:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30339 invoked from network); 30 Nov 2023 09:44:20 -0000
Date: Thu, 30 Nov 2023 10:44:08 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: Alex Murray <alex.murray@canonical.com>
Cc: oss-security@lists.openwall.com
Message-ID: <ZWhZaaGx_OalvQYM@kasco.suse.de>
References: <ZVc0QDRY04pR81cs@kasco.suse.de>
 <CAB=ivF-hcDEN3_tXk+4rUUwXpVAKYcmt+efkUpGgedPiA4CDyg@mail.gmail.com>
 <ZVn7eWAIy-zhDFJ0@dojo.mi.org>
 <ZVthevPKLmczR1-B@kasco.suse.de>
 <874jh4dscg.fsf@canonical.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="t0KhWIJ+bT/BvCRJ"
Content-Disposition: inline
In-Reply-To: <874jh4dscg.fsf@canonical.com>
Authentication-Results: smtp-out2.suse.de;
	dkim=none;
	dmarc=fail reason="No valid SPF, No valid DKIM" header.from=suse.de (policy=none);
	spf=softfail (smtp-out2.suse.de: 2a07:de40:b281:104:10:150:64:97 is neither permitted nor denied by domain of mgerstner@suse.de) smtp.mailfrom=mgerstner@suse.de
Subject: Re: [oss-security] hplip: security issues in `hpps` program due to
 fixed /tmp path usage in prnt/hpps/hppsfilter.c

--t0KhWIJ+bT/BvCRJ
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Date: Thu, 30 Nov 2023 10:44:08 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: Alex Murray <alex.murray@canonical.com>
Cc: oss-security@lists.openwall.com
Subject: Re: [oss-security] hplip: security issues in `hpps` program due to
 fixed /tmp path usage in prnt/hpps/hppsfilter.c

Hello Alex,

On Thu, Nov 30, 2023 at 10:28:55AM +1030, Alex Murray wrote:
> I just wanted to follow-up on this to see if a CVE was ever assigned?

I did not get any news neither in the private Launchpad issue for the
hplip project, nor after contacting hp-security-alert@hp.com, as was
suggested by others in this thread.

Best Regards

Matthias

--t0KhWIJ+bT/BvCRJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmVoWWkACgkQFMQFyXGS
NVP8NBAAmfUnkaeogF4DAXSHgxrDNnGupU9fS0Ki4hDUgeRz/47bjPPLPR+6Jzrr
LKOlWOCRBWmfV2hU5wayjOzwBt4/N4xprSG6755otVU9eAlhWhs6bx1513ebdKWC
a+wRGuY5cwrpPubSHJj3233fhRC7588p0X13jYi6pdXEzwb8taNftEnD0b5Ol7gC
Xhwud3K4CrVUONPOkUvhMgLRqf1KJXNukU+qcRHZzIY2JszCI8FF33S9nQusB+kS
AW9WVz+WpMQJ9Sk284rJinNkWkNY80jbSTey8UJpHU0mB/OggyRw8OP+UJ4XMm6B
KFdSUbrwTO6VAFTgS1vzjeeIIv2rMeUOgxXBQapX1+KYK+juxpvZfeQniBmCsKs9
YjL0hEhM7wUqjL1JqnhqaDu9meWceEWbB+ibDvMYdEAeLR6+S1JOwr0lx/fGT6Xk
4xGfBqV3P+FjHzu5tvzMP/6OZ4J23ZfL32UhDRDYhm+MoMNoblmZIOamA0GFPbBD
b5A8fuM1PDWbYcOrmZQfaKFBfkwMERQbEeNfM5YcLu+UAL3nzJnVMsCPAWAeg3yM
LamKtlRUcj2vCHBXB4hudGyYcDq4kmmMdvDaV+qOkRCkD8VsH75QrsCl51lxINHO
t6OsSHL4lCYZulPtcga/uathQOWijuOt5NpUCswrGRpsiCvrkAM=
=+8+t
-----END PGP SIGNATURE-----

--t0KhWIJ+bT/BvCRJ--
