Received: (qmail 15467 invoked by uid 550); 29 Feb 2024 12:03:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13579 invoked from network); 29 Feb 2024 10:40:04 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d0618fa4-9742-f8e4-f411-b75e58cee28e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 29 Feb 2024 10:41:40 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-27906: Apache Airflow: Dag Code and Import Error
 Permissions Ignored 

Severity: moderate

Affected versions:

- Apache Airflow before 2.8.2

Description:

Apache Airflow, versions before 2.8.2, has a vulnerability that allows auth=
enticated users to view DAG code and import errors of DAGs they do not have=
 permission to view through the API and the UI.

Users of Apache Airflow are recommended to upgrade to version 2.8.2 or newe=
r to mitigate the risk associated with this vulnerability

Credit:

Alex Liotta (finder)
Sreenivasulu Suuda (finder)
vincbeck (Vincent) (remediation developer)
Jed Cunningham (remediation developer)

References:

https://github.com/apache/airflow/pull/37290
https://github.com/apache/airflow/pull/37468
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-27906

