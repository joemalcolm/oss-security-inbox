Received: (qmail 9552 invoked by uid 550); 6 Sep 2024 16:49:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1500 invoked from network); 6 Sep 2024 16:46:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a4ab94dd-1025-1d5a-4bfd-dbebded0a215@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 06 Sep 2024 16:45:30 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45034: Apache Airflow: Authenticated DAG authors could
 execute code on scheduler nodes 

Severity: important

Affected versions:

- Apache Airflow before 2.10.1

Description:

Apache Airflow versions before 2.10.1 have a vulnerability that allows=C2=
=A0DAG authors to add local settings to the DAG folder and get it executed =
by the scheduler, where the scheduler is not supposed to execute code submi=
tted by the DAG author.=20
Users are advised to upgrade to version 2.10.1 or later, which has fixed th=
e vulnerability.

Credit:

Seokchan Yoon: https://github.com/ch4n3-yoon (finder)
Amogh Desai (remediation developer)

References:

https://github.com/apache/airflow/pull/41672
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-45034

