Received: (qmail 8064 invoked by uid 550); 4 May 2026 16:09:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16329 invoked from network); 4 May 2026 11:48:23 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4e7cd4cf-6f20-2080-a582-2e972cc78ba5@apache.org>
Content-Transfer-Encoding: 7bit
Date: Mon, 04 May 2026 11:48:09 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-33857: Apache HTTP Server: Off-by-one OOB reads in AJP
 getter functions 

Severity: low 

Affected versions:

- Apache HTTP Server through 2.4.66

Description:

Out-of-bounds Read vulnerability in mod_proxy_ajp of 

Apache HTTP Server.

This issue affects Apache HTTP Server: through 2.4.66.

Users are recommended to upgrade to version 2.4.67, which fixes the issue.

Credit:

Elhanan Haenel (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-33857

Timeline:

2026-03-20: Reported
2026-05-04: fixed by r1933341 in 2.4.x

