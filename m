X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/22/3
Message-ID: <66cce82d-8342-4934-82a2-fa2f9e4d65f6@canonical.com>
Date: Mon, 22 Jun 2026 18:21:02 +0530
From: Sudhakar Verma <sudhakar.verma@...onical.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-6653: libxml2: use after free in xmlParseInternalSubset (>=2.9.11, <2.11.0)
Content-Type: text/plain; charset=utf-8

Severity: Medium

Affected versions:

- upstream versions - 2.9.11 to 2.11.0

Description:

libxml2 had a use after free in xmlParseInternalSubset due to improper 
entity resolution handling. A remote attacker could possibly use this 
issue to crash or possibly run arbitrary programs.

The latest upstream is already patched and this only applies to a set of 
older versions. This likely also applies if upstream patch for 
CVE-2021-3541 was cherry picked.

Credit:

Geoffrey Humphreys (reporter)

References:
https://bugs.launchpad.net/ubuntu/+source/libxml2/+bug/2141260
https://gitlab.gnome.org/GNOME/libxml2/-/work_items/1058


The linked launchpad issue has PoC and reproduction instructions if needed.

Timeline:
2026-02-09 : reported to Canonical's Ubuntu Security Team
2026-02-17 : reported to upstream
2026-06-08 : PoC and details send to distros list
2026-06-22 : public disclosure


