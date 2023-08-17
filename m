Received: (qmail 1897 invoked by uid 550); 17 Aug 2023 15:04:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32010 invoked from network); 17 Aug 2023 13:07:50 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4d92373c-e3c9-c1ef-56f7-0cfb4cc8b10f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 17 Aug 2023 13:07:16 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-40272: Apache Airflow Spark Provider Arbitrary File Read
 via JDBC 

Severity: moderate

Affected versions:

- Apache Airflow Spark Provider before 4.1.3

Description:

Apache Airflow Spark Provider, versions before 4.1.3, is affected by a vuln=
erability that allows an attacker to pass in malicious parameters when esta=
blishing a connection giving an opportunity to read files on the Airflow se=
rver.
It is recommended to upgrade to a version that is not affected.

Credit:

sw0rd1ight (finder)

References:

https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-40272

