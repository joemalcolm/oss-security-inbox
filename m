Received: (qmail 13616 invoked by uid 550); 12 Sep 2023 09:14:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32468 invoked from network); 12 Sep 2023 09:01:05 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <121afd25-2b10-705f-3278-42ef440f41e0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Sep 2023 09:00:47 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?CVE-2023-40712=3A_Apache_Airflow=3A_Secr?=
 =?UTF-8?Q?ets_can_be_unmasked_in_the_=22Rendered_T?=
 =?UTF-8?Q?emplate=22_=20?=

Severity: moderate

Affected versions:

- Apache Airflow before 2.7.1

Description:

Apache Airflow, versions before 2.7.1, is affected by a vulnerability that =
allows authenticated=C2=A0users who have access to see the task/dag in the =
UI, to craft a URL, which could lead to unmasking the secret configuration =
of the task that otherwise would be masked in the UI.

Users are strongly advised to upgrade to=C2=A0version 2.7.1 or later which =
has removed the vulnerability.

Credit:

klexadoc (finder)

References:

https://github.com/apache/airflow/pull/33512
https://github.com/apache/airflow/pull/33516
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-40712

