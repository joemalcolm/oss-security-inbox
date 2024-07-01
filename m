Received: (qmail 5528 invoked by uid 550); 1 Jul 2024 13:56:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3307 invoked from network); 1 Jul 2024 12:45:44 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e5f06493-6c7e-02f1-198b-9397c2d0b284@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jul 2024 12:42:09 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-38475: Apache HTTP Server weakness in mod_rewrite when
 first segment of substitution matches filesystem path. 

Severity: important

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.59

Description:

Improper escaping of output in mod_rewrite in Apache HTTP Server 2.4.59 and=
 earlier allows an attacker to map URLs to filesystem locations that are=C2=
=A0permitted to be served by the server but are not intentionally/directly =
reachable by any URL, resulting in code execution or source code disclosure=
.=20

Substitutions in=C2=A0server context that use a backreferences or variables=
 as the first segment of the substitution are affected.=C2=A0 Some unsafe R=
ewiteRules will be broken by this change and the rewrite flag "UnsafePrefix=
Stat" can be used to opt back in once ensuring the substitution is appropri=
ately constrained.

Credit:

Orange Tsai (@orange_8361) from DEVCORE (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-38475

Timeline:

2024-04-01: reported

