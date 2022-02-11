X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/02/11/2
Message-ID: <bc351510-ab51-78dc-f10b-07701d9ca8ee@linux.ibm.com>
Date: Fri, 11 Feb 2022 08:45:30 +0100
From: Christian Borntraeger <borntraeger@...ux.ibm.com>
To: oss-security@...ts.openwall.com, Janis Schoetterl-Glausch <scgl@...ux.ibm.com>, Janosch Frank <frankja@...ux.ibm.com>
Subject: Linux kernel: Fix for KVM on s390, insufficient checks for ioctl
Content-Type: text/plain; charset=utf-8

Folks,

here is a Linux kernel fix
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2c212e1baedcd782b2535a3f86bc491977677c0e
for an insufficient check in the KVM module for s390.
This was reported last week to linux-distros at openwall. No exploit is available.

According to Red Hat this is now tracked via CVE-2022-0516.


Christian
