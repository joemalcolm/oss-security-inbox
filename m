Received: (qmail 26019 invoked by uid 550); 21 Nov 2022 21:00:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15526 invoked from network); 21 Nov 2022 20:49:49 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <91533482-24c2-5c74-ada0-ecfdbfcca7f0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 21 Nov 2022 20:48:59 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-41131: Apache Airflow Hive Provider vulnerability
 (command injection via hive_cli connection) 

Severity: moderate

Description:

Improper Neutralization of Special Elements used in an OS Command ('OS Comm=
and Injection') vulnerability in Apache Airflow Hive Provider, Apache Airfl=
ow allows an attacker to execute arbtrary commands in the task execution co=
ntext, without write access to DAG files. This issue affects Hive Provider =
versions prior to 4.1.0. It also impacts any Apache Airflow versions prior =
to 2.3.0 in case HIve Provider is installed (Hive Provider 4.1.0 can only b=
e installed for Airflow 2.3.0+). Note that you need to manually install the=
 HIve Provider version 4.1.0 in order to get rid of the vulnerability on to=
p of Airflow 2.3.0+ version that has lower version of the Hive Provider ins=
talled).


Credit:

Apache Airflow PMC wants to thank id_No2015429 of 3H Security Team for repo=
rting the issue.

References:

https://github.com/apache/airflow/pull/27647

