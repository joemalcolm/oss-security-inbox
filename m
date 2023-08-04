Received: (qmail 32234 invoked by uid 550); 4 Aug 2023 15:25:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30584 invoked from network); 4 Aug 2023 15:24:51 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4af9d0e4-e025-9422-b141-48618eb311a9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 04 Aug 2023 15:24:38 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?CVE-2023-39508=3A_Apache_Airflow=3A_Airf?=
 =?UTF-8?Q?low_=22Run_task=22_feature_allows_execut?=
 =?UTF-8?Q?ion_with_unnecessary_priviledges=20?=

Severity: moderate

Affected versions:

- Apache Airflow before 2.6.0

Description:

Execution with Unnecessary Privileges, : Exposure of Sensitive Information =
to an Unauthorized Actor vulnerability in Apache Software Foundation Apache=
 Airflow.The "Run Task" feature enables authenticated user to bypass some o=
f the restrictions put in place. It allows to execute code in the webserver=
 context as well as allows to bypas limitation of access the user has to ce=
rtain DAGs. The "Run Task" feature is considered dangerous and it has been =
removed entirely in Airflow 2.6.0

This issue affects Apache Airflow: before 2.6.0.

Credit:

balis0ng (finder)

References:

https://github.com/apache/airflow/pull/29706
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-39508

