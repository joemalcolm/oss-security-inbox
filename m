Received: (qmail 20304 invoked by uid 550); 8 Feb 2026 16:45:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5282 invoked from network); 8 Feb 2026 16:33:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lenny Primak <lprimak@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a545932d-1a13-17b0-3484-92bb0ec526f2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 08 Feb 2026 16:30:14 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-23901: Apache Shiro: Brute force attack possible to
 determine valid user names 

Severity: low=20

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-core) before 2.0.7

Description:

Observable Timing Discrepancy vulnerability in Apache Shiro.

This issue affects Apache Shiro: from 1.*, 2.* before 2.0.7.

Users are recommended to upgrade to version 2.0.7 or later, which fixes the=
 issue.

Prior to Shiro 2.0.7, code paths for non-existent vs. existing users are di=
fferent enough,
that a brute-force attack may be able to tell, by timing the requests only,=
 determine if
the request failed because of a non-existent user vs. wrong password.

The most likely attack vector is a local attack only.
Shiro security model=C2=A0 https://shiro.apache.org/security-model.html#use=
rname_enumeration =C2=A0discusses this as well.

Typically, brute force attack can be mitigated at the infrastructure level.

Credit:

4ra1n (finder)
Y4tacker (finder)
lprimak (remediation developer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-23901

