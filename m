X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/08/10/1
Message-ID: <1502369616.23921.10.camel@cryptobitch.de>
Date: Thu, 10 Aug 2017 14:53:36 +0200
From: Tobias Mueller <tobiasmue@...me.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2017-2885 libsoup - stack based buffer overflow with HTTP Chunked Encoding
Content-Type: text/plain; charset=utf-8

Hi.

PSA: Please update libsoup with the patch from
https://bugzilla.gnome.org/show_bug.cgi?id=785774
or take one of the new releases 2.59.90.1,  2.58.2 (gnome-3-24), or
2.56.1 (gnome-3-22).

The patch fixes a severe bug which affects libsoup acting as either
client or server when dealing with chunked encoding.

All versions since 2012 are affected.
Credits go to Aleksandar Nikolic of Cisco Talos for finding this issue.

Cheers,
  Tobi
Download attachment "signature.asc" of type "application/pgp-signature" (182 bytes)
