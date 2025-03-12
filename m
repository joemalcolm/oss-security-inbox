Received: (qmail 31803 invoked by uid 550); 13 Mar 2025 01:15:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18123 invoked from network); 12 Mar 2025 20:58:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=michel-slm.name;
	 h=cc:content-type:content-type:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:subject:subject:to:to; s=fm1;
	 t=1741813079; x=1741820279; bh=aYc0BDJH6YvJ3r7VZyW6psqkll9yfpQG
	jKyagywStU8=; b=JHuB71zdauRMK8KmDZTECxPMeGImzZr0ETV/xi1s6UW7GgNZ
	it969r/bh2G0wePw78KzE2E9nCFQ/138d0ywPwcFBixvxlItxwxMOjeiG6L7Ry7A
	SXs2BOeqvm24EN89p/HpKnN+wlWkvOZWsSsyQc0qKL10F99Z/tQ56clo99uJmG5/
	uXfkzZsj3Eu7nt9hqRLyljYtekCE9I3dwHa/TmioRv+xVYjxJukMIJ9EOFYl/q4q
	XKNEEeyk3JZz7vDNUUdu/H8zTPu72RTiUQJbJ3/OmjV4tY+uzGKZJglBr/FYw6rH
	ha7Mev8dzvzDrmUqD8ScjH1mTK1Ibz8+f79+PQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1741813079; x=
	1741820279; bh=aYc0BDJH6YvJ3r7VZyW6psqkll9yfpQGjKyagywStU8=; b=S
	17ULdSqZCseF88HsTOZE2VdxOwEKkXIYLSsiNjqp+ID3+B0sqR++qsXGJV4BvxDC
	dN196cd9TDDlX6gyytozO5hQ7yxb/2muOAvTlHr6ywxYsDCc8drq2zHfKLfpbWrd
	va+WSPO848RTRKNoz30M7/Eq36bCIIKb4mNmZ2mDd+uhOOED8ua2strCOngmIROh
	40ZnIBqnPrPcsXE3+IeboHviaCkhKhqpaR8k0QPUl9Nula7h2Evm231v+VUwd5kS
	J4IAHdzweUnarYUBAkGGGhvUZIx3bB+pEw5IBSdkIZi0PZuV2UwkcPwSEUANSmpO
	AnqdJ9jnn/Tjnd8S7B4ZA==
X-ME-Sender: <xms:VvXRZ5jBHj4ff7sKmDWiwKmigtzBGA6MAjg7DjKoNsjXyEn-2nHy-w>
    <xme:VvXRZ-AZHaX9CPdvu7BDLS05Y4xNh6G8mcpqAXPjPbLmz7bV59S0F3jhGc1wWatws
    0maZYDfHf67YULnrMo>
X-ME-Received: <xmr:VvXRZ5Gcg4Q7AAIMEXzKc5ZrzaTNRKQhqRw-F3uUqaD7QDudPxUyP3JDhGlvMKcRGw1rU-CfXAxpc7rohSc6QNFgxJEinzp2xezUBQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdduvdeitdelucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
    pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefkuf
    fhvffftggfggesghdtreertderjeenucfhrhhomhepofhitghhvghlucfnihhnugcuoehm
    ihgthhgvlhesmhhitghhvghlqdhslhhmrdhnrghmvgeqnecuggftrfgrthhtvghrnhepve
    fhleejuefgffegvdfhuefhgedugfehgeevgfduteevffefgffgtedtgeeltddvnecuffho
    mhgrihhnpehfrggtvggsohhokhdrtghomhdpfhhrvggvuggvshhkthhophdrohhrghdprh
    gvphholhhoghihrdhorhhgpdhkvgihohigihguvgdrohhrghdpfhgvughorhgrphhrohhj
    vggtthdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpehmihgthhgvlhesmhhitghhvghlqdhslhhmrdhnrghmvgdpnhgspghrtghpthht
    ohepuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepohhsshdqshgvtghurhhith
    ihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:VvXRZ-RbQwPCMGjTaY4Pmk8nino-o5_ISwQvgvoOJpJV-rH10m2DrQ>
    <xmx:V_XRZ2y8sJLd0Wy3gomf5oQw8Vmtlmuoer_Jfv6YuBV4JxL54mM8GA>
    <xmx:V_XRZ07e_xrLrE9wP2oMPUGuWnd3odVpAYOLC5PQXVe0u3FpEJJ59Q>
    <xmx:V_XRZ7xMMWf1AoZdmxi9JZnpXQ8y8X2-Q0SFXEAUEtu0isyDggOH1g>
    <xmx:V_XRZ1_HfAug3N1whkjKGWmy538DcMtvU3zJOstsICODkhKDTWV_IIWn>
Feedback-ID: i71264891:Fastmail
Message-ID: <fccc1170fe964f6f5b68a9211959f24a9ee4bc53.camel@michel-slm.name>
From: Michel Lind <michel@michel-slm.name>
To: oss-security@lists.openwall.com
Date: Wed, 12 Mar 2025 15:57:55 -0500
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-0K5Q4R2WugDnlZuC5b/J"
User-Agent: Evolution 3.52.4 (3.52.4-2.el10_1) 
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27363: out of bounds write in FreeType <= 2.13.0

--=-0K5Q4R2WugDnlZuC5b/J
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

severity: high (CVSS 3.1: 8.1)

Affected versions: <=3D 2.13.0

Description:

An out of bounds write exists in FreeType versions 2.13.0 and below
when attempting to parse font subglyph structures related to TrueType
GX and variable font files. The vulnerable code assigns a signed short
value to an unsigned long and then adds a static value causing it to
wrap around and allocate too small of a heap buffer. The code then
writes up to 6 signed long integers out of bounds relative to this
buffer. This may result in arbitrary code execution. This vulnerability
may have been exploited in the wild.

https://www.facebook.com/security/advisories/cve-2025-27363

This commit fixes most of the issue - except `limit` is still signed
short - but needs to be redone if you're backporting to 2.10.4

https://gitlab.freedesktop.org/freetype/freetype/-/commit/ef636696524b081f1=
b8819eb0c6a0b932d35757d

Per repology some Linux distributions are affected

https://repology.org/project/freetype/versions

- Amazon Linux 2
- Debian stable / Devuan
- RHEL / CentOS Stream / Alma Linux / etc. 8 and 9
- GNU Guix
- Mageia
- OpenMandriva
- openSUSE Leap
- Slackware
- Ubuntu 22.04

(The list above might not be exhaustive)

Best regards,

--=20
 _o) Michel Lind
_( ) identities:
https://keyoxide.org/5dce2e7e9c3b1cffd335c1d78b229d2f7ccc04f2
     README:     https://fedoraproject.org/wiki/User:Salimma#README

--=-0K5Q4R2WugDnlZuC5b/J
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iI0EABYKADUWIQRdzi5+nDsc/9M1wdeLIp0vfMwE8gUCZ9H1UxccbWljaGVsQG1p
Y2hlbC1zbG0ubmFtZQAKCRCLIp0vfMwE8tvUAQCQVgLrr4Ds7/UYdiZdTKnGsEcC
EVLoDXKss2Qf9j7VzAD/SHBcjPwy0EqRGR9mt06VcjbBjWlZqUJrhrA0uV+Hpw4=
=6Z7n
-----END PGP SIGNATURE-----

--=-0K5Q4R2WugDnlZuC5b/J--
