Received: (qmail 7351 invoked by uid 550); 9 Mar 2025 14:49:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8001 invoked from network); 9 Mar 2025 10:40:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andrea Cosentino <acosentino@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3b2d9efb-42ae-925c-bc05-c167d40bdd90@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 09 Mar 2025 10:40:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27636: Apache Camel: Camel Message Header Injection via
 Improper Filtering 

Severity: moderate

Affected versions:

- Apache Camel 4.10.0 before 4.10.2
- Apache Camel 4.8.0 before 4.8.5
- Apache Camel 3.10.0 before 3.22.4

Description:

Bypass/Injection vulnerability in Apache Camel.

This issue affects Apache Camel: from 4.10.0 through <=3D 4.10.1, from 4.8.=
0 through <=3D 4.8.4, from 3.10.0 through <=3D 3.22.3.

Users are recommended to upgrade to version 4.10.2 for 4.10.x LTS, 4.8.5 fo=
r 4.8.x LTS and 3.22.4 for 3.x releases.

The vulnerability arises due to a bug in the default filtering mechanism th=
at only blocks headers starting with "Camel", "camel", or "org.apache.camel=
.". Attackers can bypass this filter by altering the casing of letters. Thi=
s allows attackers to inject headers which can be exploited to invoke arbit=
rary methods from the Bean registry and also supports using Simple Expressi=
on Language (or OGNL in some cases) as part of the method parameters passed=
 to the bean. It's important to note that only methods in the same bean dec=
lared in the bean URI could be invoked.


Mitigation:=C2=A0You can easily work around this in your Camel applications=
 by removing the=C2=A0headers in your Camel routes. There are many ways of =
doing this, also=C2=A0globally or per route. This means you could use the r=
emoveHeaders EIP, to filter out anything like "cAmel, cAMEL" etc, or in gen=
eral everything not starting with "Camel", "camel" or "org.apache.camel.".

This issue is being tracked as CAMEL-21838=20

Credit:

Mark Thorson (finder)

References:

https://camel.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-27636
https://issues.apache.org/jira/browse/CAMEL-21838

