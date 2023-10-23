Received: (qmail 17661 invoked by uid 550); 23 Oct 2023 15:47:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1063 invoked from network); 23 Oct 2023 15:39:00 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bd530d8e-f453-71e6-6645-029ae552fa3d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 23 Oct 2023 15:38:43 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?CVE-2023-46288=3A_Apache_Airflow=3A_Sens?=
 =?UTF-8?Q?itive_parameters_exposed_in_API_when_=22?=
 =?UTF-8?Q?non-sensitive-only=22_configuration_is_s?= =?UTF-8?Q?et=20?=

Severity: low

Affected versions:

- Apache Airflow 2.4.0 before 2.7.0

Description:

Exposure of Sensitive Information to an Unauthorized Actor vulnerability in=
 Apache Airflow.This issue affects Apache Airflow from 2.4.0 to 2.7.0.

Sensitive configuration information has been exposed to authenticated users=
 with the ability to read configuration via Airflow REST API for configurat=
ion even when the expose_config=C2=A0option is set to non-sensitive-only. T=
he expose_config option is False by default. It is recommended to upgrade t=
o a version that is not affected if you set expose_config=C2=A0to non-sensi=
tive-only=C2=A0configuration. This is a different error than CVE-2023-45348=
=C2=A0which allows authenticated user to retrieve individual configuration =
values in 2.7.* by specially crafting their request (solved in 2.7.2).

Users are recommended to upgrade to version 2.7.2, which fixes the issue an=
d additionally fixes=C2=A0CVE-2023-45348.

Credit:

id_No2015429 of 3H Secruity Team (finder)
Lee, Wei (finder)
Lee, Wei (remediation developer)

References:

https://github.com/apache/airflow/pull/32261
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-46288

