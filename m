X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/01/16/2
Message-ID: <20210116083946.29de5cf3@computer>
Date: Sat, 16 Jan 2021 08:39:46 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: MATE screensaver screen lock bypass with external monitor
Content-Type: text/plain; charset=utf-8

Given the discussion about a cinnamon screensaver crash vuln, I was
recently made aware of this issue in mate-screensaver:

https://github.com/mate-desktop/mate-screensaver/issues/183

It seems by a series of plugging in and out external monitors with mate
screensaver you can see the screen content despite the screen being
locked.


-- 
Hanno Böck
https://hboeck.de/
