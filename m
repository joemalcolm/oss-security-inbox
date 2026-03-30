Received: (qmail 23750 invoked by uid 550); 30 Mar 2026 21:50:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3723 invoked from network); 30 Mar 2026 21:40:49 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jens Scheffler <jscheffl@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a984d919-5f4c-2f56-8c9b-7a3a07c87368@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 30 Mar 2026 21:39:53 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-32794: Apache Airflow Provider for Databricks: TLS
 Certificate Verification Disabled in Databricks Provider K8s Token
 Exchange 

Severity: low=20

Affected versions:

- Apache Airflow Provider for Databricks (apache-airflow-providers-databric=
ks) 1.10.0 before 1.12.0

Description:

Improper Certificate Validation vulnerability in Apache Airflow Provider fo=
r Databricks. Provider code did not validate certificates for connections t=
o Databricks back-end which could result in a man-of-a-middle attack that t=
raffic is intercepted and manipulated or credentials exfiltrated w/o notice.

This issue affects Apache Airflow Provider for Databricks: from 1.10.0 befo=
re 1.12.0.

Users are recommended to upgrade to version 1.12.0, which fixes the issue.

Credit:

Kai Aizen (reporter)
Marcin Wojtyczka (remediation developer)

References:

https://github.com/apache/airflow/pull/63704
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-32794

