Received: (qmail 24092 invoked by uid 550); 29 Sep 2025 14:18:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 4075 invoked from network); 29 Sep 2025 07:03:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Chaokun Yang <chaokunyang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <59555074-b3a9-05d9-4411-2ed86222405d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Sep 2025 07:01:46 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-61622: Apache Fory: Python RCE via unguarded pickle
 fallback serializer in pyfory 

Severity: critical=20

Affected versions:

- Apache Fory (pyfory,pyfury) 0.5.0 through 0.12.2

Description:

Deserialization of untrusted data in=C2=A0python in pyfory=C2=A0versions 0.=
12.0 through 0.12.2 allows arbitrary code execution. An application is vuln=
erable if it reads pyfory serialized data from untrusted sources.=C2=A0An a=
ttacker can craft a data stream that selects pickle-fallback serializer dur=
ing deserialization, leading to the execution of `pickle.loads`, which is=
=C2=A0vulnerable to=C2=A0remote code execution.

Users are recommended to upgrade to version 0.12.3 or later, which has remo=
ved pickle fallback serializer and thus fixes this issue.

Credit:

Mapta / BugBunny_ai (reporter)

References:

https://fory.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-61622

