X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/06/04/9
Message-Id: <DD545187-DC87-48DC-A3AB-69F8000E2F11@gmail.com>
Date: Sat, 4 Jun 2016 12:10:56 -0500
From: Brandon Perry <bperry.volatile@...il.com>
To: oss-security@...ts.openwall.com
Subject: Libtorrent http_parser.cpp denial of service
Content-Type: text/plain; charset=utf-8

Helo list,

I recently opened a bug on libtorrent regarding malformed HTTP or UPnP responses that has been fixed on branch RC_1_1. The maintainer also mentioned backporting the fix to RC_1_0.

https://github.com/arvidn/libtorrent/issues/780 <https://github.com/arvidn/libtorrent/issues/780>

https://github.com/arvidn/libtorrent/pull/782 <https://github.com/arvidn/libtorrent/pull/782>

Content of type "text/html" skipped

Download attachment "signature.asc" of type "application/pgp-signature" (843 bytes)
