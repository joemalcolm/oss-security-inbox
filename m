Received: (qmail 13365 invoked by uid 550); 9 Feb 2026 16:12:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9750 invoked from network); 9 Feb 2026 09:48:15 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <60a59fa4-ed6b-7e3b-0df6-e39f953f9f0c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 09 Feb 2026 09:48:01 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-22922: Apache Airflow: Airflow externalLogUrl Permission
 Bypass 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 3.1.0 before 3.1.7

Description:

Apache Airflow versions 3.1.0 through 3.1.6 contain an authorization flaw t=
hat can allow an authenticated user with custom permissions limited to task=
 access to view task logs without having task log access.=20

Users are recommended to upgrade to Apache Airflow 3.1.7 or later, which re=
solves this issue.

Credit:

34selen (finder)
Shubham Raj (remediation developer)

References:

https://github.com/apache/airflow/pull/60412
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-22922

