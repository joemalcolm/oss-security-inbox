Received: (qmail 9490 invoked by uid 550); 12 Aug 2025 02:14:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5862 invoked from network); 12 Aug 2025 02:10:13 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Wang Weibing <wwbmmm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <34d79aa5-709a-86e8-37e5-062136022e2b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Aug 2025 02:09:14 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-54472: Apache bRPC: Redis Parser Remote Denial of Service
 

Severity: important=20

Affected versions:

- Apache bRPC before 1.14.1

Description:

Unlimited memory allocation in redis protocol parser in Apache bRPC (all ve=
rsions < 1.14.1) on all platforms allows attackers to crash the service via=
 network.



Root Cause: In the bRPC Redis protocol parser code, memory for arrays or st=
rings of corresponding sizes is allocated based on the integers read from t=
he network. If the integer read from the network is too large, it may cause=
 a bad alloc error and lead to the program crashing. Attackers can exploit =
this feature by sending special data packets to the bRPC service to carry o=
ut a denial-of-service attack on it.
The bRPC 1.14.0 version tried to fix this issue by limited the memory alloc=
ation size, however, the limitation checking code is not well implemented t=
hat may cause integer overflow and evade such limitation. So the=C2=A01.14.=
0 version is also vulnerable, although the integer range that affect versio=
n 1.14.0 is different from that affect version < 1.14.0.



Affected scenarios: Using bRPC as a Redis server to provide network service=
s to untrusted clients, or using bRPC as a Redis client to call untrusted R=
edis services.



How to Fix: we provide two methods, you can choose one of them:

1. Upgrade bRPC to version 1.14.1.
2. Apply this patch ( https://github.com/apache/brpc/pull/3050 ) manually.

No matter you choose which method, you should note that the patch limits th=
e maximum length of memory allocated for each time in the bRPC Redis parser=
. The default limit is 64M. If some of you redis request or response have a=
 size larger than 64M, you might encounter error after upgrade. For such ca=
se, you can modify the gflag=C2=A0redis_max_allocation_size to set a larger=
 limit.

Credit:

Tyler Zars (reporter)

References:

https://brpc.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-54472

