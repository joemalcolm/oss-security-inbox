X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/11/30/2
Message-ID: <50B8D0CA.7030009@canonical.com>
Date: Fri, 30 Nov 2012 09:29:14 -0600
From: Jamie Strandboge <jamie@...onical.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: owncloud
Content-Type: text/plain; charset=utf-8

Owncloud 4.5.2 and 4.0.9 has a few security fixes:
http://owncloud.org/changelog/

Specifically:
- Multiple XSS vulnerabilities (oC-SA-2012-001)
- Timing attack in the “Lost Password” implementation (oC-SA-2012-002)
- XSS vulnerability in user_webdavauth (oC-SA-2012-003)
- Code Execution in /lib/migrate.php (oC-SA-2012-004)
- Code Execution in /lib/filesystem.php (oC-SA-2012-005)

-- 
Jamie Strandboge                 http://www.ubuntu.com/


Download attachment "signature.asc" of type "application/pgp-signature" (900 bytes)
