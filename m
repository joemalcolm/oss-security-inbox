Received: (qmail 15371 invoked by uid 550); 28 Feb 2024 14:06:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23776 invoked from network); 28 Feb 2024 10:30:57 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cf01a7cd-c350-7340-2be9-0592aa305ab5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 28 Feb 2024 10:33:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-24779: Apache Superset: Improper data authorization when
 creating a new dataset 

Affected versions:

- Apache Superset before 3.0.4
- Apache Superset 3.1.0 before 3.1.1

Description:

Apache Superset with custom roles that include `can write on dataset` and w=
ithout all data access permissions, allows for users to create virtual data=
sets to data they don't have access to. These users could then use those vi=
rtual datasets to get access to unauthorized data.
This issue affects Apache Superset: before 3.0.4, from 3.1.0 before 3.1.1.

Users are recommended to upgrade to version 3.1.1 or 3.0.4, which fixes the=
 issue.

Credit:

Daniel Pedro Vaz Gaspar (remediation developer)
@DLT1412 (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-24779

