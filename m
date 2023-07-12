Received: (qmail 11538 invoked by uid 550); 12 Jul 2023 09:47:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5685 invoked from network); 12 Jul 2023 09:15:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rongtong Jin <jinrongtong@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <77c37da9-baaa-d5fe-92c8-3dfebf03ae75@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 12 Jul 2023 09:14:59 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-37582: Apache RocketMQ: Possible remote code execution
 when using the update configuration function 

Severity: moderate

Affected versions:

- Apache RocketMQ 5.0.0 through 5.1.1
- Apache RocketMQ through 4.9.6

Description:

The RocketMQ NameServer component still has a remote command execution vuln=
erability as the CVE-2023-33246 issue was not completely fixed in version 5=
.1.1.=20

When NameServer address are leaked on the extranet and lack permission veri=
fication, an attacker can exploit this vulnerability by using the update co=
nfiguration function on the NameServer component to execute commands as the=
 system users that RocketMQ is running as.=20

It is recommended for users to upgrade their NameServer version to 5.1.2 or=
 above for RocketMQ 5.x or 4.9.7 or above for RocketMQ 4.x to prevent these=
 attacks.

This issue is being tracked as https://github.com/apache/rocketmq/pull/6843=
=20

Credit:

soreatu@gmail.com (finder)
yuansec@outlook.com  (finder)

References:

https://rocketmq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-37582
https://issues.apache.org/jira/browse/https://github.com/apache/rocketmq/pu=
ll/6843

