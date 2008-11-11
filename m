X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/11/11/2
Message-ID: <28fa9c5e0811102119u3e7fe66cv131fc2f3cfbefefb@mail.gmail.com>
Date: Tue, 11 Nov 2008 13:19:52 +0800
From: "Eugene Teo" <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
Cc: coley@...re.org
Subject: CVE request: kernel: libertas: fix buffer overrun
Content-Type: text/plain; charset=utf-8

Hi,

We need a CVE name for this issue. This was committed in upstream
kernel recently.

"If somebody sends an invalid beacon/probe response, that can trash
the whole BSS descriptor. The descriptor is, luckily, large enough so
that it cannot scribble past the end of it; it's well above 400 bytes
long.

Upstream commit: 48735d8d8bd701b1e0cd3d49c21e5e385ddcb077

https://bugzilla.redhat.com/show_bug.cgi?id=470761
http://article.gmane.org/gmane.linux.kernel.wireless.general/23049

Thanks, Eugene
