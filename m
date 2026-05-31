Received: (qmail 9469 invoked by uid 550); 31 May 2026 11:44:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14044 invoked from network); 31 May 2026 11:38:50 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bfcbedda-a32c-d0f2-4afc-ebe94d37a4d6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 11:37:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-40961: Apache Airflow: Open Redirect Bypass Vulnerability
 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 3.0.0 before 3.2.2

Description:

A bug in the login redirect route in Apache Airflow allowed authenticated u=
sers to craft URLs that bypassed the `is_safe_url` check, enabling redirect=
ion from a trusted Airflow domain to an attacker-controlled origin. Users a=
re advised to upgrade to `apache-airflow` 3.2.2 or later. As a defense-in-d=
epth mitigation, deployment operators can place Airflow behind a reverse pr=
oxy that strips off-domain `next=3D` query parameters before they reach the=
 login endpoint.

Credit:

Fushuling@secsys (finder)
RacerZ@secsys (finder)
Aritra Basu (remediation developer)

References:

https://github.com/apache/airflow/pull/65557
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-40961

