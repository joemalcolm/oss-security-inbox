X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/27
Message-ID: <aebe370d-e9ce-a8e6-e712-2e2eff0563bd@apache.org>
Date: Thu, 01 Oct 2026 18:08:44 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73636: Apache HTTP Server: mod_auth_digest one-time-nonce replay attack 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.68

Description:

Authentication bypass by capture-replay in mod_auth_digest in Apache Software Foundation Apache HTTP Server 2.4.x on all platforms allows a man-in-the-middle (MITM) attacker to replay captured digest authentication credentials via crafted requests that trigger garbage collection of the client's shared memory entry when AuthDigestNonceLifetime is set to 0.

Users are recommended to upgrade to version 2.4.69, which fixes this issue.

Credit:

Hyojae Lee (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73636

Timeline:

2026-06-08: Report received
2026-10-01: fixed in 2.4.x by r1937721
2026-10-01: 2.4.69 released

