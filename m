Received: (qmail 27998 invoked by uid 550); 26 Oct 2025 07:30:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27951 invoked from network); 26 Oct 2025 07:30:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1761463834; bh=ez2Px8XCMN8mxduAxuipN8zKXTVGrs6eZmpGOo6PRXg=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=cFwuGqn5YkcSB/AdOw5lXbRDsHyTJSFKbqBUZrMy1gkWR1p6Np/66fsbQzVdSn3RL
	 tLedIHQ0+NBBBwTF40g0Qfm6S5x9VKUybzQRSej04B47MLPkyMfsAwua6jUEFUxa25
	 j+TmBzyEE4vRX2o5h41h7xQCquwPOFny2A1MBjdmZlKEHz9NSThO2B0UssaXRz+5yZ
	 dgLL+QvKljimMDxwQ7z2oasjGb4QNyATwrKhdm1uIFZ9XSgxWAoQijT+k7eiKGL4yr
	 x7EoNBtGE6EgUCwEHqgKNmlPhDZO0ZUqSLOCUgiJJDX9eD6EV2fGbAaA50+txR4uKF
	 l+rxx6+9Cy1jA==
Original-Subject: OOB read / segfault and endless loop in courier mail server 1.5.0
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Sun, 26 Oct 2025 08:30:33 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20251026083033.623f1f4b@hboeck.de>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] OOB read / segfault and endless loop in courier mail server 1.5.0

Hi,

I have recently reported two issues in the courier mail server's MIME
parsing. The parser code is also used by courier-imap, sqwebmail,
maildrop, and cone.

Malformed inputs can crash or cause an endless loop. In my tests, both
issues only affected courier 1.5.0, 1.4.x versions are unaffected.
Version 1.5.1 contains a fix.

These issues can be triggered by passing the base64-encoded samples
below to the reformime commandline tool:
reformime -r < [poc]

Segfault / OOB read in rfc822::address::unicode_name:
TWltZS1WZXJzaW9uOjEuCkNvbnRlbnQtVHlwZTptdWx0aXBhcnQ7Ym91bmRhcnk9PQoKLS09CkZy
b206MFw9Pzw=3D

Endless loop / hang:
Q29udGVudC1UeXBlOiCAAA=3D=3D

I have not tested whether it is possible to trigger these remotely via
SMTP or IMAP.

I had reported this to courier developer Sam Varshavchik on 2025-10-23.
Fixed versions of courier and the other affected packages were released
on the same day [1].



[1] https://sourceforge.net/p/courier/mailman/message/59250695/
--=20
Hanno B=C3=B6ck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/
