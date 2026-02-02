Received: (qmail 15504 invoked by uid 550); 2 Feb 2026 13:58:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17960 invoked from network); 2 Feb 2026 11:52:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Francesco_Chicchiricc=C3=B2?= <ilgrosso@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <216d53c2-a071-3960-0ac0-ca7e659b1c6a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 02 Feb 2026 11:51:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-23794: Apache Syncope: Reflected XSS on Enduser Login 

Severity: important=20

Affected versions:

- Apache Syncope (org.apache.syncope.client.idrepo:syncope-client-idrepo-co=
mmon-ui) 3.0 through 3.0.15
- Apache Syncope (org.apache.syncope.client.idrepo:syncope-client-idrepo-co=
mmon-ui) 4.0 through 4.0.3

Description:

Reflected XSS in Apache Syncope's Enduser Login page.
An attacker that tricks a legitimate user into clicking a malicious link an=
d logging in to Syncope Enduser could steal that user's credentials.

This issue affects Apache Syncope: from 3.0 through 3.0.15, from 4.0 throug=
h 4.0.3.

Users are recommended to upgrade to version 3.0.16 / 4.0.4, which fix this =
issue.

Credit:

Kasper Karlsson (finder)
Karin Taliga (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-23794

