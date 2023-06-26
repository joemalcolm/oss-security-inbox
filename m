Received: (qmail 7528 invoked by uid 550); 26 Jun 2023 16:01:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7367 invoked from network); 26 Jun 2023 16:00:44 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <db7ff106-1c0f-48b1-8073-91ecce24448a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 26 Jun 2023 15:59:46 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-22886: Apache Airflow JDBC Provider: RCE Vulnerability 

Severity: low

Affected versions:

- Apache Airflow JDBC Provider before 4.0.0

Description:

Improper Input Validation vulnerability in Apache Software Foundation Apach=
e Airflow JDBC Provider.
Airflow JDBC Provider Connection=E2=80=99s [Connection URL] parameters had =
no
restrictions, which made it possible to implement RCE attacks via
different type JDBC drivers, obtain airflow server permission.
This issue affects Apache Airflow JDBC Provider: before 4.0.0.

Credit:

heart Y (finder)
happyhacking (finder)

References:

https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-22886

