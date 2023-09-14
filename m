Received: (qmail 29951 invoked by uid 550); 14 Sep 2023 14:11:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23623 invoked from network); 14 Sep 2023 06:27:38 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bfd06da9-4b55-ddf4-7b51-9cda1ac57fdd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Sep 2023 06:27:25 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-41267: Apache HDFS Provider error message suggested
 installation of incorrect pip package 

Severity: low

Affected versions:

- Apache Airflow HDFS Provider before 4.1.1

Description:

In the Apache Airflow HDFS Provider, versions prior to 4.1.1, a documentati=
on=C2=A0info pointed users to an install incorrect pip package. As this pac=
kage name was unclaimed, in theory, an attacker could claim this package an=
d provide code that would be executed when this package was installed. The =
Airflow team has since taken ownership of the package (neutralizing the ris=
k), and fixed the doc strings in version 4.1.1

Credit:

AnupamAs01 (finder)

References:

https://github.com/apache/airflow/pull/33813
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-41267

