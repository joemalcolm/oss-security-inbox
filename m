X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/07/22/3
Message-ID: <77071155.1269251279827927550.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 22 Jul 2010 15:45:27 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security <oss-security@...ts.openwall.com>
Cc: Werner Lemberg <wl@....org>, Marek Kasik <mkasik@...hat.com>
Subject: Another freetype-demos buffer overflow
Content-Type: text/plain; charset=utf-8

Hello everyone,

While fixing CVE-2010-2527, one of our developers, Marek Kašík, discovered
an additional buffer overflow in the ftmulti demo program.

I've assigned it CVE-2010-2541. There is more information in our bug:
https://bugzilla.redhat.com/show_bug.cgi?id=617342

Upstream was told and added a partial fix to their git:
http://git.savannah.gnu.org/cgit/freetype/freetype2-demos.git/commit/?id=3636982a7666bcfa0e47fb31d565314d1b3e7d78

I've attached a patch to the Red Hat bug that we're using.

Thanks.

-- 
    JB
