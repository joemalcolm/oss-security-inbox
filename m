Received: (qmail 29771 invoked by uid 550); 14 May 2024 12:24:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7221 invoked from network); 14 May 2024 10:16:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ac96fd18-bdb0-beef-cebf-c3506fa9458a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 May 2024 10:15:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-32077: Apache Airflow: XSS vulnerability in Task Instance
 Log/Log Details 

Severity: moderate

Affected versions:

- Apache Airflow 2.9.0 before 2.9.1

Description:

Apache Airflow version 2.9.0 has a vulnerability that allows an authenticat=
ed attacker to inject malicious data into the task instance logs.=C2=A0
Users are recommended to upgrade to version 2.9.1, which fixes this issue.

Credit:

Ming (finder)
Jens Scheffler (remediation developer)

References:

https://github.com/apache/airflow/pull/38882
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-32077

