Received: (qmail 1047 invoked by uid 550); 17 Mar 2023 10:00:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1028 invoked from network); 17 Mar 2023 10:00:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=MiJ18HmMO00Ht0qupH70+wMOxPHVM1NmRRdEvduKVKg=; b=jSckvWO62HPxcmInzLR2iXIPMC
	54Yf/85lOe9WSLBYKkwm8v0EqYBoDeKw5mU3ZkMYEdM4vt5Hy26a0Cq4cdZYWvoJPHhyC0SyGAJAr
	R5xi+eREzVDBuELgOYXeqk7p9FZUgRrT5nY5+u8mN3n3DZXutIOnkuUmtrkJrWQ52fX/wX06Fip0O
	0ojDGpKjn4Cta69TVB8aL+xRndKGwvzZYFm3hqnb91r4TZkvmzVg+Z2i8FUuktlOohqZUHZdkrtAB
	K3JNIk7XUN6P3ze0qyoUBXoTM0aJnl46S6QHHTaYgkHbrogMnQ8Pw05Nl4nqZOJQXJ8rpq7aSurFW
	Hr9uoeqw==;
Date: Fri, 17 Mar 2023 10:00:04 +0000
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZBQ6JP/k/Czqm9S9@momentum.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Debian-User: smcv
Subject: [oss-security] flatpak: CVE-2023-28101: escape characters in metadata can hide app
 permissions in terminal

https://github.com/flatpak/flatpak/security/advisories/GHSA-h43h-fwqx-mpp8
Vulnerable: all < 1.10.8, 1.12.x < 1.12.8, 1.14.x < 1.14.4, 1.15.x < 1.15.4
Fixed: 1.15.4, 1.14.x >= 1.14.4, 1.12.x >= 1.12.8, 1.10.x >= 1.10.8

Flatpak is a system for building, distributing, and running sandboxed
desktop applications on Linux.

When installing or upgrading a Flatpak app using the flatpak(1) CLI,
the user is normally shown any special permissions that the new app has
in its metadata, so that they can make a somewhat informed choice about
whether to allow its installation.

Ryan Gonzalez discovered that malicious Flatpak app maintainers could
manipulate or hide this display of permissions by requesting permissions
that include ANSI terminal control codes or other non-printable characters.
This was fixed in Flatpak 1.14.4, 1.15.4, 1.12.8 and 1.10.8 by displaying
non-printable characters in an escaped format (\xXX, \uXXXX, \UXXXXXXXX)
so that they do not alter the terminal's behaviour, and also by treating
non-printable characters in certain contexts as invalid (not allowed).

Mitigation: graphical frontends for libflatpak, like GNOME Software and
KDE Plasma Discover, are not directly affected by this. When retrieving an
app's permissions to show to the user, the graphical frontend continues
to be responsible for filtering or escaping any characters that would
have a special meaning for its GUI libraries.

Workaround: use a GUI like GNOME Software rather than the command-line
interface, or only install apps whose maintainers you trust.
