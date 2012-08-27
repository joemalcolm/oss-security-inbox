X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/08/27/5
Message-ID: <1346081473.27216.9.camel@spiral.ashpool.org>
Date: Mon, 27 Aug 2012 17:31:13 +0200
From: Thomas Biege <thomas@...e.de>
To: oss-security@...ts.openwall.com
Subject: CVE request: crowbar ohai plugin: local privilege (root) escalation due to insecure tmp file handling
Content-Type: text/plain; charset=utf-8


Hi,
insecure handling of tmp files can lead to executing arbitrary shell
commands as root:

https://github.com/SUSE-Cloud/barclamp-deployer/commit/b6454268a067fc77ff5de82057b5b53b3cc38b87


Thanks,
Thomas

-- 
Thomas Biege, Project Manager Security, CSSLP
SUSE LINUX GmbH, GF: Jeff Hawn, Jennifer Guild, Felix Imendörffer, HRB
21284 (AG Nürnberg)
--
  Wer aufhoert besser werden zu wollen, hoert auf gut zu sein.
                            -- Marie von Ebner-Eschenbach

Download attachment "signature.asc" of type "application/pgp-signature" (491 bytes)
