Received: (qmail 15740 invoked by uid 550); 16 Jan 2026 15:43:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18256 invoked from network); 16 Jan 2026 07:29:04 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Guangming Chen <guangmingchen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5907213e-7239-31e7-3dc3-4733fdac2d96@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 16 Jan 2026 07:28:29 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-60021: Apache bRPC: Remote command injection
 vulnerability in heap builtin service 

Severity: important=20

Affected versions:

- Apache bRPC 1.11.0 before 1.15.0

Description:

Remote command injection vulnerability in heap profiler builtin service in =
Apache bRPC ((all versions < 1.15.0)) on all platforms allows attacker to i=
nject remote command.



Root Cause: The bRPC heap profiler built-in service (/pprof/heap) does not =
validate the user-provided extra_options parameter and executes it as a com=
mand-line argument. Attackers can execute remote commands using the extra_o=
ptions parameter..

Affected scenarios:=C2=A0Use the built-in bRPC heap profiler service to per=
form jemalloc memory profiling.

How to Fix: we provide two methods, you can choose one of them:

1. Upgrade bRPC to version 1.15.0.
2. Apply this patch ( https://github.com/apache/brpc/pull/3101 ) manually.

Credit:

Simcha Kosman (reporter)

References:

https://brpc.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-60021

