X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/25/2
Message-ID: <4a4c52f0-8135-41fe-9f50-8d5f40f73529@oracle.com>
Date: Tue, 24 Nov 2026 18:51:33 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Fwd: GNU Screen v.5.0.3 is released, a security fix release
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	GNU Screen v.5.0.3 is released
Date: 	Wed, 25 Nov 2026 00:27:46 +0100
From: 	Alex Naumov <alexander_naumov@...nsuse.org>
To: 	screen-devel@....org, screen-users@....org, info-gnu@....org

I'm glad to announce the new GNU Screen release.

Screen is a full-screen window manager that multiplexes a physical terminal 
between several processes, typically interactive shells.

5.0.3 is a security fix release. It includes only a few code fixes, types and 
security issues. It doesn't include any new features.

List of fixes:
* Fix use-after-free in FreeWindow() when a window has several
* Fix uninitialized buffer with padding escapes
* Restore rendition attribute modifiers (bug #67154)
* Fix off-by-one in resize CheckMaxSize guard
* Encoding fixes
* Manpage: correct rendition syntax and examples
* Security: add SocketPath size check

Release (official tarball) will be available soon for download:
https://ftp.gnu.org/pub/gnu/screen/

Please report any bugs or regressions.
Thanks to everyone who contributed to this release.

Special thanks to Peter Dey who helped me with this release.

Cheers,
Alex
