X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/02/22/1
Message-ID: <531c6c3e-6c18-eb00-0b90-487db8650a2c@isc.org>
Date: Thu, 21 Feb 2019 17:59:11 -0900
From: Michael McNally <mcnally@....org>
To: oss-security@...ts.openwall.com
Cc: "security-officer@....org" <security-officer@....org>
Subject: Multiple BIND CVEs disclosed (CVE-2018-5744, CVE-2018-5745, CVE-2019-6465)
Content-Type: text/plain; charset=utf-8

Today ISC disclosed three vulnerabilities affecting multiple versions of
BIND.  Full details on versions affected and more information about the
vulnerabilities are available via these articles in the ISC Knowledge Base:

CVE-2018-5744:
   A specially crafted packet can cause named to leak memory
   https://kb.isc.org/docs/cve-2018-5744

CVE-2018-5745:
   An assertion failure can occur if a trust anchor rolls over to
   an unsupported key algorithm when a server is using managed-keys
   https://kb.isc.org/docs/cve-2018-5745

CVE-2019-6465:
   Controls for zone transfers may not be properly applied to
   Dynamically Loadable Zones (DLZs) if the zones are writable.
   https://kb.isc.org/docs/cve-2019-6465

New software versions are available from the ISC downloads page:
https://www.isc.org/downloads

With the public disclosure of these vulnerabilities, parties which
had been given advance notice concerning them are released from
non-disclosure and packagers and redistributors are encouraged to
publish updated packages containing fixes.

If you have additional questions, please direct them to
security-officer@....org

Thank you,

Michael McNally
ISC Security Officer

