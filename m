Received: (qmail 23599 invoked by uid 550); 21 Nov 2022 21:00:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5815 invoked from network); 21 Nov 2022 20:35:04 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0dde22b3-a9b9-02c0-b928-2a308ae67699@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 21 Nov 2022 20:33:44 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-40189: Apache Airlfow Pig Provider RCE 

Severity: moderate

Description:

Improper Neutralization of Special Elements used in an OS Command ('OS Comm=
and Injection') vulnerability in Apache Airflow Pig Provider, Apache Airflo=
w allows an attacker to control commands executed in the task execution con=
text, without write access to DAG files. This issue affects Pig Provider ve=
rsions prior to 4.0.0. It also impacts any Apache Airflow versions prior to=
 2.3.0 in case Pig Provider is installed (Pig Provider 4.0.0 can only be in=
stalled for Airflow 2.3.0+). Note that you need to manually install the Pig=
 Provider version 4.0.0 in order to get rid of the vulnerability on top of =
Airflow 2.3.0+ version.

Credit:

Apache Airflow PMC wants to thank id_No2015429 of 3H Security Team for repo=
rting the issue.

References:

https://github.com/apache/airflow/pull/27644

