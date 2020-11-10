X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/11/10/5
Message-ID: <CAJvTdK=tZjaiCaS=1=L=r0ZKg16jLS0OMqQ3bfxmhnopMo59Gw@mail.gmail.com>
Date: Tue, 10 Nov 2020 13:37:31 -0500
From: Len Brown <lenb@...nel.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2020-8694 RAPL power meter, Linux intel_powercap
Content-Type: text/plain; charset=utf-8

FYI,

Today Linux was patched:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=949dd0104c496fa7c14991a23c03c62e44637e71

to help address the vulnerability of employing the hardware RAPL power
meter in a side-channel attack.

https://www.intel.com/content/www/us/en/security-center/advisory/intel-sa-00389.html

thanks,
Len Brown, Intel Open Source Technology Center
