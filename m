X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/01/23/1
Message-ID: <a508ca98-5954-b19a-0e7f-7319a4c94480@apache.org>
Date: Tue, 22 Jan 2019 22:57:15 -0500
From: Troy Curtis <troycurtisjr@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2018-11803] Apache Subversion Denial of Service Vulnerability
Content-Type: text/plain; charset=utf-8

This is a security notification for Apache Subversion HTTP Servers:

CVE-2018-11803
Severity: Medium
Affected Versions: Apache Subversion 1.11.0, 1.10.0 to 1.10.3

Subversion's mod_dav_svn Apache HTTPD module versions 1.11.0 and 1.10.0 
to 1.10.3 will crash after dereferencing an uninitialized pointer if the 
client omits the root path in a recursive directory listing operation. 
This issue can be triggered by any client on Subversion repositories 
configured for anonymous read access. If read access requires 
authentication, a denial of service attack can only be performed by an 
authenticated user.

The Subversion releases 1.10.4 and 1.11.1 contain the fixes for this 
vulnerability and are available immediately at:

https://dist.apache.org/repos/dist/release/subversion/?p=32084

Additional details, including patches for 1.10.3 and 1.11.0 can be found at:

https://subversion.apache.org/security/CVE-2018-11803-advisory.txt

We encourage users of Subversion to upgrade to the latest appropriate 
version as soon as reasonable.

Thanks,
- The Subversion Team
