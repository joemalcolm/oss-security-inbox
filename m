X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/12/04/1
Message-ID: <1322996787.32667.112.camel@mdlinux>
Date: Sun, 04 Dec 2011 06:06:27 -0500
From: Marc Deslauriers <marc.deslauriers@...onical.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: ffmpeg
Content-Type: text/plain; charset=utf-8

Hello,

This doesn't seem to have a CVE:

An error within the "svq1_decode_frame()" function
(libavcodec/svq1dec.c) can be exploited to corrupt memory.

http://git.videolan.org/?p=ffmpeg.git;a=commit;h=4931c8f0f10bf8dedcf626104a6b85bfefadc6f2

http://secunia.com/advisories/46888/
http://archives.neohapsis.com/archives/bugtraq/2011-11/0148.html


Thanks,

Marc.


