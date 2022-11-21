Received: (qmail 22317 invoked by uid 550); 21 Nov 2022 21:00:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1078 invoked from network); 21 Nov 2022 20:24:17 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d342cc67-4b93-1ea2-1e9e-6bdf17605f7c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 21 Nov 2022 20:24:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-38649: Apache Airflow Pinot Provider, Apache Airflow:
 PinotAdminHook Command Injection 

Severity: moderate

Description:

Improper Neutralization of Special Elements used in an OS Command ('OS Comm=
and Injection') vulnerability in Apache Airflow Pinot Provider, Apache Airf=
low allows an attacker to control commands executed in the task execution c=
ontext, without write access to DAG files. This issue affects Apache Airflo=
w Pinot Provider versions prior to 4.0.0. It also impacts any Apache Airflo=
w versions prior to 2.3.0 in case Apache Airlfow Pinot Provider is installe=
d (Apache Airflow Pinot Provider 4.0.0 can only be installed for Airflow 2.=
3.0+). Note that you need to manually install the Pinot Provider version 4.=
0.0 in order to get rid of the vulnerability on top of Airflow 2.3.0+ versi=
on.

Credit:

Apache Airflow PMC wants to thank id_No2015429 of 3H Security Team for repo=
rting the issue.

References:

https://github.com/apache/airflow/pull/27641

