Received: (qmail 3160 invoked by uid 550); 7 Apr 2023 14:44:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3512 invoked from network); 7 Apr 2023 14:00:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <257d8e51-81ab-861d-f87b-3ce1b82d0883@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 07 Apr 2023 13:59:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-28706: Apache Airflow Hive Provider Beeline Remote
 Command Execution 

Severity: low

Description:

Improper Control of Generation of Code ('Code Injection') vulnerability in =
Apache Software Foundation Apache Airflow Hive Provider.This issue affects =
Apache Airflow Hive Provider: before 6.0.0.

Credit:

sw0rd1ight of Caiji Sec Team and 4ra1n of Chaitin Tech (finder)

References:

https://github.com/apache/airflow/pull/30212
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-28706

