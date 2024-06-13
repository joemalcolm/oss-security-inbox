Received: (qmail 7328 invoked by uid 550); 13 Jun 2024 15:10:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28344 invoked from network); 13 Jun 2024 15:05:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <29c57c8f-9adb-42bc-da5b-998269a688e9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 13 Jun 2024 15:05:09 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-25142: Apache Airflow: Cache Control - Storage of
 Sensitive Data in Browser Cache  

Severity: low

Affected versions:

- Apache Airflow before 2.9.2

Description:

Use of Web Browser Cache Containing Sensitive Information vulnerability in =
Apache Airflow.=C2=A0

Airflow did not return "Cache-Control" header for dynamic content, which in=
 case of some browsers could result in potentially storing sensitive data i=
n local cache of the browser.

This issue affects Apache Airflow: before 2.9.2.

Users are recommended to upgrade to version 2.9.2, which fixes the issue.

Credit:

Jens Scheffler (reporter)

References:

https://github.com/apache/airflow/pull/39550
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-25142

