X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/31/4
Message-ID: <AANLkTin1nNC8wVY+zLL=MyYB6Dbng0tox2HMcT2gvhnq@mail.gmail.com>
Date: Mon, 31 Jan 2011 10:18:20 -0500
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: code execution in VLC media player
Content-Type: text/plain; charset=utf-8

When opening a malformed MKV (WebM or Matroska) file in VLC, it is
possible to corrupt memory and execute arbitrary code.
Proof-of-concept exploit code is available and may be made public
soon.

-Dan

[1] http://www.videolan.org/security/sa1102.html
[2] http://git.videolan.org/?p=vlc.git;a=commit;h=59491dcedffbf97612d2c572943b56ee4289dd07
