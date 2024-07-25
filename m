Received: (qmail 13618 invoked by uid 550); 25 Jul 2024 22:07:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9918 invoked from network); 25 Jul 2024 21:46:38 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "David M. Johnson" <snoopdave@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bf2ee337-e527-5027-ace2-f84014bdf7b8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jul 2024 21:46:28 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-25090: Apache Roller: Insufficient input validation for
 some user profile and bookmark fields when Roller in untested-users mode 

Severity: low

Affected versions:

- Apache Roller 5.0.0 before 6.1.3

Description:

Insufficient input validation and sanitation in Profile name & screenname, =
Bookmark name & description and blogroll name features in all versions of A=
pache Roller on all platforms allows an authenticated user to perform an XS=
S attack. Mitigation: if you do not have Roller configured for untrusted us=
ers, then you need to do nothing because you trust your users to author raw=
 HTML and other web content. If you are running with untrusted users then y=
ou should upgrade to Roller 6.1.3.

This issue affects Apache Roller: from 5.0.0 before 6.1.3.

Users are recommended to upgrade to version 6.1.3, which fixes the issue.

Credit:

Jacob Hazak (reporter)

References:

https://roller.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-25090

