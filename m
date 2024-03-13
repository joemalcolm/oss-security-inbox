Received: (qmail 27673 invoked by uid 550); 13 Mar 2024 18:36:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9279 invoked from network); 13 Mar 2024 17:46:28 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a55d1ca2-a172-e1f7-1091-5c0a9c213901@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 Mar 2024 17:50:30 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-28746: Apache Airflow: Ignored Airflow Permissions 

Severity: moderate

Affected versions:

- Apache Airflow 2.8.0 before 2.8.3

Description:

Apache Airflow, versions 2.8.0 through 2.8.2, has a vulnerability that allo=
ws an authenticated user with limited permissions to access resources such =
as variables, connections, etc from the UI which they do not have permissio=
n to access.=C2=A0

Users of Apache Airflow are recommended to upgrade to version 2.8.3 or newe=
r to mitigate the risk associated with this vulnerability

Credit:

Alex Liotta (finder)
Vincent(Vincbeck) (remediation developer)

References:

https://github.com/apache/airflow/pull/37881
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-28746

