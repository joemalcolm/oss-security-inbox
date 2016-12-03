X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/12/03/2
Message-ID: <ed9a84ac-7e62-55d5-afa2-4afaab0c1613@gmail.com>
Date: Sat, 3 Dec 2016 09:20:09 +0800
From: Baozeng Ding <sploving1@...il.com>
To: cve-assign@...re.org, oss-security@...ts.openwall.com
Cc: tiwai@...e.de
Subject: CVE request: -- Linux kernel: ALSA: use-after-free in,kill_fasync
Content-Type: text/plain; charset=utf-8

Hello all,
A use-after-free vulnerability was found in ALSA pcm layer, which allows local users to cause a denial of service, memory corruption or possibly other unspecified impact. 

Reference:
------------------
  --> https://patchwork.kernel.org/patch/8752621/

Fixed in upstream:
--------------------
  --> https://github.com/torvalds/linux/commit/3aa02cb664c5fb1042958c8d1aa8c35055a2ebc4

Could you please assign a CVE for this vulnerability? 

Thank you.
