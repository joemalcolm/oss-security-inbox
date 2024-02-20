Received: (qmail 22038 invoked by uid 550); 20 Feb 2024 20:11:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13317 invoked from network); 20 Feb 2024 19:29:29 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1bb350d2-56b0-4ee2-c925-d92bb64d9f44@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Feb 2024 19:31:59 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-25141: Apache Airflow Mongo Provider: Certificate
 validation isn't respected even if SSL is enabled for
 apache-airflow-providers-mongo  

Severity: low

Affected versions:

- Apache Airflow Mongo Provider 1.0.0 before 4.0.0

Description:

When ssl=C2=A0was enabled for Mongo Hook, default settings included "allow_=
insecure" which caused that certificates were not validated. This was unexp=
ected and undocumented.
Users are recommended to upgrade to version 4.0.0, which fixes this issue.

Credit:

Noah Stapp (reporter)

References:

https://github.com/apache/airflow/pull/37214
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-25141

