X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/08/19/8
Message-ID: <4C6D954E.1030801@FreeBSD.org>
Date: Thu, 19 Aug 2010 22:34:22 +0200
From: Niels Heinen <niels@...eBSD.org>
To: oss-security@...ts.openwall.com
Subject: CVE Request: SLiM insecure PATH assignment
Content-Type: text/plain; charset=utf-8


Hi all,

SLiM versions prior to 1.3.1 assigned logged on users a predefined PATH
which included './'. This allowed unintentional code execution (e.g.
planted binary) and has been fixed by the developers in version 1.3.2.

Can you allocate a CVE number for this one?

Thanks,

-- 
Niels Heinen
FreeBSD committer | www.freebsd.org
PGP: 0x5FE39B80

