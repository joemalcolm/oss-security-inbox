X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/04/04/2
Message-ID: <b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>
Date: Wed, 4 Apr 2018 19:15:16 +0300
From: Alexander Popov <alex.popov@...ux.com>
To: oss-security@...ts.openwall.com
Cc: Kees Cook <keescook@...omium.org>, James Morris <jmorris@...ei.org>, "Serge E. Hallyn" <serge@...lyn.com>, Brad Spengler <spender@...ecurity.net>, PaX Team <pageexec@...email.hu>
Subject: Linux Kernel Defence Map
Content-Type: text/plain; charset=utf-8

Linux kernel security is a very complex area. It would be nice to have some
graphical representation of its current state. So I've created a Linux Kernel
Defence Map showing the relations between:
 - vulnerability classes / exploitation techniques,
 - kernel defences,
 - bug detection means.

Link:
   https://github.com/a13xp0p0v/linux-kernel-defence-map

N.B. The node connections don't mean "full mitigation". These connections
represent some kind of relation. So ideally, this map should help to navigate in
documentation and Linux kernel sources.

I wrote it in DOT language and generated the picture using GraphViz. So it is
very pleasant to maintain this map with git.

I would be grateful for any feedback.

Best regards,
Alexander
