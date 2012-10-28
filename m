X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/10/28/3
Message-ID: <508D5135.2050103@canonical.com>
Date: Sun, 28 Oct 2012 15:37:25 +0000
From: Chris Coulson <chris.coulson@...onical.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: use-after-free in libunity-webapps
Content-Type: text/plain; charset=utf-8

Hi,

libunity-webapps provides functionality shared between browser addons 
that are available for Firefox and Chromium. A use-after-free bug was 
found in libunity-webapps which could potentially be exploited to crash 
the users browser or run arbitrary code.

Reference:

https://launchpad.net/bugs/1068495

Could you please allocate a CVE for this?

Thanks,
Chris
