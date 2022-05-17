Received: (qmail 15532 invoked by uid 550); 17 May 2022 18:42:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1949 invoked from network); 17 May 2022 18:35:58 -0000
Message-ID: <e53ec98ef43fa137db9a626e5148ae1c00ea7c7e.camel@fiasko-nw.net>
From: Thomas Liske <thomas@fiasko-nw.net>
To: oss-security@lists.openwall.com
Date: Tue, 17 May 2022 20:35:37 +0200
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-eocdpC2RCuN2crV9H5tQ"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-Spam_bar: -
Subject: [oss-security] CVE-2022-30688: needrestart 0.8+ local privilege escalation

--=-eocdpC2RCuN2crV9H5tQ
Content-Type: multipart/mixed; boundary="=-zVn5lO1Ru0z0LkvUBCfQ"


--=-zVn5lO1Ru0z0LkvUBCfQ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

# needrestart: local privilege escalation

https://github.com/liske/needrestart


## Description

A local privilege escalation has been found in needrestart. CVE-2022-
30688 has been assigned to this issue.

The interpreter heuristic contains unanchored regexs allowing local
users to execute arbitrary code in the context of the user running
needrestart. Needrestart might be run as root by package manager hooks
on package installations or upgrades.


## Affected

Affected: needrestart >=3D 0.8
Fixed in: needrestart >=3D 3.6


## Mitigation

Disabling the interpreter heuristic in neederstart's config prevents
this attack:

=C2=A0# Disable interpreter scanners.
=C2=A0$nrconf{interpscan} =3D 0;


## Credit

Reported by Jakub Wilk.



Regards,
Thomas Liske


--=-zVn5lO1Ru0z0LkvUBCfQ
Content-Disposition: attachment; filename="anchor-interp-re.patch"
Content-Type: text/x-patch; name="anchor-interp-re.patch"; charset="UTF-8"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL3BlcmwvbGliL05lZWRSZXN0YXJ0L0ludGVycC9QZXJs
LnBtIGIvcGVybC9saWIvTmVlZFJlc3RhcnQvSW50ZXJwL1BlcmwucG0KaW5k
ZXggNDBhYWJiNC4uNTAzMTY3OSAxMDA2NDQKLS0tIGEvcGVybC9saWIvTmVl
ZFJlc3RhcnQvSW50ZXJwL1BlcmwucG0KKysrIGIvcGVybC9saWIvTmVlZFJl
c3RhcnQvSW50ZXJwL1BlcmwucG0KQEAgLTQzLDcgKzQzLDcgQEAgc3ViIGlz
YSB7CiAgICAgbXkgJHBpZCA9IHNoaWZ0OwogICAgIG15ICRiaW4gPSBzaGlm
dDsKIAotICAgIHJldHVybiAxIGlmKCRiaW4gPX4gbUAvdXNyLyhsb2NhbC8p
P2Jpbi9wZXJsQCk7CisgICAgcmV0dXJuIDEgaWYoJGJpbiA9fiBtQF4vdXNy
Lyhsb2NhbC8pP2Jpbi9wZXJsKDVbLlxkXSopPyRAKTsKIAogICAgIHJldHVy
biAwOwogfQpkaWZmIC0tZ2l0IGEvcGVybC9saWIvTmVlZFJlc3RhcnQvSW50
ZXJwL1B5dGhvbi5wbSBiL3BlcmwvbGliL05lZWRSZXN0YXJ0L0ludGVycC9Q
eXRob24ucG0KaW5kZXggNTU5NjY2Yy4uYTMwMTIxZCAxMDA2NDQKLS0tIGEv
cGVybC9saWIvTmVlZFJlc3RhcnQvSW50ZXJwL1B5dGhvbi5wbQorKysgYi9w
ZXJsL2xpYi9OZWVkUmVzdGFydC9JbnRlcnAvUHl0aG9uLnBtCkBAIC00Miw3
ICs0Miw3IEBAIHN1YiBpc2EgewogICAgIG15ICRwaWQgPSBzaGlmdDsKICAg
ICBteSAkYmluID0gc2hpZnQ7CiAKLSAgICByZXR1cm4gMSBpZigkYmluID1+
IG1AL3Vzci8obG9jYWwvKT9iaW4vcHl0aG9uQCk7CisgICAgcmV0dXJuIDEg
aWYoJGJpbiA9fiBtQF4vdXNyLyhsb2NhbC8pP2Jpbi9weXRob24oWzIzXVsu
XGRdKik/JEApOwogCiAgICAgcmV0dXJuIDA7CiB9CmRpZmYgLS1naXQgYS9w
ZXJsL2xpYi9OZWVkUmVzdGFydC9JbnRlcnAvUnVieS5wbSBiL3BlcmwvbGli
L05lZWRSZXN0YXJ0L0ludGVycC9SdWJ5LnBtCmluZGV4IGQwMjk3M2QuLjcy
OTIwZjMgMTAwNjQ0Ci0tLSBhL3BlcmwvbGliL05lZWRSZXN0YXJ0L0ludGVy
cC9SdWJ5LnBtCisrKyBiL3BlcmwvbGliL05lZWRSZXN0YXJ0L0ludGVycC9S
dWJ5LnBtCkBAIC00Miw3ICs0Miw3IEBAIHN1YiBpc2EgewogICAgIG15ICRw
aWQgPSBzaGlmdDsKICAgICBteSAkYmluID0gc2hpZnQ7CiAKLSAgICByZXR1
cm4gMSBpZigkYmluID1+IG1AL3Vzci8obG9jYWwvKT9iaW4vcnVieUApOwor
ICAgIHJldHVybiAxIGlmKCRiaW4gPX4gbUBeL3Vzci8obG9jYWwvKT9iaW4v
cnVieSRAKTsKIAogICAgIHJldHVybiAwOwogfQo=

