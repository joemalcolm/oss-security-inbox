Received: (qmail 1436 invoked by uid 550); 12 Dec 2025 15:56:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3404 invoked from network); 12 Dec 2025 09:06:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <01567387-044d-39df-c015-3c784ac29958@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Dec 2025 09:04:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-65995: Apache Airflow: Disclosure of secrets to UI via
 kwargs 

Severity: moderate=20

Affected versions:

- Apache Airflow (apache-airflow) before 3.1.4

Description:

When a DAG failed during parsing, Airflow=E2=80=99s error-reporting in the =
UI could include the full kwargs passed to the operators. If those kwargs c=
ontained sensitive values (such as secrets), they might be exposed in the U=
I tracebacks to authenticated users who had permission to view that DAG.=C2=
=A0

The issue has been fixed in Airflow 3.1.4, and users are strongly advised t=
o upgrade to prevent potential disclosure of sensitive information.

Credit:

Frieder Gottman (Cariad) (finder)
Jens Scheffler (Bosch) (reporter)
Jens Scheffler (Bosch) (remediation developer)

References:

https://github.com/apache/airflow/pull/58252
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-65995

