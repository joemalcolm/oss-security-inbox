Received: (qmail 16309 invoked by uid 550); 25 Aug 2023 17:37:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7696 invoked from network); 25 Aug 2023 17:25:04 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8e892059-fa27-7086-13eb-6779d073dc58@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 25 Aug 2023 17:24:51 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-40195: Apache Airflow Spark Provider Deserialization
 Vulnerability RCE 

Severity: moderate

Affected versions:

- Apache Airflow Spark Provider before 4.1.3

Description:

Deserialization of Untrusted Data, Inclusion of Functionality from Untruste=
d Control Sphere vulnerability in Apache Software Foundation Apache Airflow=
 Spark Provider.

When the Apache Spark provider is installed on an Airflow deployment, an Ai=
rflow user that is authorized to configure Spark hooks can effectively run =
arbitrary code on the Airflow node by pointing it at a malicious Spark serv=
er. Prior to version 4.1.3, this was not called out in the documentation ex=
plicitly, so it is possible that administrators provided authorizations to =
configure Spark hooks without taking this into account. We recommend admini=
strators to review their configurations to make sure the authorization to c=
onfigure Spark hooks is only provided to fully trusted users.

To view the warning in the docs please visit=C2=A0 https://airflow.apache.o=
rg/docs/apache-airflow-providers-apache-spark/4.1.3/connections/spark.html

Credit:

happyhacking-k (finder)

References:

https://github.com/apache/airflow/pull/33233
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-40195

