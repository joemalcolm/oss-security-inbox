X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/16/5
Message-ID: <CAFicg87T2PYuZ-BBd4X2UNShS_Tq2T_A9cZ2O=m6j=zyhsat5w@mail.gmail.com>
Date: Mon, 16 Feb 2015 15:42:06 +0100
From: Maxin John <maxin@...inbjohn.info>
To: oss-security@...ts.openwall.com
Cc: cve-assign@...re.org, sona.sarmadi@...a.com
Subject: CVE-Request - bitbake
Content-Type: text/plain; charset=utf-8

Hi,

Executing "bitbake -g -u depexp <package>" when DISPLAY is not
properly set causes segfault and a denial of service (through OOM) via
a crafted script.

Bug Report URL:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=7299

Patch link (master branch):
http://git.openembedded.org/bitbake/commit/?id=f35e9bd7b59c180fe9a3d9177efb57b92d9cd373

Can a CVE be assigned to this please?

Thanks and Regards,
Maxin
