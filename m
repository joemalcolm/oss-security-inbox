Received: (qmail 19700 invoked by uid 550); 26 Jun 2023 15:53:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18422 invoked from network); 26 Jun 2023 15:53:10 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <46feeb7c-00af-4cf6-486e-a122519904ec@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 26 Jun 2023 15:52:56 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-34395: Apache Airflow ODBC Provider: Remote code
 execution vulnerability 

Severity: moderate

Affected versions:

- Apache Airflow ODBC Provider before 4.0.0

Description:

Improper Neutralization of Argument Delimiters in a Command ('Argument Inje=
ction') vulnerability in Apache Software Foundation Apache Airflow ODBC Pro=
vider.
In OdbcHook, A privilege escalation vulnerability exists in a system due to=
 controllable ODBC driver parameters that allow the loading of arbitrary dy=
namic-link libraries, resulting in command execution.
Starting version 4.0.0 driver can be set only from the hook constructor.
This issue affects Apache Airflow ODBC Provider: before 4.0.0.

Credit:

KmhlYXJ0 (finder)

References:

https://github.com/apache/airflow/pull/31713
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-34395

