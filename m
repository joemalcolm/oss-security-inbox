X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/11/26/5
Message-ID: <20131126105229.GB8743@suse.de>
Date: Tue, 26 Nov 2013 11:52:29 +0100
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE Request: static IV used in Percona XtraBackup
Content-Type: text/plain; charset=utf-8

Hi,

This came to our desk:
https://bugzilla.novell.com/show_bug.cgi?id=852224
https://bugs.launchpad.net/percona-xtrabackup/+bug/1185343

constant IV used in CTR Mode, allowing plaintext retrieval
attacks.

I think it needs a CVE.

Ciao, Marcus
