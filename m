Received: (qmail 28052 invoked by uid 550); 21 Dec 2023 14:29:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32087 invoked from network); 21 Dec 2023 07:04:13 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e2321f2c-9e32-1b6f-1558-0c3190883ee6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 Dec 2023 07:04:36 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-48291: Apache Airflow: Improper access control to DAG
 resources 

Severity: moderate

Affected versions:

- Apache Airflow before 2.8.0

Description:

Apache Airflow, in versions prior to 2.8.0, contains a security vulnerabili=
ty that allows an authenticated user with limited access to some DAGs, to c=
raft a request that could give the user write access to various DAG resourc=
es for DAGs that the user had no access to, thus, enabling the user to clea=
r DAGs they shouldn't.

This is a missing fix for CVE-2023-42792 in Apache Airflow 2.7.2=C2=A0

Users of Apache Airflow are strongly advised to upgrade to version 2.8.0 or=
 newer to mitigate the risk associated with this vulnerability.

Credit:

balis0ng (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/34366
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-48291

