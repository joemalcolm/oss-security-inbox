X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/09/08/5
Message-ID: <15e6161ec08.da24af3b48197.8990750711888835888@ovsienko.info>
Date: Fri, 08 Sep 2017 13:06:00 +0100
From: Denis Ovsienko <denis@...ienko.info>
To: <oss-security@...ts.openwall.com>
Cc: "the tcpdump group" <security@...dump.org>
Subject: Arch Linux and tcpdump 4.9.2
Content-Type: text/plain; charset=utf-8

Hello list.

Let me clarify that neither Arch Linux nor any other distribution was the source of the leak. The original cause was a mishap by the tcpdump group, which resulted in an extra unintended copy in a public directory. From there the new tarball was picked up by automatic release monitoring systems and eventually packaged as a regular public update.

In this case Arch Linux as well as other distributions have done exactly what was necessary to do and have provided their users with an updated package. Great job.

tcpdump-4.9.2.tar.gz is now available at www.tcpdump.org.

-- 
    Denis Ovsienko


