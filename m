Received: (qmail 9823 invoked by uid 550); 19 Dec 2023 13:46:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21782 invoked from network); 19 Dec 2023 09:13:50 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <da06c675-d869-64bc-0f77-e6ae5a962195@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 Dec 2023 09:14:12 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-46104: Apache Superset: Allows for uncontrolled resource
 consumption via a ZIP bomb 

Affected versions:

- Apache Superset before 2.1.3
- Apache Superset 3.0.0 before 3.0.1

Description:

Uncontrolled resource consumption can be triggered by authenticated attacke=
r that uploads a malicious ZIP to import database, dashboards or datasets.=
=C2=A0=C2=A0
This vulnerability exists in Apache Superset versions up to and including 2=
.1.2 and versions 3.0.0, 3.0.1.

Credit:

Dor Konis =E2=80=93 GE Vernova (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-46104

