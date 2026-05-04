Received: (qmail 22181 invoked by uid 550); 4 May 2026 16:10:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18400 invoked from network); 4 May 2026 14:22:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ce4b907b-4ee1-fad1-488a-b8cac997c813@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 04 May 2026 14:21:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-33523: Apache HTTP Server: multiple modules: HTTP
 response splitting forwarding malicious status line 

Severity: low=20

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.66

Description:

HTTP response splitting vulnerability in multiple Apache HTTP Server module=
s with untrusted or compromised backend servers.

This issue affects Apache HTTP Server: from through 2.4.66.

Users are recommended to upgrade to version 2.4.67, which fixes the issue.

Credit:

Haruki Oyama (Waseda University) (finder)
Merih Mengisteab (finder)
Dawit Jeong (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-33523

Timeline:

2026-03-05: reported
2026-05-04: 2.4.67 released
2026-05-04: fixed in 2.4.x by r1933360

