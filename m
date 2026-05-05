Received: (qmail 27803 invoked by uid 550); 5 May 2026 17:29:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13387 invoked from network); 5 May 2026 16:49:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <041a02c5-9715-1350-1749-35c19d7cf6b7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 05 May 2026 16:47:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-28780: Apache HTTP Server: buffer overflow in
 mod_proxy_ajp via  ajp_msg_check_header() 

Severity: low=20

Affected versions:

- Apache HTTP Server through 2.4.66

Description:

Heap-based Buffer Overflow vulnerability in mod_proxy_ajp of Apache HTTP Se=
rver.
If mod_proxy_ajp connects to a malicious AJP server this AJP server can sen=
d a malicious AJP message back to mod_proxy_ajp and cause it to write 4 att=
acker controlled bytes after the end of a heap based buffer.

This issue affects Apache HTTP Server: through 2.4.66.

Users are recommended to upgrade to version 2.4.67, which fixes the issue.

Credit:

Andrew Lacambra (finder)
Elhanan Haenel (finder)
Tianshuo Han (<hantianshuo233@gmail.com>) (finder)
Tristan Madani (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-28780

Timeline:

2026-02-04: reported
2026-03-18: reported by 3rd finder
2026-02-28: reported by 2nd finder

