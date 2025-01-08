Received: (qmail 21929 invoked by uid 550); 8 Jan 2025 15:06:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15694 invoked from network); 8 Jan 2025 08:23:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <db3c7d3a-5bfa-63da-7415-b4f5e7bdd31e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jan 2025 08:22:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45033: Apache Airflow Fab Provider: Application does not
 invalidate session after password change via Airflow cli 

Severity: low

Affected versions:

- Apache Airflow Fab Provider before 1.5.2

Description:

Insufficient Session Expiration vulnerability in Apache Airflow Fab Provide=
r.

This issue affects Apache Airflow Fab Provider: before 1.5.2.

When user password has been changed with admin CLI, the sessions for that u=
ser have not been cleared, leading to insufficient session expiration, thus=
 logged users could continue to be logged in even after the password was ch=
anged. This only happened when the password was changed with CLI. The probl=
em does not happen in case change was done with webserver thus this is diff=
erent from=C2=A0 CVE-2023-40273 https://github.com/advisories/GHSA-pm87-24w=
q-r8w9 =C2=A0which was addressed in Apache-Airflow 2.7.0


Users are recommended to upgrade to version 1.5.2, which fixes the issue.

Credit:

Saurabh Banawar (reporter)

References:

https://github.com/apache/airflow/pull/45139
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-45033

