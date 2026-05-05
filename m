Received: (qmail 3964 invoked by uid 550); 5 May 2026 14:59:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22034 invoked from network); 5 May 2026 09:13:26 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0505c6d1-eea7-f0ed-d3da-d8a8d9286011@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 05 May 2026 09:13:11 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-29168: Apache HTTP Server: mod_md unrestricted OCSP
 response 

Severity: low=20

Affected versions:

- Apache HTTP Server 2.4.30 through 2.4.66

Description:

Allocation of Resources Without Limits or Throttling vulnerability in Apach=
e HTTP Server's=C2=A0 mod_md via OCSP response data.

This issue affects Apache HTTP Server: from 2.4.30 through 2.4.66.

Users are recommended to upgrade to version 2.4.67, which fixes the issue.

Credit:

Pavel Kohout, Aisle Research, Aisle.com (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-29168

Timeline:

2026-03-02: reported
2026-05-04: fixed in 2.4.x by r1933352

