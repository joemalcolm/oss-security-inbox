Received: (qmail 15434 invoked by uid 550); 4 Jun 2026 14:31:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13785 invoked from network); 4 Jun 2026 09:09:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Chaokun Yang <chaokunyang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8182878e-8b18-c89a-48eb-deb9e3860531@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 09:08:28 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-50076: Apache Fory: Java ReplaceResolverSerializer
 deserialization checks bypass 

Severity: important=20

Affected versions:

- Apache Fory (org.apache.fory:fory-core) before 1.1.0

Description:

Deserialization of Untrusted Data in the Java replace-resolve path in Apach=
e Fory fory-core Java SDK before 1.1.0 on Java/JVM platforms allows a remot=
e attacker to bypass class registration, TypeChecker, and DisallowedList ch=
ecks and invoke classpath-present readResolve/readExternal hooks via crafte=
d Fory serialized data.

Users are recommended to upgrade to version 1.1.0 or later, which fixes thi=
s issue.

Credit:

Venkatraman Kumar (r3dw0lfsec), Securin (reporter)

References:

https://fory.apache.org/security
https://fory.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-50076

