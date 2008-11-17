X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/11/17/2
Message-ID: <28fa9c5e0811162205t43501216gd3e3ed7a40357144@mail.gmail.com>
Date: Mon, 17 Nov 2008 14:05:04 +0800
From: "Eugene Teo" <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
Subject: CVE request: kernel: V4L/DVB (9621): Avoid writing outside shadow.bytes[] array
Content-Type: text/plain; charset=utf-8

This was fixed in upstream by the maintainer, Mauro Carvalho Chehab.

"[PATCH] V4L/DVB (9621): Avoid writing outside shadow.bytes[] array

There were no check about the limits of shadow.bytes array. This offers
a risk of writing values outside the limits, overriding other data
areas."

Upstream commit: 494264379d186bf806613d27aafb7d88d42f4212

https://bugzilla.redhat.com/show_bug.cgi?id=471835

Please assign a CVE name to this bug.

Thanks, Eugene
