Received: (qmail 31966 invoked by uid 550); 9 Mar 2026 10:51:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11987 invoked from network); 9 Mar 2026 10:37:36 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e94b50ef-bebb-e821-6721-b812d1afb97e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 09 Mar 2026 10:36:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-25604: Apache Airflow AWS Auth Manager - Host Header
 Injection Leading to SAML Authentication Bypass 

Severity: medium=20

Affected versions:

- Apache Airflow Providers Amazon (apache-airflow-providers-amazon) 8.0.0 b=
efore 9.22.0

Description:

In AWS Auth manager, the origin of the SAML authentication has been used as=
 provided by the client and not verified against the actual instance URL.=
=C2=A0
This allowed to gain access to different instances with potentially differe=
nt access controls by reusing SAML response from other instances.

You should upgrade to 9.22.0 version of provider if you use AWS Auth Manage=
r.

Credit:

Sungwuk Jung (finder)

References:

https://github.com/apache/airflow/pull/61368
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-25604

