Received: (qmail 9802 invoked by uid 550); 12 Mar 2025 15:15:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28560 invoked from network); 12 Mar 2025 14:06:59 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andrea Cosentino <acosentino@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e3770277-d3cf-75f5-b3dd-123c5a5e708f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 12 Mar 2025 14:06:47 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-29891: Apache Camel: Camel Message Header Injection
 through request parameters 

Severity: important

Affected versions:

- Apache Camel 4.10.0 before 4.10.2
- Apache Camel 4.8.0 before 4.8.5
- Apache Camel 3.10.0 before 3.22.4

Description:

Bypass/Injection vulnerability in Apache Camel.

This issue affects Apache Camel: from 4.10.0 before 4.10.2, from 4.8.0 befo=
re 4.8.5, from 3.10.0 before 3.22.4.

Users are recommended to upgrade to version 4.10.2 for 4.10.x LTS, 4.8.5 fo=
r 4.8.x LTS and 3.22.4 for 3.x releases.

This vulnerability is present in Camel's default incoming header filter, th=
at allows an attacker to include Camel specific headers that for some Camel=
 components can alter the behaviours such as the camel-bean component, or t=
he camel-exec component.

If you have Camel applications that are directly connected to the internet =
via HTTP, then an attacker=C2=A0could include parameters in the HTTP reques=
ts that are sent to the Camel application that incorrectly get translated i=
nto headers.=C2=A0

The headers could be both provided as request parameters for an HTTP method=
s invocation or as part of the payload of the HTTP methods invocation.

All the known Camel HTTP component such as camel-servlet, camel-jetty, came=
l-undertow, camel-platform-http, and camel-netty-http would be vulnerable o=
ut of the box.

This CVE is related to the CVE-2025-27636: while they have the same root ca=
use and are fixed with the same fix, CVE-2025-27636 was assumed to only be =
exploitable if an attacker could add malicious HTTP headers, while we have =
now determined that it is also exploitable via HTTP parameters. Like in CVE=
-2025-27636, exploitation is only possible if the Camel route uses particul=
ar vulnerable components.

This issue is being tracked as CAMEL-21828=20

Credit:

Ryan Barnett (finder)

References:

https://camel.apache.org/security/CVE-2025-27636.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-29891
https://issues.apache.org/jira/browse/CAMEL-21828