--=-zVn5lO1Ru0z0LkvUBCfQ--

--=-eocdpC2RCuN2crV9H5tQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQJJBAABCgAzFiEEPWObHgtAaGFEniDEk7pbGfAdPjIFAmKD6vkVHHRob21hc0Bm
aWFza28tbncubmV0AAoJEJO6WxnwHT4yZZsP/37+8CSXP8y1oo/Hx5Z+jRu/Jqpv
5ixGQWTOI3Zwt04X97FKT3GaWczpgkMN7OKUAjO2qBooEaJ61pAw2K+n2VBRlQL2
vBqVVOAzCBYhq2z+4BCetMCaiO+ceuXaMFI2/fZ5wV5Z6Fy/98lmVJx1qfeYbVkk
fCstyKGEg2vzJ93uzTkuHwYQj69SMqobgMsDYKQEQ/+duB5FwY3YML29MVA24RE2
POYeiWaFExg95XZt8Xr244TXNL7jLaT5N7Q9B54JI5JrW6EAD1ucP7myX5QapV2m
vM4dHwYUXDqyRVYfWuyWvy4fKoewQisxDpNBkGzquFuym1dUaXmZyhJqbY/v9ADK
04EaypN2F5uzoQ+aUK7VcCqhUa3PCRYrihzPMeQq9QrISohyfktlhIq4AKxiwVNb
DnckE3IdTU7dawh6ij+aU80RxKkO7TT3v17cKncYXtmYB8DhJtMhRokBWdSBaEeW
r6WyHCYC4jFBRPkb93f/WyJqHIKxEeRRkHFAcio+7uGPut8TbL+IQ2jE50kdt3C7
m/NGPkMhrWgpHEU5aoExKVYB7ZoTaz7shYpFYnGznAC6zfdbI1zTEp08JzdmYIkb
JUwKqj9P2skXTSW29aEfoXbDxrhaWYWuq6FOe2BjxGAN+oWW6d/ybEJdhQ8yK6yZ
2I7IT2K7pS+6hyny
=tEj0
-----END PGP SIGNATURE-----

--=-eocdpC2RCuN2crV9H5tQ--

