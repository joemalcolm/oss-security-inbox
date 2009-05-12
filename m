X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/05/12/2
Message-Id: <1242136846.3531.28.camel@localhost.localdomain>
Date: Tue, 12 May 2009 16:00:46 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: Steven Christey <coley@...us.mitre.org>
Cc: oss-security@...ts.openwall.com
Subject: CVE Request -- kdebase4 (konqueror) -- Incomplete SSL Certificate support in KDE4
Content-Type: text/plain; charset=utf-8

Hello Steve,

  not sure if original Debian bug [1] reporter meant this insufficiency,
but [2] might be interesting for your attention. While this is not
direct security vulnerability, is is preventing users from using
the functionality provided by digital certificates.

References:
[1] http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=526979
[2] https://bugs.kde.org/show_bug.cgi?id=185288
[3] https://bugzilla.redhat.com/show_bug.cgi?id=500373

This issue is present only in Konqueror web browser, as shipped
with the K Desktop Environment 4 (kdebase-4.*). Konqueror in
kdebase3 works fine.

Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team

