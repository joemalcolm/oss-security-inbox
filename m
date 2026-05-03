Received: (qmail 15441 invoked by uid 550); 3 May 2026 18:02:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 6081 invoked from network); 3 May 2026 11:59:23 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Pinal Shah <pinal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cfbee3d0-f45a-af65-f157-59f465ea7aad@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 03 May 2026 11:59:12 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-40563: Apache Atlas: Script injection allows access to
 unintended data 

Severity: important=20

Affected versions:

- Apache Atlas (org.apache.atlas:atlas-repository) 0.8 through 2.4.0

Description:

Description:
Improper Control of Generation of Code ('Code Injection') vulnerability in =
Apache Atlas
Apache Atlas exposes a DSL search endpoint that accepts user-supplied query=
 strings. Attacker can alter Gremlin traversal logic within grammar-allowed=
 characters to access unintended data




Affect Version:
This issue affects Apache Atlas: from 0.8 through 2.4.0.



For the affect version >=3D 2.0, vulnerability is only when Atlas is deploy=
ed with below non-default configuration.


atlas.dsl.executor.traversal=3Dfalse



Mitigation:
Users are recommended to upgrade to version 2.5.0, which fixes the issue.

Credit:

Khaled M. Alshammri (finder)
qx L (finder)

References:

https://atlas.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-40563

