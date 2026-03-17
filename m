Received: (qmail 7584 invoked by uid 550); 17 Mar 2026 11:55:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10058 invoked from network); 17 Mar 2026 06:24:16 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f36ea09f-f005-1c69-fdbd-b80c13b2a0b9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 17 Mar 2026 06:24:00 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-28779: Apache Airflow: Path of session token in cookie
 does not consider base_url - session hijacking via co-hosted applications 

Severity: Medium=20

Affected versions:

- Apache Airflow (apache-airflow) 3.0.0 before 3.1.8

Description:

Apache Airflow versions 3.1.0 through 3.1.7=C2=A0session token (_token) in =
cookies is set to path=3D/ regardless of the configured [webserver] base_ur=
l or [api] base_url.
This allows any application co-hosted under the same domain to capture vali=
d Airflow session tokens from HTTP request headers, allowing full session t=
akeover without attacking Airflow itself.

Users are recommended to upgrade to Apache Airflow 3.1.8 or later, which re=
solves this issue.

Credit:

Daniel Wolf (finder)
Daniel Wolf (remediation developer)

References:

https://github.com/apache/airflow/pull/62771
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-28779

