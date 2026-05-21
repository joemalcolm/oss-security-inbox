Received: (qmail 16372 invoked by uid 550); 21 May 2026 16:13:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3757 invoked from network); 21 May 2026 12:45:44 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Chaokun Yang <chaokunyang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8b0078b2-4dc0-a25c-184d-a44ad41006aa@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 12:44:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-48207: Apache Fory: PyFory ReduceSerializer Incomplete
 Policy Enforcement 

Severity: important=20

Affected versions:

- Apache Fory (pyfory) 0.13.0 before 1.0.0

Description:

Deserialization of untrusted data in Apache Fory PyFory. PyFory's ReduceSer=
ializer could bypass documented DeserializationPolicy validation hooks duri=
ng reduce-state restoration and global-name resolution. An application is v=
ulnerable if it deserializes attacker-controlled data using PyFory Python-n=
ative mode with strict mode disabled and relies on DeserializationPolicy to=
 restrict unsafe classes, functions, or module attributes.

This issue affects Apache Fory: from before 1.0.0.

Mitigation: Users of Apache Fory are recommended to upgrade to version 1.0.=
0 or later, which enforces DeserializationPolicy validation for the affecte=
d ReduceSerializer paths and thus fixes this issue.

Credit:

Lide Wen (reporter)

References:

https://fory.apache.org/security/#cve-2026-48207-pyfory-reduceserializer-de=
serializationpolicy-bypass
https://fory.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-48207

