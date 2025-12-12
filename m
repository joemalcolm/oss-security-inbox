Received: (qmail 28652 invoked by uid 550); 12 Dec 2025 15:56:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26593 invoked from network); 12 Dec 2025 09:05:03 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2a7c5a23-48cd-4bdf-4cca-e8c4035116f6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Dec 2025 09:03:55 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-66388: Apache Airflow: Secrets in rendered templates not
 redacted properly and exposed in the UI 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 3.1.0 before 3.1.4

Description:

A vulnerability in Apache Airflow allowed authenticated UI users to view se=
cret values in rendered templates due to secrets not being properly redacte=
d,=C2=A0potentially exposing secrets to users without the appropriate autho=
rization.

Users are recommended to upgrade to version 3.1.4, which fixes this issue.

Credit:

William Ashe (finder)
Amogh Desai (remediation developer)

References:

https://github.com/apache/airflow/pull/58772
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-66388

