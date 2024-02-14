Received: (qmail 30250 invoked by uid 550); 14 Feb 2024 11:18:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3386 invoked from network); 14 Feb 2024 11:00:18 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a9ae2b3b-4219-353d-9498-df65663cf774@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 14 Feb 2024 11:03:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-23952: Apache Superset: Allows for uncontrolled resource
 consumption via a ZIP bomb (version range fix for CVE-2023-46104) 

Affected versions:

- Apache Superset before 2.1.3
- Apache Superset 3.0.0 before 3.0.2

Description:

This is a duplicate for CVE-2023-46104. With correct CVE version ranges for=
 affected Apache Superset.
=20
Uncontrolled resource consumption can be triggered by authenticated attacke=
r that uploads a malicious ZIP to import database, dashboards or datasets. =
=C2=A0
This vulnerability exists in Apache Superset versions up to and including 2=
.1.2 and versions 3.0.0, 3.0.1.

Credit:

Dor Konis =E2=80=93 GE Vernova (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-23952

