X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/06/02/3
Message-ID: <20160602091013.GD26429@suse.de>
Date: Thu, 2 Jun 2016 11:10:13 +0200
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE Request: bad USB host adapter implementation can corrupt memory/brick machine
Content-Type: text/plain; charset=utf-8

Hi,

reported here:

https://marc.info/?l=linux-usb&m=146480770532266&w=2

issue is that the Frescologic device id 1009 host controller apparently
has a broken XHCI STREAMS implementation which would lead to memory corruptions

Redhat might have already assigned a CVE.

I am not sure if this is controllable for code execution, but at least USB devices can be used
to brick a machine with the kernel running (local denial of service)?

Ciao, Marcus
