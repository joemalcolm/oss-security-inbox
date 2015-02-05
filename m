X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/05/6
Message-ID: <20150205140015.GC12454@core.inversepath.com>
Date: Thu, 5 Feb 2015 15:00:15 +0100
From: Andrea Barisani <lcars@...rt.org>
To: oss-security@...ts.openwall.com, ocert-announce@...ts.ocert.org, bugtraq@...urityfocus.com
Subject: [oCERT-2015-002] e2fsprogs input sanitization errors
Content-Type: text/plain; charset=utf-8


#2015-002 e2fsprogs input sanitization errors

Description:

The e2fsprogs package is a set of open source utilities for ext2, ext3 and
ext4 filesytems.

The libext2fs library, part of e2fsprogs and utilized by its utilities, is
affected by a boundary check error on block group descriptor information,
leading to a heap based buffer overflow.

A specially crafted filesystem image can be used to trigger the vulnerability.

Affected version:

e2fsprogs < 1.42.12

Fixed version:

e2fsprogs >= 1.42.12

Credit: vulnerability report from Jose Duart of Google Security Team
        <jduart AT google.com>.

CVE: CVE-2015-0247

Timeline:

2015-01-19: vulnerability report received
2015-01-29: contacted affected vendors, assigned CVEs
2015-02-05: advisory release

References:
http://git.kernel.org/cgit/fs/ext2/e2fsprogs.git/commit/?id=f66e6ce4

Permalink:
http://www.ocert.org/advisories/ocert-2015-002.html

-- 
Andrea Barisani |                Founder & Project Coordinator
          oCERT | OSS Computer Security Incident Response Team

<lcars@...rt.org>                         http://www.ocert.org
 0x864C9B9E 0A76 074A 02CD E989 CE7F AC3F DA47 578E 864C 9B9E
        "Pluralitas non est ponenda sine necessitate"
