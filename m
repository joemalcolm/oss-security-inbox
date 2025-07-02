Received: (qmail 21806 invoked by uid 550); 2 Jul 2025 13:01:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30230 invoked from network); 2 Jul 2025 01:09:05 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Junxu Chen <chenjunxu@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7ef4653a-54ba-50e3-7c07-f823a7caa679@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 02 Jul 2025 01:08:55 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-46647: Apache APISIX: improper validation of issuer from
 introspection discovery url in plugin openid-connect 

Severity: important=20

Affected versions:

- Apache APISIX before 3.12.0

Description:

A vulnerability of plugin=C2=A0openid-connect in Apache APISIX.

This vulnerability will only have an impact if all of the following conditi=
ons are met:
1. Use the openid-connect plugin with introspection mode
2. The auth service connected to openid-connect provides services to multip=
le issuers
3. Multiple issuers share the same private key and relies only on the issue=
r being different

If affected by this vulnerability, it would allow an attacker with a valid =
account on one of the issuers to log into the other issuer.




This issue affects Apache APISIX: until 3.12.0.

Users are recommended to upgrade to version 3.12.0 or higher.

Credit:

Tiernan Messmer (finder)

References:

https://lists.apache.org/thread/yrpp2cd3o4qkxlrh421mq8gsrt0k4x0w
https://apisix.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-46647

