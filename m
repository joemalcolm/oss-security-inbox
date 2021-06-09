X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/06/10/6
Message-ID: <1622544226.MYGTHDOG@httpd.apache.org>
Date: Wed, 09 Jun 2021 23:11:00 +0200
From: Christophe JAILLET <jailletc36@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-26690: Apache httpd: mod_session NULL pointer dereference
Content-Type: text/plain; charset=utf-8


CVE-2021-26690: mod_session NULL pointer dereference

Severity: low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.0 to 2.4.46

Description:
Apache HTTP Server 2.4.0 to 2.4.46
A specially crafted Cookie header handled by mod_session can cause a NULL pointer dereference and crash, leading to a possible Denial Of Service
    
Mitigation:
None

Credit:
This issue was discovered and reported by GHSL team member @antonio-morales (Antonio Morales)

References:
https://httpd.apache.org/security/vulnerabilities_24.html

