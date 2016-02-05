X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/02/05/2
Message-ID: <1454682395.12024.102.camel@fahlgren-laptop>
Date: Fri, 05 Feb 2016 15:26:35 +0100
From: Daniel Fahlgren <daniel@...lgren.se>
To: oss-security@...ts.openwall.com
Cc: cve-assign@...re.org
Subject: CVE Request uclibc-ng dns resolver issues
Content-Type: text/plain; charset=utf-8

Hi,

Uclibc-ng 1.0.12 has been released which fixes some issues found in the
dns resolver code.

The first is a denial of service while parsing compressed items. An
attacker can make the application end up in an infinit loop. Fixed by:

http://repo.or.cz/uclibc-ng.git/commit/16719c1a7078421928e6d31dd1dec574825ef515

The other problem is that a crafted packet will make the parser
terminate early. The buffer is never initialized and is later passed to
strdup(). Fixed by:

http://repo.or.cz/uclibc-ng.git/commit/bb01edff0377f2585ce304ecbadcb7b6cde372ac

Can one or two CVEs be assigned for these issues?

Best regards,
Daniel Fahlgren

