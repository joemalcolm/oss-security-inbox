Received: (qmail 15687 invoked by uid 550); 11 Aug 2023 13:08:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4066 invoked from network); 11 Aug 2023 04:58:29 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <40a53997-ded9-402a-6c5b-2fa76e160ad6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 11 Aug 2023 04:57:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-39553: Apache Airflow Drill Provider Arbitrary File Read
 Vulnerability 

Severity: moderate

Affected versions:

- Apache Airflow Drill Provider before 2.4.3

Description:

Improper Input Validation vulnerability in Apache Software Foundation Apach=
e Airflow Drill Provider.

Apache Airflow Drill Provider is affected by a vulnerability that allows an=
 attacker to pass in malicious parameters when establishing a connection wi=
th DrillHook giving an opportunity to read files on the Airflow server.
This issue affects Apache Airflow Drill Provider: before 2.4.3.
It is recommended to upgrade to a version that is not affected.

Credit:

sw0rd1ight of Caiji Sec Team and 4ra1n of Chaitin Tech (finder)

References:

https://github.com/apache/airflow/pull/33074
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-39553

