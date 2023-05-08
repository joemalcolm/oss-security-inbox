Received: (qmail 20133 invoked by uid 550); 8 May 2023 11:52:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19696 invoked from network); 8 May 2023 11:51:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9512ef7c-a3c8-3b19-fcd6-6965a21c5e8b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 May 2023 11:50:58 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-25754: Apache Airflow: Privilege escalation using airflow
 logs 

Severity: moderate

Affected versions:

- Apache Airflow before 2.6.0

Description:

Privilege Context Switching Error vulnerability in Apache Software Foundati=
on Apache Airflow.This issue affects Apache Airflow: before 2.6.0.

Credit:

ksw9722@naver.com (finder)

References:

https://github.com/apache/airflow/pull/29506
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-25754

