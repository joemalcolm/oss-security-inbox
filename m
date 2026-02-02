Received: (qmail 16225 invoked by uid 550); 2 Feb 2026 13:58:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32585 invoked from network); 2 Feb 2026 11:53:49 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Francesco_Chicchiricc=C3=B2?= <ilgrosso@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5da4dee8-3b76-bb95-5fcd-6388f98395e1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 02 Feb 2026 11:51:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-23795: Apache Syncope: Console XXE on Keymaster
 parameters 

Severity: moderate=20

Affected versions:

- Apache Syncope (org.apache.syncope.client.idrepo:syncope-client-idrepo-co=
nsole) 3.0 through 3.0.15
- Apache Syncope (org.apache.syncope.client.idrepo:syncope-client-idrepo-co=
nsole) 4.0 through 4.0.3

Description:

Improper Restriction of XML External Entity Reference vulnerability in Apac=
he Syncope Console.
An administrator with adequate entitlements to create or edit Keymaster par=
ameters via Console can construct malicious XML text to launch an XXE attac=
k, thereby causing sensitive data leakage occurs.

This issue affects Apache Syncope: from 3.0 through 3.0.15, from 4.0 throug=
h 4.0.3.

Users are recommended to upgrade to version 3.0.16 / 4.0.4, which fix this =
issue.

Credit:

follycat (finder)
Y0n3er (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-23795

