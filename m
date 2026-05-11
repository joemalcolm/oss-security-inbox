Received: (qmail 3484 invoked by uid 550); 11 May 2026 14:58:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15892 invoked from network); 11 May 2026 07:25:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1778484347;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=AxBZMExAuPOrdDvtPE4siw4tTG6LohpnS02HZlHnVRs=;
	b=w+3OkLcQHvN1TaJl4tDVLUpRXpcPUTLvLjbnm9WSFzlSGDvNae4ItJf4JT2VDSR/KWZnKQ
	0tCPnYpOA9U38YnZJLyoE4JXxU0Hf8yrvxXuX3+4YrYebZ2udA7CtDfVnf0o64uGb8ARy5
	b4GHyoyCvKit1QfIn7lENDEkp7fulybGu92n+ECaJFkVje3NEOdYQqOrL0WQYnRSrOztUH
	SMbBrC7zIkFs+KrBmBLGd86eFHpSj1LKe0uhr0jwUmaE8Ro3tsdcuRzZr7hsL5EjluxNfr
	2gFeZG7V2S0SvE6F6RylgUis+/Ljuc89jFiRwo/nT5SPTqTqBApxO8qVQGlbww==
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <A7758CF9-10E3-4268-8D53-3B68828B2146@stig.io>
Date: Mon, 11 May 2026 09:25:34 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2026-5084: WebDyne::Session versions through 2.075 for Perl
 generates the session id insecurely

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2026-5084                                        CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2026-5084
  Distribution:  WebDyne
      Versions:  through 2.075

      MetaCPAN:  https://metacpan.org/dist/WebDyne
      VCS Repo:  https://github.com/aspeer/WebDyne


WebDyne::Session versions through 2.075 for Perl generates the session
id insecurely

Description
-----------
WebDyne::Session versions through 2.075 for Perl generates the session
id insecurely.

The session handler generates the session id from an MD5 hash seeded
with a call to the built-in rand() function. The rand function is
passed a maximum value based on the process id, the epoch time and the
reference address of the object, but this information will have no
effect on the overall quality of the seed of the message digest.

The rand function is seeded by 32-bits and is predictable. It is
considered unsuitable for cryptographic purposes.

Predictable session ids could allow an attacker to gain access to
systems.

Note that WebDyne::Session versions 1.042 and earlier appear to be in
separate distributions from WebDyne.

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

References
----------
https://metacpan.org/release/ASPEER/WebDyne-2.075/source/lib/WebDyne/Sessio=
n.pm#L120
https://webdyne.org
https://security.metacpan.org/docs/guides/random-data-for-security.html

