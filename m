X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/06/30/2
Message-ID: <20200630105009.46d2de6d@lenovo>
Date: Tue, 30 Jun 2020 10:50:09 +0200
From: Stefan Cornelius <scorneli@...hat.com>
To: oss-security@...ts.openwall.com
Subject: libvncserver: old websocket decoding patch
Content-Type: text/plain; charset=utf-8

Hi,

Upstream libvncserver fixed a websocket decoding issue >3years ago in
https://github.com/LibVNC/libvncserver/commit/aac95a9dcf4bbba87b76c72706c3221a842ca433

AFAICT, this never got a CVE and wasn't backported by some
distributions.

Thanks and kind regards,

[I sent a heads-up about this to distros last Friday, 'embargo' ran out
on Monday 20:00 UTC]
-- 
Stefan Cornelius / Red Hat Product Security

