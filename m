Received: (qmail 12172 invoked by uid 550); 9 Oct 2024 12:53:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9755 invoked from network); 9 Oct 2024 11:57:42 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Simon Steiner <ssteiner@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4c2b0232-fc34-75b8-5553-65aa00407e32@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 09 Oct 2024 11:57:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-28168: Apache XML Graphics FOP: XML External Entity (XXE)
 Processing 

Severity: moderate

Affected versions:

- Apache XML Graphics FOP 2.9

Description:

Improper Restriction of XML External Entity Reference ('XXE') vulnerability=
 in Apache XML Graphics FOP.

This issue affects Apache XML Graphics FOP: 2.9.

Users are recommended to upgrade to version 2.10, which fixes the issue.

This issue is being tracked as FOP-3168=20

Credit:

c1gar of Shanxi Normal University (finder)

References:

https://xmlgraphics.apache.org/security.html
https://xmlgraphics.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-28168
https://issues.apache.org/jira/browse/FOP-3168

