Received: (qmail 9795 invoked by uid 550); 4 May 2026 16:09:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23974 invoked from network); 4 May 2026 11:50:37 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c4c20eda-17a2-0159-5dcd-6c39f25279d5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 04 May 2026 11:50:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-34032: Apache HTTP Server: mod_proxy_ajp: Heap Buffer
 Over-Read Due to Missing Null-Termination Check (ajp_msg_get_string) 

Severity: low=20

Affected versions:

- Apache HTTP Server through 2.4.66

Description:

Improper Null Termination, Out-of-bounds Read vulnerability in Apache HTTP =
Server.

This issue affects Apache HTTP Server: through 2.4.66.

Users are recommended to upgrade to version 2.4.67, which fixes the issue.

Credit:

Tianshuo Han (<hantianshuo233@gmail.com>) (finder)
J=C3=A9r=C3=B4me Djouder (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-34032

Timeline:

2026-03-01: Report received
2026-05-04: fixed in 2.4.x by r1933343

