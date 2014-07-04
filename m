X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/07/04/3
Message-ID: <20140704195141.GA24572@nebraska.herrb.net>
Date: Fri, 4 Jul 2014 21:51:41 +0200
From: Matthieu Herrb <matthieu.herrb@...s.fr>
To: oss-security@...ts.openwall.com
Subject: X.Org intel driver dev snapshots, backlight helper issue
Content-Type: text/plain; charset=utf-8

Hi,

FYI: http://lists.x.org/archives/xorg-commit/2014-July/036840.html

The issue was reported by Adam Sampson.

xf86_video_intel_backlight_helper will be installed setuid and lacked
basic input sanity validation.

it is not part of any  release xf86-video-intel (only beta versions
have it). It was added in the 2.99.911 develepment snapshot.
-- 
Matthieu Herrb
