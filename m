Received: (qmail 26580 invoked by uid 550); 24 Jan 2024 12:50:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26455 invoked from network); 24 Jan 2024 11:04:52 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4eb538d0-759f-582f-74a3-52a26015b531@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jan 2024 11:06:48 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-50944: Apache Airflow: Bypass permission verification to
 read code of other dags 

Severity: low

Affected versions:

- Apache Airflow before 2.8.1

Description:

Apache Airflow, versions before 2.8.1, have a vulnerability that allows an =
authenticated user to access the source code of a DAG to which they don't h=
ave access.=C2=A0This vulnerability is considered low since it requires an =
authenticated user to exploit it. Users are recommended to upgrade to versi=
on 2.8.1, which fixes this issue.

Credit:

Timon8 Zhang (finder)

References:

https://github.com/apache/airflow/pull/36257
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-50944

