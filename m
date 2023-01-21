Received: (qmail 1637 invoked by uid 550); 21 Jan 2023 10:25:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22478 invoked from network); 21 Jan 2023 00:50:41 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <169788bd-11b7-6e96-c953-1519d9a4c79a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 21 Jan 2023 00:50:27 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-22884: Apache Airflow, Apache Airflow MySQL Provider:
 Arbitrary file read via MySQL provider in Apache Airflow 

Severity: important

Description:

Improper Neutralization of Special Elements used in a Command ('Command Inj=
ection') vulnerability in Apache Software Foundation Apache Airflow, Apache=
 Software Foundation Apache Airflow MySQL Provider.This issue affects Apach=
e Airflow: before 2.5.1; Apache Airflow MySQL Provider: before 4.0.0.

Credit:

Son Tran from VNPT - VCI (reporter)

References:

https://github.com/apache/airflow/pull/28811
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-22884

