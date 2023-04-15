Received: (qmail 11312 invoked by uid 550); 15 Apr 2023 15:03:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26613 invoked from network); 15 Apr 2023 13:24:20 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Sean R. Owen" <srowen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <40c34c5a-0bb0-a0ba-a738-b21ab336a194@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 15 Apr 2023 13:24:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-22946: Apache Spark proxy-user privilege escalation from
 malicious configuration class 

Description:

In Apache Spark versions prior to 3.4.0, applications using spark-submit ca=
n specify a 'proxy-user' to run as, limiting privileges. The application ca=
n execute code with the privileges of the submitting user, however, by prov=
iding malicious configuration-related classes on the classpath. This affect=
s architectures relying on proxy-user, for example those using Apache Livy =
to manage submitted applications.

This issue is being tracked as SPARK-41958=20

Work Arounds:

Update to Apache Spark 3.4.0 or later, and ensure that spark.submit.proxyUs=
er.allowCustomClasspathInClusterMode is set to its default of "false", and =
is not overridden by submitted applications.

Credit:

Hideyuki Furue (finder)
Yi Wu (Databricks) (remediation developer)

References:

https://spark.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-22946
https://issues.apache.org/jira/browse/SPARK-41958

