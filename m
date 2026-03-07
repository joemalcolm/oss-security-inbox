Received: (qmail 15908 invoked by uid 550); 7 Mar 2026 14:43:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15879 invoked from network); 7 Mar 2026 00:07:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andor Molnar <andor@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d2270956-068a-b565-fa9e-94eb1ed26cf4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 07 Mar 2026 00:06:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-24281: Apache ZooKeeper: Reverse-DNS fallback enables
 hostname verification bypass in ZooKeeper ZKTrustManager 

Severity: important=20

Affected versions:

- Apache ZooKeeper (org.apache.zookeeper:zookeeper) 3.9.0 through 3.9.4
- Apache ZooKeeper (org.apache.zookeeper:zookeeper) 3.8.0 through 3.8.5

Description:

Hostname verification in Apache ZooKeeper ZKTrustManager falls back to reve=
rse DNS (PTR) when IP SAN validation fails, allowing attackers who control =
or spoof PTR records to impersonate ZooKeeper servers or clients with a val=
id certificate for the PTR name. It's important to note that attacker must =
present a certificate which is trusted by ZKTrustManager which makes the at=
tack vector harder to exploit. Users are recommended to upgrade to version =
3.8.6 or 3.9.5, which fixes this issue by introducing a new configuration o=
ption to disable reverse DNS lookup in client and quorum protocols.

This issue is being tracked as ZOOKEEPER-4986=20

Credit:

Nikita Markevich <markevich.nikita1@gmail.com> (reporter)

References:

https://zookeeper.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-24281
https://issues.apache.org/jira/browse/ZOOKEEPER-4986

