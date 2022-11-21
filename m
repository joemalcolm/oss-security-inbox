Received: (qmail 25824 invoked by uid 550); 21 Nov 2022 21:00:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11300 invoked from network); 21 Nov 2022 20:41:37 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f62db289-55b5-0163-ab99-783c23f2185b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 21 Nov 2022 20:41:11 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-40954: Apache Airflow Spark Provider, Apache Airflow:
 Airflow 2.3.4 spark provider RCE that bypass restrictions to read
 arbitrary files 

Description:

Improper Neutralization of Special Elements used in an OS Command ('OS Comm=
and Injection') vulnerability in Apache Airflow Spark Provider, Apache Airf=
low allows an attacker to read arbtrary files in the task execution context=
, without write access to DAG files. This issue affects Spark Provider vers=
ions prior to 4.0.0. It also impacts any Apache Airflow versions prior to 2=
.3.0 in case Spark Provider is installed (Spark Provider 4.0.0 can only be =
installed for Airflow 2.3.0+). Note that you need to manually install the S=
park Provider version 4.0.0 in order to get rid of the vulnerability on top=
 of Airflow 2.3.0+ version that has lower version of the Spark Provider ins=
talled).

Credit:

Apache Airflow PMC wants to thank id_No2015429 of 3H Security Team for repo=
rting the issue.

References:

https://github.com/apache/airflow/pull/27646

