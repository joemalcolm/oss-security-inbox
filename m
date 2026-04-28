Received: (qmail 9886 invoked by uid 550); 28 Apr 2026 00:40:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18338 invoked from network); 28 Apr 2026 00:10:25 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jens Geyer <jensg@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9d8f6f59-71ed-279d-a1d1-e57a589d072a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 28 Apr 2026 00:01:21 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-48431: Apache Thrift glibc language bindings: Specially
 crafted input can crash a c_glib Thrift server with invalid pointer error.
 

Severity: important=20

Affected versions:

- Apache Thrift glibc language bindings before 0.23.0

Description:

Mismatched Memory Management Routines vulnerability in Apache Thrift c_glib=
 language bindings.

This issue affects Apache Thrift: before 0.23.0.

Users are recommended to upgrade to version 0.23.0, which fixes the issue.

Description: Specially crafted requests can crash an c_glib-based Thrift se=
rver with a clean but fatal "free(): invalid pointer" error message.

Credit:

Hasnain Lakhani (finder)
Hasnain Lakhani (remediation developer)

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-48431

