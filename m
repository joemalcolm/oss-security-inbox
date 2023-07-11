Received: (qmail 12048 invoked by uid 550); 11 Jul 2023 15:31:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27730 invoked from network); 11 Jul 2023 15:19:36 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <729502e9-8ccf-ea05-8f3e-4af516a3372f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 11 Jul 2023 15:19:18 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-46651: Apache Airflow: Security vulnerability on AirFlow
 Connections 

Severity: low

Affected versions:

- Apache Airflow before 2.6.3

Description:

Apache Airflow, versions before 2.6.3, is affected by a vulnerability that =
allows an unauthorized actor to gain access to sensitive information in Con=
nection edit view. This vulnerability is considered low since it requires s=
omeone with access to Connection resources specifically updating the connec=
tion to exploit it. Users should upgrade to version 2.6.3 or later which ha=
s removed the vulnerability.

References:

https://github.com/apache/airflow/pull/32309
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-46651

