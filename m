X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4287" "Tuesday" "18" "January" "2022" "17:05:50" "+0100" "Jonas =?ISO-8859-1?Q?Sch=E4fer?=" "jonas@wielicki.name" nil "115" "Re: [oss-security] Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE request)" "^Date:" nil nil "1" nil nil (number mark "        jonas@wielic Jan 18  115/4287  " thread-indent "\"Re: [oss-security] Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE request)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE request)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13806 invoked by uid 550); 18 Jan 2022 16:10:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11373 invoked from network); 18 Jan 2022 16:06:06 -0000
Message-ID: <11490321.fexurL4tql@sinistra>
In-Reply-To: <2193597.LkMCQtBBq3@sinistra>
References: <2193597.LkMCQtBBq3@sinistra>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart117327150.TlEPBbCckS"; micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 18 Jan 2022 17:05:50 +0100
From: Jonas =?ISO-8859-1?Q?Sch=E4fer?= <jonas@wielicki.name>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE request)
To: oss-security@lists.openwall.com

--nextPart117327150.TlEPBbCckS
Content-Type: multipart/mixed; boundary="nextPart2485304.1A1Fsjyur4"; protected-headers="v1"
Content-Transfer-Encoding: 7Bit
From: Jonas =?ISO-8859-1?Q?Sch=E4fer?= <jonas@wielicki.name>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE request)
Date: Tue, 18 Jan 2022 17:05:50 +0100
Message-ID: <11490321.fexurL4tql@sinistra>
In-Reply-To: <2193597.LkMCQtBBq3@sinistra>
References: <2193597.LkMCQtBBq3@sinistra>

This is a multi-part message in MIME format.

--nextPart2485304.1A1Fsjyur4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Donnerstag, 13. Januar 2022 15:01:11 CET Jonas Sch=C3=A4fer wrote:
> A remote unauthenticated denial of service / resource exhaustion attack w=
as
> discovered in all Prosody servers with WebSockets enabled and publicly
> accessible.
>=20
> Upstream builds have been started and should be available shortly. The
> closely related Snikket project will publish new images shortly, too. Jit=
si
> Meet have been informed ahead of time.
>=20
> Please see the below advisory for full information.

As promised, attached you'll find instructions for probing for the=20
vulnerability.

kind regards,
Jonas=

--nextPart2485304.1A1Fsjyur4
Content-Disposition: attachment; filename="instructions.md"
Content-Transfer-Encoding: 7Bit
Content-Type: text/markdown; charset="UTF-8"; name="instructions.md"

To test for a vulnerable websockets endpoint at URL
wss://xmpp.domain.example/xmpp-websocket, use the following
instructions:

1. Install `websocat` or any other tool you can use to interact with a
   WebSocket (this guide uses `websocat` for simplicity):

   cargo install websocat

2. Put the string 

   ```
   <!DOCTYPE open []><open xmlns='urn:ietf:params:xml:ns:xmpp-framing' id='' version='1.0' xml:lang='en'/>
   ```

   into a file (here called `req.xml`), without the ``` delimiters:

3. Run:

   websocat --protocol xmpp --text wss://xmpp.domain.example/xmpp-websocket - < req.xml

IF VULNERABLE:

  The response should include an XML element named `improper-addressing`, for instance:

  ```
  <open xmlns='urn:ietf:params:xml:ns:xmpp-framing' id='' version='1.0' xml:lang='en'/>
  <stream:error xmlns:stream='http://etherx.jabber.org/streams' xmlns='jabber:client'><improper-addressing xmlns='urn:ietf:params:xml:ns:xmpp-streams'/><text xmlns='urn:ietf:params:xml:ns:xmpp-streams'>A &apos;to&apos; attribute is required on stream headers</text></stream:error>
  <close xmlns='urn:ietf:params:xml:ns:xmpp-framing'/>
  ```

IF PATCHED:

  The response should include a `not-well-formed` XML element, for
  instance:

  ```
  <open version='1.0' id='' xmlns='urn:ietf:params:xml:ns:xmpp-framing' xml:lang='en'/>
  <stream:error xmlns:stream='http://etherx.jabber.org/streams' xmlns='jabber:client'><not-well-formed xmlns='urn:ietf:params:xml:ns:xmpp-streams'/></stream:error>
  <close xmlns='urn:ietf:params:xml:ns:xmpp-framing'/>
  ```

ANY OTHER RESPONSE may indiciate a problem with the execution of these
instructions or an unexpected version of components and is not
conclusive!

--nextPart2485304.1A1Fsjyur4--

--nextPart117327150.TlEPBbCckS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEG/EPV+Xzd5wEoQQIwGIDJZdiWIoFAmHm5V4ACgkQwGIDJZdi
WIpvMA//Uo9vVd9f6HcDGNFWnilj3Zosr+L0oPdDAb+e9ZZ8DbPjC8DUCDkb5Z1r
h2gMxJWsWvunA0Ub4dvsvF10VZaSQheKdv4bAOIP5YEDb1frBv/Gy71EUQTK/UqG
jrbxmQCh8PoR8PREUFZVdwqFddHCbHV283aDYirLYEtcPfaQXroLSQBE/LgLkKOS
INjdQQeyNri5Rdx3qpzYW1K6GtVbYlHGAtIgaYlXqYEHUbg7fAjjfzdnyZDXKjB4
Hu7fQgFQVraa1hjzs6qUKGZfWlayRpQDs0v7x/e7g3NkI3SADhT803D6mj/RsEE5
yUwD6eaTD8BBGPjdoiSQ13V95ohe/d6ApurUmhMpWkc7S5xaLsRVUdJ8cY837V3n
qkGARKelGlZ3+QUnl49KD5ADt0/3bCSikreKnkVxl61iTt8X8U1uNcklc5tDIko1
Jn8ysmrfq/CL12Mt/zf51hecu0x5Xo35ktYtDtLoqOrgMH8njOAzyYtPW3hzBBtw
OsnOBekwm8qfNUPyHVzjadhyybh5IEKntvoOcWEUBImzQxesC19+tECgc06e76KS
5zExowUuHyrW05xDl4OJkl7Fsb2huifQ4pn7saRhCR5e7PNxL0pfoHmCoU4YpbZQ
mM2OUOmrTeFyIfOFbXOfCy5kNkdsJESzfJVCM71OhnxJAXXa5xE=
=RqnN
-----END PGP SIGNATURE-----

--nextPart117327150.TlEPBbCckS--



