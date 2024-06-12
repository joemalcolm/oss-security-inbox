Received: (qmail 25856 invoked by uid 550); 12 Jun 2024 15:50:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20317 invoked from network); 12 Jun 2024 14:04:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1d4388b8-bff8-d0ae-f234-f3f96c4579ba@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 12 Jun 2024 14:03:16 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-36264: Apache Submarine Commons Utils: default secret 

Severity: low

Affected versions:

- Apache Submarine Commons Utils 0.8.0 or later

Description:

** UNSUPPORTED WHEN ASSIGNED ** Improper Authentication vulnerability in Ap=
ache Submarine Commons Utils.

This issue affects Apache Submarine Commons Utils: from 0.8.0.

As this project is retired, we do not plan to release a version that fixes =
this issue. Users are recommended to find an alternative or restrict access=
 to the instance to trusted users.

NOTE: This vulnerability only affects products that are no longer supported=
 by the maintainer.

This issue is being tracked as SUBMARINE-1417=20

Credit:

Jonathan Leitschuh (finder)
L0ne1y (finder)

References:

https://github.com/apache/submarine/pull/1125
https://attic.apache.org/projects/submarine.html
https://www.cve.org/CVERecord?id=3DCVE-2024-36264
https://issues.apache.org/jira/browse/SUBMARINE-1417

