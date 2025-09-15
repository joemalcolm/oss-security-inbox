Received: (qmail 32471 invoked by uid 550); 15 Sep 2025 14:19:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29830 invoked from network); 15 Sep 2025 02:27:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Chaokun Yang <chaokunyang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e491456b-3b97-6165-3ce6-fee5f76df4aa@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Sep 2025 02:26:59 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-59328: Apache Fory: Denial of Service (DoS) due to
 Deserialization of Untrusted malicious large Data 

Severity: moderate=20

Affected versions:

- Apache Fory (org.apache.fory:fory-core) 0.5.0 before 0.12.1

Description:

A vulnerability in Apache Fory allows a remote attacker to cause a Denial o=
f Service (DoS). The issue stems from the insecure deserialization of untru=
sted data. An attacker can supply a large, specially crafted data payload=
=C2=A0that, when processed, consumes an excessive amount of CPU resources d=
uring the deserialization process. This leads to CPU exhaustion, rendering =
the application or system using the Apache Fory library unresponsive and un=
available to legitimate users.

Users of Apache Fory are strongly advised to upgrade to version 0.12.2 or l=
ater=C2=A0to mitigate this vulnerability. Developers of libraries and appli=
cations that depend on Apache Fory should update their dependency requireme=
nts to Apache Fory 0.12.2 or later=C2=A0and release new versions of their s=
oftware.

Credit:

r00t4dm of meituan security (reporter)

References:

https://fory.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-59328

