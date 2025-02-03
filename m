Received: (qmail 7720 invoked by uid 550); 3 Feb 2025 23:18:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19740 invoked from network); 3 Feb 2025 23:09:07 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Paulo Motta <paulo@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <123cd316-92c2-6712-9408-6ced9502dae5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 03 Feb 2025 23:08:58 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-27137: Apache Cassandra: unrestricted deserialization of
 JMX authentication credentials 

Severity: moderate

Affected versions:

- Apache Cassandra 4.0.2 before 4.0.15
- Apache Cassandra 4.1.0 before 4.1.8
- Apache Cassandra 5.0-beta1 before 5.0.3

Description:

In Apache Cassandra it is possible for a local attacker without access
 to the Apache Cassandra process or configuration files to manipulate=20
the RMI registry to perform a man-in-the-middle attack and capture user=20
names and passwords used to access the JMX interface. The attacker can=20
then use these credentials to access the JMX interface and perform=20
unauthorized operations.


This is same vulnerability that CVE-2020-13946 was issued for, but the Java=
 option was changed in JDK10.


This issue affects Apache Cassandra from 4.0.2 through 5.0.2 running Java 1=
1.


Operators are recommended to upgrade to a release equal to or later than 4.=
0.15, 4.1.8, or 5.0.3 which fixes the issue.

References:

https://cassandra.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-27137

