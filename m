X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4625" "Monday" "2" "November" "2020" "12:34:29" "-0500" "Phil Pennock" "oss-security-phil@spodhuis.org" "<20201102173429.GA1527710@fullerene.field.pennock-tech.net>" "179" "[oss-security] [CVE-2020-26521][CVE-2020-26892] NATS JWT vulnerabilities" nil nil nil "11" "2020110217:34:29" "[oss-security] [CVE-2020-26521][CVE-2020-26892] NATS JWT vulnerabilities" (number mark "U       oss-security Nov  2  179/4625  " thread-indent "\"[oss-security] [CVE-2020-26521][CVE-2020-26892] NATS JWT vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-26521][CVE-2020-26892] NATS JWT vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13696 invoked by uid 550); 2 Nov 2020 18:04:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18232 invoked from network); 2 Nov 2020 17:34:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202008; h=OpenPGP:Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References:OpenPGP:Organization;
	bh=F2Do+5dWIeknE3Mp2z8RtDvXat3jVWuaKoJvKqAGVZc=; t=1604338486; x=1605548086;
	 b=x+XKq6B74GMEnsangwQrzY5q6Jm1Pc4uIO/wrJ+kpdY5nS2Y++rnDkloT4Cr2acLZ4hvZCvdB7
	sP82uP8eNlKi8m3jrT0QpQgHA/N6VUm2dB65Q9qMP0BPSZ9PO05N6f8bIbFMahle0XZSO6Oc+hr7S
	qWIrMKMhJGqV1gS9CcJJ6H1G873NKKcnSbpOlwCfagOdZoC3YA86aoY7YBGOM+dbrwYQAnGAkRnop
	UZZdAJwcHbaCxHU3B1VIFREBzIoezaZzv3WYhHbT0O3swpPy0Wbr2FvMX6OdlPklaRBQrgFPfhCFO
	t1CCBTJ3BLguLYmQAE4NwN8dLY3jv8fx3SnIA==;
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202008e2; h=OpenPGP:Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References:OpenPGP:Organization;
	bh=F2Do+5dWIeknE3Mp2z8RtDvXat3jVWuaKoJvKqAGVZc=; t=1604338486; x=1605548086;
	 b=Ol9apkalbpuwG1XP2dv/0w6SsZ1jQiw8JXAxV7FM+iMUJkxANYGpdrVqEj/2Q45MdokX1PMkug
	O+svEWr1P/AQ==;
Date: Mon, 2 Nov 2020 12:34:29 -0500
From: Phil Pennock <oss-security-phil@spodhuis.org>
To: oss-security@lists.openwall.com
Cc: Phil Pennock <pdp@synadia.com>
Message-ID: <20201102173429.GA1527710@fullerene.field.pennock-tech.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EuxKj2iCbKjpUGkD"
Content-Disposition: inline
OpenPGP: url=https://www.security.spodhuis.org/PGP/keys/keys-2013rsa-2020cv25519.asc
Subject: [oss-security] [CVE-2020-26521][CVE-2020-26892] NATS JWT vulnerabilities

--EuxKj2iCbKjpUGkD
Content-Type: multipart/mixed; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Folks,

The NATS project has a new advisories website:
  <https://advisories.nats.io/>

We also have two new CVEs; both relate to our JWT handling and both
affect the NATS server:

* CVE-2020-26521
  + Nil deref in JWT library, causing Go panic
  + NATS server upgrade required to avoid Denial-of-Service
  + 2020-11-02
* CVE-2020-26892
  + Incorrect credential expiration handling via JWT library
  + API fixes needed by library users
  + NATS server upgrade required for expiration to work
  + 2020-11-02

The text of our advisories should be attached.

We have just released NATS server 2.1.9 which includes the fixes for
both these issues.

Regards,
-Phil Pennock

--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline; filename="CVE-2020-26521.txt"

Subject: Nil dereference in NATS JWT, DoS of nats-server

CVE: CVE-2020-26521

Background:

NATS.io is a high performance open source pub-sub distributed communication
technology, built for the cloud, on-premise, IoT, and edge computing.
The server is written in Go and there are client libraries in many languages
and frameworks.

The nats-io JWT library provides the handling for JWTs common to the NATS.io
projects.


Problem Description:

The NATS account system has an Operator trusted by the servers, which
signs Accounts, and each Account can then create and sign Users within
their account.  The Operator should be able to safely issue Accounts to
other entities which it does not fully trust.

A malicious Account could create and sign a User JWT with a state not
created by the normal tooling, such that decoding by the NATS JWT
library (written in Go) would attempt a nil dereference, aborting
execution.

The NATS Server is known to be impacted by this.


Affected versions:

JWT library:
 * all versions prior to 1.1.0

NATS Server:
 * Version 2 prior to 2.1.9


Impact:

JWT library:
 * Programs would nil dereference and panic, aborting execution by default.

NATS server:
 * Denial of Service caused by process termination


Workaround:

If your NATS servers do not trust any accounts which are managed by
untrusted entities, then malformed User credentials are unlikely to be
encountered.


Solution:

Upgrade the JWT dependency in any application using it.

Upgrade the NATS server if using NATS Accounts.


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline; filename="CVE-2020-26892.txt"

Subject: Incorrect handling of credential expiry by NATS Server

CVE: CVE-2020-26892

Background:

NATS.io is a high performance open source pub-sub distributed communication
technology, built for the cloud, on-premise, IoT, and edge computing.
The server is written in Go and there are client libraries in many languages
and frameworks.

The nats-io JWT library provides the handling for JWTs common to the NATS.io
projects.


Problem Description:

NATS nats-server through 2020-10-07 has Incorrect Access Control because of how
expired credentials are handled.

The NATS accounts system has expiration timestamps on credentials; the
<https://github.com/nats-io/jwt> library had an API which encouraged misuse and
an IsRevoked() method which misused its own API.

A new IsClaimRevoked() method has correct handling and the nats-server has been
updated to use this.  The old IsRevoked() method now always returns true and
other client code will have to be updated to avoid calling it.

The CVE identifier should cover any application using the old JWT API, where
the nats-server is one of those applications.


Affected versions:

JWT library:
 * all versions prior to 1.1.0
 * fixed after nats-io/jwt PR 103 landed (2020-10-06)

NATS Server:
 * Version 2 prior to 2.1.9
   + 2.0.0 through and including 2.1.8 are vulnerable.
 * fixed with nats-io/nats-server PRs 1632, 1635, 1645


Impact:

Time-based credential expiry did not work.


Workaround:

Have credentials which only expire after fixes can be deployed.


Solution:

Upgrade the JWT dependency in any application using it.

Upgrade the NATS server if using NATS Accounts.

--vtzGhvizbBRQ85DL--

--EuxKj2iCbKjpUGkD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSpb2i1s4FmGYGL+VvhPiXtYNF+awUCX6BDHAAKCRDhPiXtYNF+
a5xIAP4msPcuBXfb+f2KJuW9b0jXZjTmrAAcTmQvK23eAKDMcgEAjJXKeQKft+Sy
Rb/gjx3CJQESRz5GZuYiGUlCcgjImQ4=
=Elyf
-----END PGP SIGNATURE-----

--EuxKj2iCbKjpUGkD--
