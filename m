Received: (qmail 19568 invoked by uid 550); 1 Mar 2024 22:41:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25613 invoked from network); 1 Mar 2024 10:27:13 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <997fb0a3-e9b6-7b55-00db-af69f1017420@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 01 Mar 2024 10:30:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-26280: Apache Airflow: Overly broad default permissions
 for Viewer/Ops (audit logs) 

Severity: low

Affected versions:

- Apache Airflow before 2.8.2

Description:

Apache Airflow, versions before 2.8.2, has a vulnerability that allows auth=
enticated Ops and Viewers users to view all information on audit logs, incl=
uding dag names and usernames they were not permitted to view.=C2=A0With 2.=
8.2 and newer, Ops and Viewer users do not have audit log permission by def=
ault, they need to be explicitly granted permissions to see the logs. Only =
admin users have audit log permission by default.

Users of Apache Airflow are recommended to upgrade to version 2.8.2 or newe=
r to mitigate the risk associated with this vulnerability

Credit:

Yusuf AYDIN (@h1_yusuf) (finder)

References:

https://github.com/apache/airflow/pull/37501
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-26280

