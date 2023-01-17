X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/01/17/7
Message-ID: <1801fa47-41b7-1771-f1fa-d3484c109fd4@apache.org>
Date: Tue, 17 Jan 2023 19:09:35 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-37436: Apache HTTP Server: mod_proxy prior to 2.4.55 allows a backend to trigger HTTP response splitting 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

Prior to Apache HTTP Server 2.4.55, a malicious backend can cause the response headers to be truncated early, resulting in some headers being incorporated into the response body. If the later headers have any security purpose, they will not be interpreted by the client.

Credit:

Dimas Fariski Setyawan Putra (@nyxsorcerer) (finder)

References:

https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-37436

Timeline:

2022-07-14: Reported to security team

