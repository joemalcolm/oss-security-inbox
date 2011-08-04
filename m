X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/08/04/11
Message-ID: <20110804155530.GB7292@foo.fgeek.fi>
Date: Thu, 4 Aug 2011 18:55:30 +0300
From: Henri Salo <henri@...v.fi>
To: oss-security@...ts.openwall.com
Subject: CVE-request: pithos symlink vulnerability CWE-61
Content-Type: text/plain; charset=utf-8

Can I get 2010 CVE-ID for Pithos symlink attack vulnerability: https://bugs.launchpad.net/pithos/+bug/667896

Software web-page: https://launchpad.net/pithos
Found by: lfaraone <https://launchpad.net/~lfaraone>
Found at: 2010-10-30 (fix released same day)
"Predictable file- or directory-names in /tmp/-directory can lead to symlink attack."

Fixed in Debian:

http://packages.debian.org/changelogs/pool/main/p/pithos/current/changelog says:
pithos (0.3.5-1) unstable; urgency=high

   * New upstream version.
     - SECURITY UPDATE: fixes overwriting of arbitrary file via symlinks
       (LP: #667896)
Can be still found from DST: http://security-tracker.debian.org/tracker/TEMP-0000000-14D1F9

And in Ubuntu: http://changelogs.ubuntu.com/changelogs/pool/universe/p/pithos/pithos_0.3.8-1/changelog

Best regards,
Henri Salo
