Received: (qmail 30060 invoked by uid 550); 21 Dec 2023 14:30:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32407 invoked from network); 21 Dec 2023 07:04:48 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <168cd715-c39b-aadc-0bb0-9bda2b06da0a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 Dec 2023 07:05:17 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?CVE-2023-50783=3A_Apache_Airflow=3A_Impr?=
 =?UTF-8?Q?oper_access_control_vulnerability_on_the?=
 =?UTF-8?Q?_=22varimport=22_endpoint=20?=

Severity: low

Affected versions:

- Apache Airflow before 2.8.0

Description:

Apache Airflow, versions before 2.8.0, is affected by a vulnerability that =
allows an authenticated user without the variable edit permission, to updat=
e a variable.
This flaw compromises the integrity of variable management, potentially lea=
ding to unauthorized data modification.
Users are recommended to upgrade to 2.8.0, which fixes this issue

Credit:

balis0ng (finder)
Ephraim Anierobi (remediation developer)

References:

https://github.com/apache/airflow/pull/33932
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-50783

