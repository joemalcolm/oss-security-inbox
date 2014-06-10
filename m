X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/06/10/3
Message-ID: <20140610194548.GB6566@pisco.westfalen.local>
Date: Tue, 10 Jun 2014 21:45:50 +0200
From: Moritz Muehlenhoff <jmm@...ian.org>
To: oss-security@...ts.openwall.com
Cc: nab@...ux-iscsi.org, jdsm@...nico.ulisboa.pt
Subject: CVE request: Linux kernel / target information leak
Content-Type: text/plain; charset=utf-8

Hi,
Please assign a CVE ID:

Jorge Daniel Sequeira Matias discovered an information leak in the rd_mcp backend
of the iSCSI target subsystem in the Linux kernel (originally reported to the
Debian Security Team and investigated by Nicholas A. Bellinger):

Introduced in 2.6.38 and fixed in 3.14 with
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=4442dc8a92b8f9ad8ee9e7f8438f4c04c03a22dc

Cheers,
        Moritz

