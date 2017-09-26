X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/09/26/10
Message-ID: <tencent_67D03AC71B42EFBB2FE69E9FC1E18DDEE405@qq.com>
Date: Tue, 26 Sep 2017 17:10:35 +0800
From: "NOIRFATE" <noirfate@....qq.com>
To: "oss-security" <oss-security@...ts.openwall.com>
Subject: ImageMagick : CVE-2017-14741 : Infinite loop in ReadCAPTIONImage
Content-Type: text/plain; charset=utf-8

Description:The ReadCAPTIONImage function in coders/caption.c in ImageMagick allows attackers to cause a denial of service (infinite loop) via a crafted font file.Affected version:ImageMagick 7.0.7-3 (maybe previous versions are affected as well)Fixed version:ImageMagick 7.0.7-4Commit fix:https://github.com/ImageMagick/ImageMagick/commit/7d8e14899c562157c7760a77fc91625a27cb596fDetails:https://github.com/ImageMagick/ImageMagick/issues/771Credit:This bug was discovered by Yihan Lian of GearTeam at Qihoo360 CVE:CVE-2017-14741
