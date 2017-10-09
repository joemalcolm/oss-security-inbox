X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/10/09/5
Message-ID: <tencent_A0FE1C07287ACEC3E61C0508DD6FC7185107@qq.com>
Date: Mon, 9 Oct 2017 15:58:30 +0800
From: "NOIRFATE" <noirfate@....qq.com>
To: "oss-security" <oss-security@...ts.openwall.com>
Subject: ImageMagick : CVE-2017-14989 : heap use-after-free in RenderFreetype
Content-Type: text/plain; charset=utf-8

Description:
The RenderFreetype function in MagickCore/annotate.c in ImageMagick allows attackers to cause a denial of service via a crafted font file.

Affected version:
ImageMagick 7.0.7-3 (maybe previous versions are affected as well)

Fixed version:
ImageMagick 7.0.7-7

Commit fix:
https://github.com/ImageMagick/ImageMagick/commit/97740ccc177ee264e79091fa573d994eb6b05628

Details:
https://github.com/ImageMagick/ImageMagick/issues/781

Credit:
This bug was discovered by Yihan Lian of GearTeam at Qihoo360

CVE:
CVE-2017-14989
