Received: (qmail 32536 invoked by uid 550); 26 Nov 2025 21:26:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7241 invoked from network); 26 Nov 2025 07:45:07 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Stamatis Zampetakis <zabetak@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f9ee38c5-9290-a6f0-616f-127926df014f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 26 Nov 2025 07:44:55 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-62728: Apache Hive: SQL injection vulnerability when
 processing delete column statistics requests via the HMS Thrift APIs 

Severity: moderate=20

Affected versions:

- Apache Hive (org.apache.hive:hive-standalone-metastore-server) 4.1.0 befo=
re 4.2.0

Description:

SQL injection vulnerability in Hive Metastore Server (HMS) when processing =
delete column statistics requests via the Thrift APIs. The vulnerability is=
 only exploitable by trusted/authorized users/applications that are allowed=
 to call directly the Thrift APIs. In most real-world deployments, HMS is a=
ccessible to only a handful of applications (e.g., Hiveserver2) thus the vu=
lnerability is not exploitable. Moreover, the vulnerable code cannot be rea=
ched when metastore.try.direct.sql property is set to false.

This issue affects Apache Hive: from 4.1.0 before 4.2.0.

Users are recommended to upgrade to version 4.2.0, which fixes the issue. U=
sers who cannot upgrade directly are encouraged to set=C2=A0metastore.try.d=
irect.sql property to false if the HMS Thrift APIs are exposed to general p=
ublic.

This issue is being tracked as HIVE-29269=20

Credit:

WuKong (finder)

References:

https://hive.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-62728
https://issues.apache.org/jira/browse/HIVE-29269

