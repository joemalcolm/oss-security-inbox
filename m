X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/08/18/3
Message-ID: <20100818155103.924@usenet.piggo.com>
Date: Wed, 18 Aug 2010 13:51:38 +0000 (UTC)
From: Sébastien Delafond <seb@...ian.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: zope-ldapuser
Content-Type: text/plain; charset=utf-8

Hi,

there is an authentication probleme in zope-ldapuser, where any password
is accepted when attempting to log in as the emergency user (as defined
in zpasswd.py). See Debian bug 593466[0] for the corresponding patch.

Cheers,

--Seb

[0] http://bugs.debian.org/593466

