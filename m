X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/10/09/4
Message-ID: <tencent_91300EF1F4508712395C10A9DF9431CDFC08@qq.com>
Date: Mon, 9 Oct 2017 15:52:06 +0800
From: "NOIRFATE" <noirfate@....qq.com>
To: "oss-security" <oss-security@...ts.openwall.com>
Subject: OpenEXR : CVE-2017-14988 : DOS in Header::readfrom
Content-Type: text/plain; charset=utf-8

Description:
The Header::readfrom function may allocate any size of memory specified by user via a crafted exr image file, and cause DOS.

Affected version:
openexr 2.2.0

Fixed version:
No upstream fix available

Details:
https://github.com/openexr/openexr/issues/248

Credit:
This bug was discovered by Yihan Lian of GearTeam at Qihoo360

CVE:
CVE-2017-14988
