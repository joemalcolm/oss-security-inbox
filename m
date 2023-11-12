Received: (qmail 12094 invoked by uid 550); 12 Nov 2023 12:41:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28493 invoked from network); 12 Nov 2023 11:11:20 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8ad24599-cecf-33c5-6e5c-c592a786e2cc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Nov 2023 11:11:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-47037: Apache Airflow missing fix for CVE-2023-40611 in
 2.7.1 (DAG run broken access) 

Severity: low

Affected versions:

- Apache Airflow before 2.7.3

Description:

We failed to apply=C2=A0CVE-2023-40611 in 2.7.1 and this vulnerability was =
marked as fixed then.=C2=A0

Apache Airflow, versions before 2.7.3, is affected by a vulnerability that =
allows authenticated and DAG-view authorized Users to modify some DAG run d=
etail values when submitting notes. This could have them alter details such=
 as configuration parameters, start date, etc.=C2=A0

Users should upgrade to version 2.7.3 or later which has removed the vulner=
ability.

Credit:

Tareq Ahamed from Hackerone (reporter)
 Augusto Hidalgo (remediation developer)

References:

https://github.com/apache/airflow/pull/33413
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-47037

