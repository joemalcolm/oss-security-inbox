Received: (qmail 13428 invoked by uid 550); 12 Nov 2023 12:41:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29815 invoked from network); 12 Nov 2023 11:11:27 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3a177569-b692-e98c-7996-1bd4bec9e6d5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Nov 2023 11:11:12 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-42781: Apache Airflow: Permission verification bypass
 allows viewing dagruns of other dags 

Severity: low

Affected versions:

- Apache Airflow before 2.7.3

Description:

Apache Airflow, versions before 2.7.3, has a vulnerability that allows an a=
uthorized user who has access to read specific DAGs only, to read informati=
on about task instances in other DAGs.=C2=A0 This is a different issue than=
 CVE-2023-42663 but leading to similar outcome.
Users of Apache Airflow are advised to upgrade to version 2.7.3 or newer to=
 mitigate the risk associated with this vulnerability.

Credit:

balis0ng (finder)
Hussein Awala (remediation developer)

References:

https://github.com/apache/airflow/pull/34939
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-42781

