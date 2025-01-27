Received: (qmail 15725 invoked by uid 550); 27 Jan 2025 16:17:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25892 invoked from network); 27 Jan 2025 14:28:23 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <eeb94943-afa2-7441-d93e-4ab57db51f94@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Jan 2025 14:28:12 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-24783: Apache Cocoon: continuations may not be private 

Severity: low

Affected versions:

- Apache Cocoon: all versions

Description:

** UNSUPPORTED WHEN ASSIGNED ** Incorrect Usage of Seeds in Pseudo-Random N=
umber Generator (PRNG) vulnerability in Apache Cocoon.

This issue affects Apache Cocoon: all versions.

When a continuation is created, it gets a random identifier. Because the ra=
ndom number generator used to generate these identifiers was seeded with th=
e startup time, it may not have been sufficiently unpredictable, and an att=
acker could use this to guess continuation ids and look up continuations th=
ey should not have had access to.

As a mitigation, you may enable the "session-bound-continuations" option to=
 make sure continuations are not shared across sessions.


As this project is retired, we do not plan to release a version that fixes =
this issue. Users are recommended to find an alternative or restrict access=
 to the instance to trusted users.

NOTE: This vulnerability only affects products that are no longer supported=
 by the maintainer.

Credit:

Xiangfan Wu from the StarMap Team of Legendsec at Qi-Anxin Group (finder)

References:

https://attic.apache.org/projects/cocoon.html
https://www.cve.org/CVERecord?id=3DCVE-2025-24783

