Received: (qmail 9400 invoked by uid 550); 26 May 2026 14:51:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25906 invoked from network); 26 May 2026 14:31:43 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Gyula Fora <gyfora@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c01405e0-12f6-3233-7708-9fef1bec8577@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 May 2026 14:29:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-40564: Apache Flink Kubernetes Operator: Server-Side
 Request Forgery and local file access in Kubernetes Operator 

Severity: moderate=20

Affected versions:

- Apache Flink Kubernetes Operator 1.3.0 before 1.15.0

Description:

Files or Directories Accessible to External Parties, Server-Side Request Fo=
rgery (SSRF) vulnerability in Apache Flink Kubernetes Operator.

The FlinkSessionJob jarURI is currently not validated so that it points to =
user-owned files or addresses.=C2=A0=C2=A0This lets a user with CR create p=
ermissions read files from the operator pod's filesystem and pull content f=
rom any backing store reachable through Flink's pluggable filesystem layer =
and access them through the submitted Flink job. Furthermore for fetching f=
rom http/https addresses=C2=A0there is currently no allowlist on the URI sc=
heme, no host check, no IP-range restriction, and no protection against poi=
nting the URI at internal or link-local addresses.This issue affects Apache=
 Flink Kubernetes Operator: from 1.3.0 before 1.15.0.

Users are recommended to upgrade to version 1.15.0, which fixes the issue.

Credit:

Andrea Cosentino (finder)
Andrea Cosentino (remediation developer)

References:

https://flink.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-40564

