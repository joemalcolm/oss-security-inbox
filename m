Received: (qmail 26564 invoked by uid 550); 12 May 2025 16:30:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13494 invoked from network); 12 May 2025 14:40:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2c9b49b7-43db-b2c8-8433-30083739dd29@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 12 May 2025 14:39:48 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27696: Apache Superset: Improper authorization leading to
 resource ownership takeover 

Affected versions:

- Apache Superset through 4.1.1

Description:

Improper Authorization vulnerability in Apache Superset allows ownership ta=
keover of dashboards, charts or datasets by authenticated users with read p=
ermissions.

This issue affects Apache Superset: through 4.1.1.

Users are recommended to upgrade to version 4.1.2 or above, which fixes the=
 issue.

Credit:

Jo=C3=A3o Marono (finder)
Daniel Gaspar (remediation developer)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-27696

