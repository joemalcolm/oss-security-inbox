X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/08/14/7
Message-ID: <20180814155718.3gcvbcs7am4xrpy5@suse.de>
Date: Tue, 14 Aug 2018 17:57:18 +0200
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE-2018-14722: btrfsmaintenance: Code execution
Content-Type: text/plain; charset=utf-8

Hi,

SUSE employee Fabian Vogt has found a shell code injection issue in the "btrfsmaintenance" tools.

https://bugzilla.suse.com/show_bug.cgi?id=1102721

Mounting btrfs images with a label including shell injection characters could cause
the cron jobs (running as root) to execute the include shellcode.

Our proposed fix attached to this email.

bad image can be created with:
	mkfs.btrfs --label "`/evil/command`' /dev/sdx

Ciao, Marcus

View attachment "btrfsmaintenance-CVE-2018-14722.patch" of type "text/x-patch" (3121 bytes)
