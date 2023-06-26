Received: (qmail 1174 invoked by uid 550); 26 Jun 2023 16:14:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32411 invoked from network); 26 Jun 2023 16:13:13 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2425a854-4b5c-2967-986f-6c068d76ea3f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 26 Jun 2023 16:12:55 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-35798: Airflow Apache ODBC and MSSQL Providers Arbitrary
 File Read Vulnerability 

Severity: low

Affected versions:

- Apache Airflow ODBC Provider before 4.0.0
- Apache Airflow MSSQL Provider before 3.4.1

Description:

Input Validation vulnerability in Apache Software Foundation Apache Airflow=
 ODBC Provider, Apache Software Foundation Apache Airflow MSSQL Provider.Th=
is=C2=A0vulnerability is considered low since it requires DAG code to use `=
get_sqlalchemy_connection` and someone with access to connection resources =
specifically=C2=A0updating the connection to exploit it.

This issue affects Apache Airflow ODBC Provider: before 4.0.0; Apache Airfl=
ow MSSQL Provider: before 3.4.1.

It is recommended to=C2=A0upgrade to a version that is not affected

Credit:

id_No2015429 of 3H Secruity Team (finder)

References:

https://github.com/apache/airflow/pull/31984
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-35798

