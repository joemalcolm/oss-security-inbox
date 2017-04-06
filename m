X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/04/06/2
Message-ID: <20170406054400.GC32355@suse.de>
Date: Thu, 6 Apr 2017 07:44:00 +0200
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: libxslt math.random issue
Content-Type: text/plain; charset=utf-8

Hi,

CVE-2015-9019 has been assigned to use of libexslt (in libxslt) usage of "math.random" 
without initializing the randomseed.

https://bugzilla.gnome.org/show_bug.cgi?id=758400
https://bugzilla.suse.com/show_bug.cgi?id=934119

Surely, one can argue that the calling program should do srand() or similar, but its
too easy to forget.


FWIW, why is glibc not doing srand(RANDOMVECTOR) during startup... :/

Ciao, Marcus
