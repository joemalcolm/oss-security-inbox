X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/07/30/1
Message-ID: <2d168d9f-cb92-88e1-3cb3-c1c1c0692d13@nsfocus.com>
Date: Thu, 30 Jul 2020 10:53:36 +0800
From: 张云海 <zhangyunhai@...ocus.com>
To: oss-security@...ts.openwall.com
Subject: Re: [CVE-2020-14331] Linux Kernel: buffer over write in vgacon_scrollback_update
Content-Type: text/plain; charset=utf-8

Hi All,

I update the patch as Zhang Xiao points out that the check should use >
instead of >=,
otherwise the last line will be skip.

Regards,
Yunhai Zhang / NSFOCUS Security Team

View attachment "0001-Fix-for-missing-check-in-vgacon-scrollback-handling.patch" of type "text/plain" (1756 bytes)
