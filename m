Received: (qmail 11585 invoked by uid 550); 4 May 2026 16:09:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28608 invoked from network); 4 May 2026 11:52:12 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <161fe7a0-b7da-73d1-7c8e-4489523b6910@apache.org>
Content-Transfer-Encoding: 7bit
Date: Mon, 04 May 2026 11:51:57 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-34059: Apache HTTP Server: mod_proxy_ajp: Heap Over-Read
 and memory disclosure in  ajp_parse_data() 

Severity: low 

Affected versions:

- Apache HTTP Server through 2.4.66

Description:

Buffer Over-read vulnerability in Apache HTTP Server.

This issue affects Apache HTTP Server: through 2.4.66.

Users are recommended to upgrade to version 2.4.67, which fixes the issue.

Credit:

Elhanan Haenel (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-34059

Timeline:

2026-03-20: Report received
2026-05-04: fixed in 2.4.x by r1933346

