Received: (qmail 23975 invoked by uid 550); 14 Mar 2023 08:51:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23940 invoked from network); 14 Mar 2023 08:51:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1678783864; bh=kF7BhVILLKN2jXNqbK9G1T/8Ra0WTU9rxQQl040dawE=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=mS8tmU5s9orULAjTnUJbGmOS+yoacLuuMecBxH01GS2cCFaRirWlrYpk5BwMyvQJS
	 XK4Bt3ljBLQkhUQKacgHnUOUBkR6o0noHSc9xacu0CYQvWUfiSzmd2lydBKAgEEuvq
	 AegfsN/Y/VvY1rIJk9kGxtz4qUOEpNf1fUdv9Fv/UoBZVg28CuVXtyOc04aQ4pH4DQ
	 /LCPJ2ibVJkQpW122qIGM0GYuYVvJgw0RefjEsy/NycMuTdrfSqptdLF74YUT8JnDs
	 B9MIJrJf8SOa7AO3s8KTSBRjlb59rHd2cUrYfvRkaXYhdqg/uAMtFISzeckXA+NkMJ
	 OdLEjwwMUgdKA==
Original-Subject: TTY pushback vulnerabilities / TIOCSTI
Author: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Date: Tue, 14 Mar 2023 09:51:03 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20230314095103.1ed76cc0.hanno@hboeck.de>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] TTY pushback vulnerabilities / TIOCSTI

Hi,

This blogpost highlights TTY Pushback vulnerabilities enabled via the
TIOCSTI kernel functionality available in the Linux kernel:
https://www.errno.fr/TTYPushback.html

This has been discussed here previously:
https://www.openwall.com/lists/oss-security/2017/06/03/9

Though I think there are some noteworthy updates. In the 2017 post
solar designer mentioned that the Linux kernel developers have multiple
times rejected changes in the kernel. However this has now changed:
Starting with Kernel 6.2 it is possible to disable TIOCSTI
(unset CONFIG_LEGACY_TIOCSTI). It also appears that very few (or no?)
applications practically use TIOCSTI.

This seems to be the only real mitigation for this issue. It appears
su has a parameter, and in sudo one can configure the creation of a new
pty in the sudoers file. I don't consider these as satisfying fixes, as
they are optinal, and thus rely on the expectation that users are aware
of this risk and manually use these mitigations. That does not seem
realistic to me.

This also affects such a large number of tools, not just
su/sudo-like tools, but also sandboxing tools. E.g. bubblewrap [1] is
affected by this by default.

Thus I strongly recommend that people disable this in the kernel.

[1] https://github.com/containers/bubblewrap/issues/555

--=20
Hanno B=C3=B6ck
https://hboeck.de/
