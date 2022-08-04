X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/08/05/1
Message-ID: <CAF6bG8ckH-W67J95eLHRnFH71n3PgtacBNk7aQdmJuyq8VRzMA@mail.gmail.com>
Date: Fri, 5 Aug 2022 02:17:51 +0300
From: Marko Lindqvist <cazfi74@...il.com>
To: oss-security@...ts.openwall.com
Subject: Freeciv < 2.6.7, freeciv-3.0 < 3.0.3, Modpack Installer buffer overflow
Content-Type: text/plain; charset=utf-8

 Just released freeciv-2.6.7 & freeciv-3.0.3 fix buffer overflow in
Modpack Installer utility's handling of the modpack URL. Specially
crafted URLs, without any '/' -characters would result in an
underflowing length (unsigned)(-1) string copy, i.e., all of the
NULL-terminated string given as "URL" would get written beyond the
buffer reserved for it.

 Freeciv source tarballs are available from
https://www.freeciv.org/download.html for current 3.0, and from
https://www.freeciv.org/wiki/Old_downloads for 2.6.

 In case you can't make full version update at the moment, bug tracker
ticket has also a patch for this single issue attached:
https://osdn.net/projects/freeciv/ticket/45299



 - ML
