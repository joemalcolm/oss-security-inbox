X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/06/1
Message-ID: <54AB2FF9.1040006@internot.info>
Date: Tue, 06 Jan 2015 11:44:41 +1100
From: Joshua Rogers <oss@...ernot.info>
To: oss-security@...ts.openwall.com, cve-assign@...re.org
Subject: CVE Revoke
Content-Type: text/plain; charset=utf-8

Hi,

I'm requesting a revoke of the CVE-ID: CVE-2014-9426.
The reason is due to when erealloc fails, it doesn't return, it causes a
bailout.
If erealloc causes a bailout, it is not possible for this double free to
happen.

Discussion here: https://bugs.php.net/bug.php?id=68665&thanks=2


Thanks,
-- 
-- Joshua Rogers <https://internot.info/>


Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
