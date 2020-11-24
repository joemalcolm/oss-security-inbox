X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/11/24/3
Message-ID: <20201124182021.GB13107@suse.de>
Date: Tue, 24 Nov 2020 19:20:21 +0100
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: Heads up: PAM 1.5.0 has a auth bypass under some conditions
Content-Type: text/plain; charset=utf-8

Hi,

(via IRC, spotted by Foxboron)

PAM 1.5.0 had a potential auth bypass, if a user did not exist and the root password was
empty (but root locked down).

The reporters usecase was spammers pretending to be unknown users with a PAM enabled dovecot.

This issue affected only pam 1.5.0.

News entry:
https://github.com/linux-pam/linux-pam/commit/28b8c7045ac8ea4ea080bce02a2df9e3b9e98f06

CVE-2020-27780

github issue reporting the problem: https://github.com/linux-pam/linux-pam/issues/284
Fixing commit: https://github.com/linux-pam/linux-pam/commit/af0faf666c5008e54dfe43684f210e3581ff1bca

Ciao, Marcus
