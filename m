Received: (qmail 7335 invoked by uid 550); 2 Apr 2025 22:51:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24553 invoked from network); 2 Apr 2025 21:37:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eurephia.org;
	s=protonmail3; t=1743629810; x=1743889010;
	bh=2oTNNq0lV0dCTL9wb9/C+Jy+3Brxu/C+Tt0qdx1NEpc=;
	h=Message-ID:Date:From:To:Subject:From:To:Cc:Date:Subject:Reply-To:
	 Feedback-ID:Message-ID:BIMI-Selector:List-Unsubscribe:
	 List-Unsubscribe-Post;
	b=WyFV/Y6w8rllakGTEXbUXei7L0y/ZlDlPR7F5TLyxRcXF+yiNEFqXclgArRjMCFwp
	 1zzLsYrKb/QLTzhyPz2OYkr0RTIwcdJoU244YV9FYFNcQSrNra1S0vB3Qwspo7AXVg
	 CAPjZasKZ1a8xhDz1s9dxCEntXxbGOGag9EAo32HmkeDzpqgKdT1olZlQvLDeup0fY
	 rlJL8MFulMx1G5ytEyrhm3ZBbLqLiUCT7gcCe4aj88PjmVc3p31PswrRXOGA1qfWMR
	 MSRlTiguato/QgGyyqMAFJ4DTRi8O6ji09sfbxHBp46PfWKdPSoow2+oTFq1pHMKeL
	 cv1CCK7o636Zw==
X-Pm-Submission-Id: 4ZSdVT2HdFz4wwyS
Message-ID: <3a86b9b8-ec83-41c6-8900-395712914eab@eurephia.org>
Date: Wed, 2 Apr 2025 23:36:41 +0200
MIME-Version: 1.0
User-Agent: Betterbird (Linux)
From: David Sommerseth <dazo@eurephia.org>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=dazo@eurephia.org; keydata=
 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
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------BrXJUTIOccAESaWMQRLlAVjT"
Subject: [oss-security] CVE-2025-2704 - OpenVPN 2.6.1 through 2.6.13 with possible DoS

--------------BrXJUTIOccAESaWMQRLlAVjT
Content-Type: multipart/mixed; boundary="------------vtXm2uFkLuAdCcW0dlRNL9P4";
 protected-headers="v1"
From: David Sommerseth <dazo@eurephia.org>
To: oss-security@lists.openwall.com
Message-ID: <3a86b9b8-ec83-41c6-8900-395712914eab@eurephia.org>
Subject: CVE-2025-2704 - OpenVPN 2.6.1 through 2.6.13 with possible DoS

--------------vtXm2uFkLuAdCcW0dlRNL9P4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


The OpenVPN community has released OpenVPN 2.6.14 which includes a
critical security fix.

This issue is fixed in OpenVPN 2.6.14 which has been released today.

-----------------------------------------------------------------
CVE-2025-2704: Fix possible ASSERT() on OpenVPN servers
               using --tls-crypt-v2

OpenVPN servers between 2.6.1 and 2.6.13 using --tls-crypt-v2 can be
made to abort with an ASSERT() message by sending a particular
combination of authenticated and malformed packets.

To trigger the bug, a valid tls-crypt-v2 client key is needed, or
network observation of a handshake with a valid tls-crypt-v2 client key.

No crypto integrity is violated, no data is leaked, and no remote code
execution is possible.  This bug does not affect OpenVPN clients.

(Bug found by internal QA at OpenVPN Inc)
-----------------------------------------------------------------

<https://community.openvpn.net/openvpn/wiki/Downloads#OpenVPN2.6.14--Releas=
ed02April2025>
<https://community.openvpn.net/openvpn/wiki/CVE-2025-2704>
<https://www.cve.org/CVERecord?id=3DCVE-2025-2704>

--=20
kind regards,

David Sommerseth
OpenVPN Inc

--------------vtXm2uFkLuAdCcW0dlRNL9P4--

--------------BrXJUTIOccAESaWMQRLlAVjT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEnylUfHhQTb0DHdN4iHbdgDNp7xQFAmftrekACgkQiHbdgDNp
7xTAAw/8DqbdTu/2Lhc+h3OdU+m+y54bBdIpeVdY4YTX41s5zkXyjAGZB66ko4JZ
gqaYm5FFRhgUm/GuRrdZvdNlnWFtIo7XrKdmoIpKJCKgtCtWVERUlRontqKXGRxL
+O87TVlROSFLSyRQd7hg1qwvSTdDaCsR9+X/jgwjJNK3AFcm/jLFzcv+D/Uxdk7m
EwO300U/47wQ6C9VetYr4lqV6gclLQEod0he1i5L58q/YWSWbvEKcHkaOVFdX7xM
F27S46NicUcsPuTdsBvLJeQHv6vc4YvJrPan/IqI5gb1PkJs2xMPoGvxRg5kSHX6
SwLJEUg4DQgYA6hgnzKrpGJEyqdQiXYnThAz6KN/D4nHdKODvYEWjooSNXoeXaiO
7/E/+QinH/JyQdbjdFX8Acj77qf/4mcL2ADy1KyhDOAyqjWac1O4NTqw6jNSMoye
+N7NJGhi2lSGCsIbHkjlwp3ETQrdyr4L/5gmzxWhFQGMVlFum9CWdkDpqam4VNCo
mAmNlH164HJhaKpIoepYeR4CPaJ9UZ0z3PnGni8TvY0pFcdIsedDFsRz/rCx3ciF
GwJfyMr0zYELYC/bPw02s90lYVxy2lcd55lipXSlrACcyi26chLKtQtl2PdFNfsm
X0XA7rbUI6XhLiTocf5pQP+cG13VxQzezFbrEPdFMbDkb3G9y8s=
=XQ/M
-----END PGP SIGNATURE-----

--------------BrXJUTIOccAESaWMQRLlAVjT--
