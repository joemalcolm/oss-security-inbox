Received: (qmail 18361 invoked by uid 550); 9 Apr 2026 09:27:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13824 invoked from network); 9 Apr 2026 08:58:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2acf7656-23bd-438e-36e7-c88c31cfdeb4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Apr 2026 08:57:57 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-34538: Apache Airflow: Authorization bypass in DagRun
 wait endpoint (XCom exposure) 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 3.0.0 before 3.2.0

Description:

Apache Airflow versions 3.0.0 through 3.1.8 DagRun wait endpoint returns XC=
om result values even to users who only have DAG Run read permissions, such=
 as the Viewer role.This behavior conflicts with the FAB RBAC model, which =
treats XCom as a separate protected resource, and with the security model d=
ocumentation that defines the Viewer role as read-only.

Airflow uses the FAB Auth Manager to manage access control on a per-resourc=
e basis. The Viewer role is intended to be read-only by default, and the se=
curity model documentation defines Viewer users as those who can inspect DA=
Gs without accessing sensitive execution results.

Users are recommended to upgrade to Apache Airflow 3.2.0 which resolves thi=
s issue.

Credit:

selen (finder)
Kevin Yang (remediation developer)

References:

https://github.com/apache/airflow/pull/64415
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-34538

