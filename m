Received: (qmail 19892 invoked by uid 550); 23 Feb 2023 17:50:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12223 invoked from network); 23 Feb 2023 17:48:57 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <fe27c0f0-9a98-137a-5aa6-9cabc13977a5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 23 Feb 2023 17:48:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-25956: Apache Airflow AWS Provider: Arbitrary file read
 via AWS provider 

Severity: moderate

Description:

Generation of Error Message Containing Sensitive Information vulnerability =
in the Apache Airflow AWS Provider.

This issue affects Apache Airflow AWS Provider versions before 7.2.1.

Credit:

Son Tran from VNPT - VCI (finder)

References:

https://github.com/apache/airflow/pull/29587
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-25956

