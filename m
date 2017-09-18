X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4606" "Monday" "18" "September" "2017" "19:32:00" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20170918193159.GL2409@yuggoth.org>" "100" "Re: [oss-security] [OSSN-0081] sha512_crypt is insufficient for password hashing" "^Date:" nil nil "9" "2017091819:32:00" "[oss-security] [OSSN-0081] sha512_crypt is insufficient for password hashing" (number mark "        fungi@yuggot Sep 18  100/4606  " thread-indent "\"Re: [oss-security] [OSSN-0081] sha512_crypt is insufficient for password hashing\"\n") "<20170917130410.GA8650@openwall.com>" ("<6bc72013-a061-9025-7b50-7e35f63f45f3@redhat.com>" "<20170917130410.GA8650@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15482 invoked by uid 550); 18 Sep 2017 19:32:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15464 invoked from network); 18 Sep 2017 19:32:14 -0000
Message-ID: <20170918193159.GL2409@yuggoth.org>
References: <6bc72013-a061-9025-7b50-7e35f63f45f3@redhat.com>
 <20170917130410.GA8650@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WTeeGPwOEQ/0Zzm9"
Content-Disposition: inline
In-Reply-To: <20170917130410.GA8650@openwall.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Date: Mon, 18 Sep 2017 19:32:00 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [OSSN-0081] sha512_crypt is insufficient for
 password hashing
To: oss-security@lists.openwall.com

--WTeeGPwOEQ/0Zzm9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2017-09-17 15:04:10 +0200 (+0200), Solar Designer wrote:
[...]
> the wording of the advisory and in the discussion at
> https://bugs.launchpad.net/ossn/+bug/1668503 is weird.
>=20
> I assume that sha512_crypt refers to the algorithm introduced in
> glibc 2.7 and now used by many Linux distros and more. It is
> typically called sha512crypt without the underscore. I also assume
> that pbkdf2_sha512 refers to PBKDF2-HMAC-SHA512.

Yes, or more specifically these:

https://passlib.readthedocs.io/en/stable/lib/passlib.hash.sha512_crypt.html
https://passlib.readthedocs.io/en/stable/lib/passlib.hash.pbkdf2_digest.html

> sha512crypt's "computational cost factor" is tunable, and sha512crypt
> isn't quicker to crack than PBKDF2-HMAC-SHA512 when both are tuned for
> the same defensive running time and use implementations optimized to a
> similar extent.  However, PBKDF2-HMAC has worse missed optimization
> pitfalls, so highly unoptimal implementations of PBKDF2 are very common:
>=20
> https://jbp.io/2015/08/11/pbkdf2-performance-matters

Thanks for the pointer! I wasn't familiar with the fastpbkdf2 talk,
definitely some helpful research there.

> Obviously, password crackers may use more optimal implementations.
>=20
> I guess the names with underscores are some specific instantiations with
> fixed cost factors?  I guess bcrypt and scrypt referred to here are also
> specific instantiations with fixed cost factors?  Then the wording would
> start to make sense.  For completeness, what are the specific cost
> factors used for each of those four?
>=20
> Reading the discussion on relevant Bug entries and proposed commits, it
> appears that pbkdf2_sha512 was recently introduced under the flawed
> understanding that "sha512_crypt is considered insufficient (even with
> significant rounds) in comparison to pdkfd_sha512, bcrypt, or scrypt for
> password hashing."  While the references to bcrypt and scrypt are
> correct, the reference to (presumably) PBKDF2-HMAC-SHA512 is wrong.  It
> is in the same category with sha512crypt.  As it is, pbkdf2_sha512 might
> very well allow for quicker cracking than sha512_crypt does.  Without
> knowing the specific settings and efficiency of implementations, we
> can't tell.
[...]
> I don't recommend any further code changes at this time.  Rather, I
> recommend that the confusion be dealt with: clarify the settings used,
> don't refer to pbkdf2_sha512 as a clear improvement upon sha512_crypt.

I must admit, the confusion was probably primarily mine. When asked
for feedback on the earlier bug report, I mistook the description at
face value assuming that "sha512 based password hashing" referred to
a raw one-way hash function along the lines of hashlib.sha512(), and
spouted the usual recommendation for using a KDF instead of a bare
hash:

https://launchpad.net/bugs/1543048

Had I instead taken the time to look at the existing implementation
in the source tree (as I would have done were it flagged for a
formal advisory) I would have probably noticed that it already was
using a KDF... tunnel vision on my part perhaps. I've added a
comment to this effect on the bug report linked from the security
note and will write up some appropriate errata to accompany it.

Thanks for noticing and pointing out this error, and my apologies
for any inconvenience my lack of attention may have caused.
--=20
Jeremy Stanley

--WTeeGPwOEQ/0Zzm9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQJ8BAEBCgBmBQJZwB8vXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQ5N0FFNDk2RkMwMkRFQzlGQzM1M0IyRTc0
OEY5OTYxMTQzNDk1ODI5AAoJEEj5lhFDSVgpLpwP/1X1hQIFR1SR/sYMF2ZpKrr3
CO8AIByX0/U3zTO4SFDXcSXRVRIyl6H8b8Cc8a6zfMUGvMJBm9bA+wdzMEnMgo8Q
W1pd+nW2SLyl+KN+7hc6DCdt7MBOrn2ha65TMDLuxS6YETvHH4lsUArTv2DuHXl6
QWmRBja21QCC1vUu5/03eZ7qHcg+nWD2pRKJ8UG+fMMDU+8+g5X99jSd4F//wvZE
STpXdsSclXrXfyR+2+xgvFOQ1P4uKs7ToRWR8b50D7Q4rad1ybAN1eMh8M1xkfuE
w4DbvO0N2xoN3ujmVrRc0l2BsS/C1YmxOlcy+BJkODW23v4B4miYI8z4SXwSQyNM
9UHdqbGlqYIXTejzLj6folY9LoubWJaJN6NMEDx7CFJJU4lAo/jwdTB1Hx4lYf19
OeYIr8adn73i+GAJ/6M0DDKsisTRUIUAYMM74ANyly8MOB7JWDiy0C7BrMdeQhf0
EoHsJlSr51jNmLKKyRO3GD4cvWE8++Qy5Tb5aTta+9u2XwZ4MatdV862UmM9W8fV
FaP3YnrUfBKkkSUlFtC/1tQfPEZ5ATLA7R/a8JdfYAXjIYENmnszieba6trL7DNV
P00+ApU+OWaI6DGEev5pEGMKqcoozyDPLbTpoLffU9eUEUnigrigiD7aZ6LpedG7
Q9H4J0aDX5h8di1zCxV6
=d3kQ
-----END PGP SIGNATURE-----

--WTeeGPwOEQ/0Zzm9--
