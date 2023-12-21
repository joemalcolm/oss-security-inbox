Received: (qmail 29714 invoked by uid 550); 21 Dec 2023 14:30:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32330 invoked from network); 21 Dec 2023 07:04:41 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <12f5129a-e222-69df-3760-456569ef1880@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 Dec 2023 07:05:04 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49920: Apache Airflow: Missing CSRF protection on
 DAG/trigger 

Severity: moderate

Affected versions:

- Apache Airflow 2.7.0 before 2.8.0

Description:

Apache Airflow, version 2.7.0 through 2.7.3, has a vulnerability that allow=
s an attacker to trigger a DAG in a GET request without CSRF validation.=C2=
=A0As a result, it was possible for a malicious website opened in the same =
browser - by the user who also had Airflow UI opened - to trigger the execu=
tion of DAGs without the user's consent.
Users are advised to upgrade to version 2.8.0 or later which is not affected

Credit:

Tareq Ahamed ( 0xt4req) (finder)
Jens Scheffler (remediation developer)

References:

https://github.com/apache/airflow/pull/36026
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-49920

