Received: (qmail 19624 invoked by uid 550); 17 Apr 2024 22:28:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5378 invoked from network); 17 Apr 2024 22:24:04 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <747a6b7c-6cd3-a027-d0db-7235caa2ea11@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Apr 2024 22:19:39 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?CVE-2024-31869=3A_Apache_Airflow=3A_Sens?=
 =?UTF-8?Q?itive_configuration_for_providers_displa?=
 =?UTF-8?Q?yed_when_=22non-sensitive-only=22_config?= =?UTF-8?Q?_used=20?=

Severity: low

Affected versions:

- Apache Airflow 2.7.0 through 2.8.4

Description:

Airflow versions 2.7.0 through 2.8.4 have a vulnerability that allows an au=
thenticated user to see sensitive provider configuration via the "configura=
tion" UI page=C2=A0when "non-sensitive-only" was set as "webserver.expose_c=
onfig" configuration (The celery provider is the only community provider cu=
rrently that has sensitive configurations). You should migrate to Airflow 2=
.9 or change your "expose_config" configuration to False as a workaround. T=
his is similar, but different to  CVE-2023-46288 https://github.com/advisor=
ies/GHSA-9qqg-mh7c-chfq  which concerned API, not UI configuration page.

Credit:

Manmeet Rangoola (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/38795
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-31869

