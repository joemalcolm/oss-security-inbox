Received: (qmail 17504 invoked by uid 550); 7 Mar 2026 14:43:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25885 invoked from network); 7 Mar 2026 00:08:47 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andor Molnar <andor@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4998453e-dcc1-c7e8-1350-66fa2678e6f8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 07 Mar 2026 00:06:10 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-24308: Apache ZooKeeper: Sensitive information disclosure
 in client configuration handling 

Severity: important=20

Affected versions:

- Apache ZooKeeper (org.apache.zookeeper:zookeeper) 3.9.0 through 3.9.4
- Apache ZooKeeper (org.apache.zookeeper:zookeeper) 3.8.0 through 3.8.5

Description:

Improper handling of configuration values in ZKConfig in Apache ZooKeeper 3=
.8.5 and 3.9.4 on all platforms allows an attacker to expose sensitive info=
rmation stored in client configuration in the client's logfile. Configurati=
on values are exposed at INFO level logging rendering potential production =
systems affected by the issue.=C2=A0Users are recommended to upgrade to ver=
sion 3.8.6 or 3.9.5 which fixes this issue.

Credit:

Youlong Chen <chenyoulong20g@ict.ac.cn> (reporter)

References:

https://zookeeper.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-24308

