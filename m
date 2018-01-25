X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/01/25/6
Message-Id: <272754A9-6299-4B6E-B0FB-BCC3FD8668B6@apache.org>
Date: Thu, 25 Jan 2018 11:56:19 -0800
From: Andy LoPresto <alopresto@...che.org>
To: security@...i.apache.org
Cc: users@...i.apache.org, dev@...i.apache.org, oss-security@...ts.openwall.com
Subject: [ANNOUNCE] CVE advisory for Apache NiFi 1.0.0 - 1.3.0
Content-Type: text/plain; charset=utf-8

The Apache NiFi PMC would like to announce the following CVE discovery in Apache NiFi 1.1.0 - 1.3.0. This issue was resolved with the release of NiFi 1.4.0 on October 2, 2017. NiFi is an easy to use, powerful, and reliable system to process and distribute data. It supports powerful and scalable directed graphs of data routing, transformation, and system mediation logic. For more information, see https://nifi.apache.org/security.html.

CVE-2017-15703 <https://nifi.apache.org/security.html#CVE-2017-15703>: Apache NiFi Java deserialization issue in template XML upload

Severity: Moderate

Versions Affected:

Apache NiFi 1.0.0 - 1.3.0

Description: Any authenticated user (valid client certificate but without ACL permissions) could upload a template which contained malicious code and caused a denial of service via Java deserialization attack.

Mitigation: The fix to properly handle Java deserialization was applied on the Apache NiFi 1.4.0 release. Users running a prior 1.x release should upgrade to the appropriate release.

Credit: This issue was discovered by Mike Cole.

Released: October 2, 2017 (Updated January 25, 2018)


Andy LoPresto
alopresto@...che.org
alopresto.apache@...il.com
PGP Fingerprint: 70EC B3E5 98A6 5A3F D3C4  BACE 3C6E F65B 2F7D EF69


Content of type "text/html" skipped

Download attachment "signature.asc" of type "application/pgp-signature" (843 bytes)
