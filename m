Received: (qmail 24268 invoked by uid 550); 22 Apr 2024 10:52:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24237 invoked from network); 22 Apr 2024 10:52:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1713783138; bh=wqMD1M+WVviKuapF3UBStUgqohTKRDe0QM2IL+OPt7k=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=DLjmsx8ekTVCt59ODJU1c0SR08Hnz1VkZA1RRhY6HwF5FqSHUvo5xgijL8NeUn+1G
	 cfRNaLi9C69QC+Aut427PGZEtRBAwI7vs2DZQ7+6ChpKVEJZrgx73ii9yzTsfRI1R3
	 OsSQy3r7SAoJgUEL+toJ9xeaTWkepS+U+bc218a4whN6pv8zyCIICrD+mNQ5HvFnbW
	 NZDA7oZQJ0TBO4G1ccy2kRdEqL9OWX3c1qyiUAdpeelJJbGVbtV0HHvbvUUj/vXsOo
	 oMt9j3JJ/vGTnlXsH2AWD9zChjVQDkEcPBfcjmdiszcqBTZFZ2nNCkKwHZnr2ZY9w0
	 H/cniXjU/5xHg==
Original-Subject: Wordpress Responsive theme: arbitrary HTML content injection
 (CVE-2024-2848)
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Mon, 22 Apr 2024 12:52:17 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20240422125217.7eb0c5f0.hanno@hboeck.de>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Wordpress Responsive theme: arbitrary HTML content injection
 (CVE-2024-2848)

A Wordpress theme called "Responsive" had a vulnerability that allowed
injecting arbitrary content into the page's footer. This is fixed in
version 5.0.3.

There are active attacks exploiting this vulnerability, redirecting
page visitors to malicious websites.
If you have to cleanup an affected installation, the attack can, as
far as I understand, only set the "footer-copyright" option stored
in the options table (usually wp_options). So you can check
the fielt with option_name=3Dfooter-copyright and remove any malicious /
spammy content.

Advisory:
https://github.com/advisories/GHSA-8vpf-jx6q-39fr

Quote:
"The Responsive theme for WordPress is vulnerable to unauthorized
modification of data due to a missing capability check on the
save_footer_text_callback function in all versions up to, and
including, 5.0.2. This makes it possible for unauthenticated attackers
to inject arbitrary HTML content into the site's footer."

Upstream changelog:
https://themes.svn.wordpress.org/responsive/5.0.3/changelog.txt
"(28/03/2024) =3D Fix - Version 5.0.3
[...]
[!] =3D Fixed =3D Fixed the vulnerability of unauthorized modification of
footer text."

The latest version 5.0.3.1 contains another possibly relevant note in
the changelog:
"(17/04/2024) =3D Fix - Version 5.0.3.1
[!] =3D Fixed =3D Enhanced Security: Strengthened the codebase to further
protect your website."

I have not verified whether this is another vulnerabiltiy or just
additional hardening.

--=20
Hanno B=C3=B6ck
https://itsec.hboeck.de/
