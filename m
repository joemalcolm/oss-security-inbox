Received: (qmail 9675 invoked by uid 550); 29 Dec 2025 17:08:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11655 invoked from network); 29 Dec 2025 14:19:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Philipp Zehnder <zehnder@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <144dedd1-608b-f0e3-8960-5b1b0fe6ba98@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Dec 2025 14:17:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-47411: Apache StreamPipes: Leverage of User ID for
 Privilege Escalation 

Severity: important=20

Affected versions:

- Apache StreamPipes 0.69.0 through 0.97.0

Description:

A user with a legitimate non-administrator account can exploit a vulnerabil=
ity in the user ID creation mechanism in Apache StreamPipes that allows the=
m to swap the username of an existing user with that of an administrator.=
=C2=A0

This vulnerability allows an attacker to gain administrative control over t=
he application by manipulating JWT tokens, which can lead to data tampering=
, unauthorized access and other security issues.






This issue affects Apache StreamPipes: through 0.97.0.

Users are recommended to upgrade to version 0.98.0, which fixes the issue.

Credit:

darren.xuan@mantelgroup.com.au (finder)

References:

https://streampipes.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-47411

