Received: (qmail 22387 invoked by uid 550); 18 Aug 2025 20:14:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16155 invoked from network); 18 Aug 2025 20:07:51 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a7884e28-206f-833a-0b7c-6541996bc091@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 Aug 2025 20:07:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-53192: Apache Commons OGNL: Expression Injection leading
 to RCE 

Severity: moderate=20

Affected versions:

- Apache Commons OGNL: all versions

Description:

** UNSUPPORTED WHEN ASSIGNED ** Improper Neutralization of Expression/Comma=
nd Delimiters vulnerability in Apache Commons OGNL.

This issue affects Apache Commons OGNL: all versions.



When using the API Ognl.getValue=E2=80=8B, the OGNL engine parses and evalu=
ates the provided expression with powerful capabilities, including accessin=
g and invoking related methods,
 etc. Although OgnlRuntime attempts to restrict certain dangerous classes a=
nd methods (such as java.lang.Runtime) through a blocklist, these restricti=
ons are not comprehensive.=20
Attackers may be able to bypass the restrictions by leveraging class object=
s that are not covered by the blocklist and potentially achieve arbitrary c=
ode execution.

As this project is retired, we do not plan to release a version that fixes =
this issue. Users are recommended to find an alternative or restrict access=
 to the instance to trusted users.


NOTE: This vulnerability only affects products that are no longer supported=
 by the maintainer.

Credit:

yyjLF (finder)

References:

https://commons.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-53192

