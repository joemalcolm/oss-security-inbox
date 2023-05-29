Received: (qmail 28033 invoked by uid 550); 29 May 2023 13:30:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14213 invoked from network); 29 May 2023 10:31:55 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Marcus Eriksson <marcuse@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <63f557a7-2578-0ad6-ea9d-a62883356c9d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 May 2023 10:25:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-30601: Apache Cassandra: Privilege escalation when
 enabling FQL/Audit logs 

Severity: important

Affected versions:

- Apache Cassandra 4.0.0 through 4.0.9
- Apache Cassandra 4.1.0 through 4.1.1

Description:

Privilege escalation when enabling FQL/Audit logs allows user with JMX acce=
ss to run arbitrary commands as the user running Apache Cassandra
This issue affects Apache Cassandra: from 4.0.0 through 4.0.9, from 4.1.0 t=
hrough 4.1.1.

WORKAROUND
The vulnerability requires nodetool/JMX access to be exploitable, disable a=
ccess for any non-trusted users.

MITIGATION
Upgrade to 4.0.10 or 4.1.2 and leave the new FQL/Auditlog configuration pro=
perty=C2=A0allow_nodetool_archive_command as false.

This issue is being tracked as CASSANDRA-18550=20

Credit:

Gal Elbaz at Oligo (finder)

References:

https://cassandra.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-30601
https://issues.apache.org/jira/browse/CASSANDRA-18550

