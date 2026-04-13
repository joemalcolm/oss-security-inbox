Received: (qmail 9864 invoked by uid 550); 13 Apr 2026 14:24:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5536 invoked from network); 13 Apr 2026 14:23:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e7923a9f-c4de-2d86-6098-debe70249584@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Apr 2026 14:21:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-33858: Apache Airflow: Unsafe Deserialization via Legacy
 Serialization Keys (__type/__var) Bypass in XCom API 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 3.1.8 before 3.2.0

Description:

Dag Authors, who normally should not be able to execute code in the webserv=
er context could craft XCom payload causing the webserver to execute arbitr=
ary code. Since Dag Authors are already highly trusted, severity of this is=
sue is Low.


Users are recommended to upgrade to Apache Airflow 3.2.0, which resolves th=
is issue.

Credit:

wooseokdotkim (finder)
Amogh Desai (remediation developer)

References:

https://github.com/apache/airflow/pull/64148
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-33858

