X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/04/26/1
Message-ID: <20160426052013.GA4299@lorien.valinor.li>
Date: Tue, 26 Apr 2016 07:20:13 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Subject: CVE Request: vtun: denial-of-service: high CPU usage after SIGHUP
Content-Type: text/plain; charset=utf-8

Hi

There exists a denial-of-service vulnerability in vtun, resulting in
high CPU usage after SIGHUP to a vtun client process.

Debian Bugreport: https://bugs.debian.org/818489 (contains proposed
patch)

Additional references:

https://bugzilla.redhat.com/show_bug.cgi?id=1319858
https://lists.fedoraproject.org/pipermail/package-announce/2016-April/181383.html

Could you assign a CVE for this issue?

Regards,
Salvatore
