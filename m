Received: (qmail 26295 invoked by uid 550); 26 Feb 2024 17:38:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9533 invoked from network); 26 Feb 2024 17:06:44 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Benoit Tellier <btellier@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <860984fc-1094-4724-3ab9-d948a43d304b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 26 Feb 2024 17:10:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-51518: Apache James server: Privilege escalation via JMX
 pre-authentication deserialisation 

Severity: low

Affected versions:

- Apache James server through 3.7.4
- Apache James server 3.8 through 3.8.0

Description:

Apache James prior to version 3.7.5 and 3.8.0 exposes a JMX endpoint on loc=
alhost subject to pre-authentication deserialisation of untrusted data.
Given a deserialisation gadjet, this could be leveraged as part of an explo=
it chain that could result in privilege escalation.
Note that by default JMX endpoint is only bound locally.

We recommend users to:
=C2=A0- Upgrade to a non-vulnerable Apache James version

=C2=A0- Run Apache James isolated from other processes (docker - dedicated =
virtual machine)
=C2=A0- If possible turn off JMX

Credit:

Mal Aware (reporter)
Arnout Engelen (analyst)

References:

https://james.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-51518

