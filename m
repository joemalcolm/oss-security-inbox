X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/17/4
Message-ID: <CACn5sdQkwhYxJM=cugtjrzpwW0_aVn=QyRpCbuJrVqTDJyGjag@mail.gmail.com>
Date: Thu, 17 Mar 2016 13:29:37 -0300
From: Gustavo Grieco <gustavo.grieco@...il.com>
To: oss-security@...ts.openwall.com
Subject: [cairo] Out-of-bounds read in _fill_xrgb32_lerp_opaque_spans
Content-Type: text/plain; charset=utf-8

Hi,

There is an out-of-bounds read in _fill_xrgb32_lerp_opaque_spans in cairo
(crashing software that parses and renderizes a svg, for instance).
Fortunately, this vulnerability was fixed in the 1.14.2 release (
https://mail.gnome.org/archives/gnome-announce-list/2015-March/msg00047.html).
The patch is available here:

https://cgit.freedesktop.org/cairo/patch/src/cairo-image-compositor.c?id=5c82d91a5e15d29b1489dcb413b24ee7fdf59934

Please assign a CVE to this issue.

Regards,
Gus.

