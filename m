X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/17/7
Message-ID: <bc0bf2afd6874a1a13b371e5d013c958.squirrel@aphrodite.kinkhorst.nl>
Date: Fri, 17 Oct 2014 16:09:36 +0200
From: "Thijs Kinkhorst" <thijs@...ian.org>
To: oss-security@...ts.openwall.com
Subject: libxml2 issue: billioun laughs variant (CVE-2014-3660)
Content-Type: text/plain; charset=utf-8

Hi,

The Netherlands Cyber Security Center found a libxml2 issue, similar to
the original 'billion laughs' entity expansion attack. Upstream pushed out
a fix immediately (to much regret of the NCSC that wanted to do a
coordinated disclosure).
https://www.ncsc.nl/actueel/nieuwsberichten/kwetsbaarheid-ontdekt-in-libxml2.html

>From the git logs, it seems it has been fixed in libxml2 2.9.2 and is
known as CVE-2014-3660:
https://git.gnome.org/browse/libxml2/commit/?id=be2a7edaf289c5da74a4f9ed3a0b6c733e775230


Kind regards,

Thijs Kinkhorst
Debian Security Team
