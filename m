X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/10/10/1
Message-Id: <13B90414-1C62-4858-BD74-051F67F1F6D4@apache.org>
Date: Mon, 9 Oct 2017 16:02:37 -0700
From: Andy LoPresto <alopresto@...che.org>
To: security@...i.apache.org, dev@...i.apache.org, users@...i.apache.org, oss-security@...ts.openwall.com, bugtraq@...urityfocus.com, announce@...che.org
Subject: [ANNOUNCE] Apache NiFi CVE-2017-12623
Content-Type: text/plain; charset=utf-8

Apache NiFi PMC would like to announce the discovery and resolution of CVE-2017-12623. This issue has been resolved and a new version of the Apache NiFi project was released in accordance with the Apache Release Process.

Apache NiFi is an easy to use, powerful, and reliable system to process and distribute data. It supports powerful and scalable directed graphs of data routing, transformation, and system mediation logic.

Fixed in Apache NiFi 1.4.0 (Released: October 2, 2017)

CVE-2017-12623: Apache NiFi XXE issue when loading template

Severity: Medium

Versions Affected:

Apache NiFi 1.0.0 - 1.3.0

Description: An authorized user could upload a template which contained malicious code and accessed sensitive files via an XML External Entity (XXE) attack.

Mitigation: The fix to properly handle XML External Entities was applied on the Apache NiFi 1.4.0 release. Users running a prior 1.x release should upgrade to the appropriate release.

Credit: This issue was discovered by Paweł Gocyla.

For more information: https://nifi.apache.org/security.html

Andy LoPresto
alopresto@...che.org
alopresto.apache@...il.com
PGP Fingerprint: 70EC B3E5 98A6 5A3F D3C4  BACE 3C6E F65B 2F7D EF69


Content of type "text/html" skipped

Download attachment "signature.asc" of type "application/pgp-signature" (843 bytes)
