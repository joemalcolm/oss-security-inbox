Received: (qmail 13322 invoked by uid 550); 9 Jul 2025 07:32:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12246 invoked from network); 9 Jul 2025 07:32:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1752046360; bh=AlSNmyJVnDg5deDvQwMRioNrDtjyvXHWSjNoTKb83Go=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=UVc1sug0mqtPE4sN+78krjb6R1eHmZ5yAbRJ6beJCKg1FdioFxoLrjo+rZ/7CPnXs
	 411K2gaXpuDkcBXtYpqx3gu0kL+iwKS5WOhIbVYOV2h4R70gWesbMN3stgRYPvvYlO
	 SSjT/P5PnpTEgturt9AP2hom8yUM+JRVjcg/KIOW1QGAevwotaAhWvESiS7naYuWY5
	 YJAsMxRzRLO9D0OmRS7j2iMsDVrx63inE/FX/AsU+J1wrDtcbs/Gc8WfGnJC0FBHwV
	 8dPJ6LhBbOidgiNJ7Y9IQyvEWYp4kszIMCxKeae74G7s4+QntiP7g0V5EsZqqAisdC
	 hHJiYadqGAIGA==
Original-Subject: Opossum attack / Opportunistic HTTP (RFC 2817) insecure
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Wed, 9 Jul 2025 09:32:38 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20250709093238.7a9d50d9@hboeck.de>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Opossum attack / Opportunistic HTTP (RFC 2817) insecure

This is an interesting new attack on some TLS configurations:
https://opossum-attack.com/

It exposes the fact that some protocols support an opportunistic TLS
variant that has a slightly different underlying protocol than the
implicit TLS variant.

The practical impact this has on servers supporting opportunistic
HTTP (RFC 2817) is that a man-in-the-middle attacker can serve a
different file from a server to an HTTPS request.
It may impact other protocols that support STARTTLS, but one would have
to find an exploitable protocol difference.

For any software implementing Opportunistic HTTP / RFC 2817,
particularly on the server side, it is advisable to completely remove
that support to prevent this attack.

Opportunistic HTTP / RFC 2817 is not widely used or supported. It can
be enabled in Apache httpd, according to the Opossum web page,  Apache
plans deprecation of that feature (CVE-2025-49812). The web page also
mentions Icecast and CUPS as "Patch in progress", and Cyrus IMAPD
disabled STARTTLS by default in response to this research.

This shows again that "upgrading" an unencrypted connection to TLS can
be the cause of surprising security issues.
(I've been involved in some research a few years ago showing security
issues in STARTTLS for e-mail, which is a closely related issue:
https://nostarttls.secvuln.info/
)

--=20
Hanno B=C3=B6ck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/
