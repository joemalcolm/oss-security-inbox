X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/19/6
Message-ID: <AANLkTi=nyB6Os2vAtg_scSuSf6cNumMYnOecyEhOsZh=@mail.gmail.com>
Date: Wed, 19 Jan 2011 17:52:35 -0500
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: heap corruption in VLC media player
Content-Type: text/plain; charset=utf-8

>From upstream git [1]:

"This patch resolves two heap corruption vulnerabilities in the CDG
decoder for VLC media player.  In both cases, a failure to properly
validate indexes into statically-sized arrays on the heap allows a
maliciously crafted CDG video to corrupt the heap in a controlled
manner, potentially leading to code execution."

-Dan

[1] http://git.videolan.org/?p=vlc.git;a=commit;h=f9b664eac0e1a7bceed9d7b5854fd9fc351b4aab
