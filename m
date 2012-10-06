X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/10/06/3
Message-ID: <20121006073426.GD30113@kludge.henri.nerv.fi>
Date: Sat, 6 Oct 2012 10:34:26 +0300
From: Henri Salo <henri@...v.fi>
To: oss-security@...ts.openwall.com
Cc: Josh Bressers <bressers@...hat.com>, Kurt Seifried <kseifried@...hat.com>, cve-assign@...re.org, coley <coley@...re.org>
Subject: CVE-request for piwigo issues (second request)
Content-Type: text/plain; charset=utf-8

Hello,

Old CVE-request did not get filled. At least the CVE is not listed in Mitre's list, OSVDB, Secunia or Debian security-tracker. Request done in: http://www.openwall.com/lists/oss-security/2010/12/07/1

"""
piwigo:
a1) CSRF
a2) SQL injection
a3) stored XSS
http://secunia.com/advisories/41365/
http://piwigo.org/releases/2.1.3
http://www.exploit-db.com/exploits/14973/
(the issues mentioned by the exploit-db entry appear to be the same that 
were fixed in 2.1.3)
b) search.php SQL injection
http://secunia.com/advisories/38305/
http://piwigo.org/releases/2.0.8
c) CSRF in the admin panel:
http://secunia.com/advisories/37681/
http://www.exploit-db.com/exploits/10417
(the exploit-db entry details two other issues, but are "admin-only" -- feel 
free to assign or ignore those.)
"""

SA41365: 2010
SA38305: 2010
SA37681: 2009

I am happy to provide more information if needed (or in clearner format). Please double-verify that these haven't been assigned before you assign IDs, please.

- Henri Salo
