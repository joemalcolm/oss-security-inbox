Received: (qmail 32710 invoked by uid 550); 13 Oct 2023 15:21:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26186 invoked from network); 13 Oct 2023 15:14:26 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a31439c1-ac0f-ddce-b675-467bdd868b32@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 13 Oct 2023 15:14:12 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-42792: Apache Airflow: Improper access control to DAG
 resources 

Severity: moderate

Affected versions:

- Apache Airflow before 2.7.2

Description:

Apache Airflow, in versions prior to 2.7.2, contains a security vulnerabili=
ty that allows an authenticated user with limited access to some DAGs, to c=
raft a request that could give the user write access to various DAG resourc=
es for DAGs that the user had no access to, thus, enabling the user to clea=
r DAGs they shouldn't.

Users of Apache Airflow are strongly advised to upgrade to version 2.7.2 or=
 newer to mitigate the risk associated with this vulnerability.

Credit:

balis0ng (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/34366
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-42792

