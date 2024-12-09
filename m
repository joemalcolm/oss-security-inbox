Received: (qmail 26070 invoked by uid 550); 9 Dec 2024 16:11:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17521 invoked from network); 9 Dec 2024 12:38:13 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0f3aa723-9bf1-71b3-266e-9159192ec0b7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 09 Dec 2024 12:37:46 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-53949: Apache Superset: Lower privilege users are able to
 create Role when FAB_ADD_SECURITY_API is enabled 

Affected versions:

- Apache Superset 2.0.0 before 4.1.0

Description:

Improper Authorization vulnerability in Apache Superset when=C2=A0FAB_ADD_S=
ECURITY_API is enabled (disabled by default). Allows for lower privilege us=
ers to use this API.

=C2=A0issue affects Apache Superset: from 2.0.0 before 4.1.0.

Users are recommended to upgrade to version 4.1.0, which fixes the issue.

Credit:

Jonathan Zimmerman (reporter)
Hugh Miles (remediation developer)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-53949

