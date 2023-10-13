Received: (qmail 32166 invoked by uid 550); 13 Oct 2023 15:21:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25950 invoked from network); 13 Oct 2023 15:14:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4e9ea108-acec-8d88-1ad3-9bec3c9b26dc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 13 Oct 2023 15:13:49 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?CVE-2023-42780=3A_Apache_Airflow=3A_Impr?=
 =?UTF-8?Q?oper_access_control_vulnerability_in_the?=
 =?UTF-8?Q?_=22List_dag_warnings=22_feature=20?=

Severity: low

Affected versions:

- Apache Airflow before 2.7.2

Description:

Apache Airflow, versions prior to 2.7.2, contains a security vulnerability =
that allows authenticated users of Airflow to list warnings for all DAGs, e=
ven if the user had no permission to see those DAGs. It would reveal the da=
g_ids and the stack-traces of import errors for those DAGs with import erro=
rs.
Users of Apache Airflow are advised to upgrade to version 2.7.2 or newer to=
 mitigate the risk associated with this vulnerability.

Credit:

balis0ng (finder)
Hussein Awala (remediation developer)

References:

https://github.com/apache/airflow/pull/34355
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-42780

