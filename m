Received: (qmail 7959 invoked by uid 550); 1 Apr 2025 16:43:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1943 invoked from network); 1 Apr 2025 10:15:32 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andrea Cosentino <acosentino@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <edd3eb84-976d-20c7-4e32-760569b4b7d3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 01 Apr 2025 10:15:19 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-30177: Apache Camel: Camel-Undertow Message Header
 Injection via Improper Filtering 

Severity: moderate

Affected versions:

- Apache Camel 4.10.0 before 4.10.3
- Apache Camel 4.8.0 before 4.8.6

Description:

Bypass/Injection vulnerability in Apache Camel in Camel-Undertow component =
under particular conditions.

This issue affects Apache Camel: from 4.10.0 before 4.10.3, from 4.8.0 befo=
re 4.8.6.

Users are recommended to upgrade to version 4.10.3 for 4.10.x LTS and 4.8.6=
 for 4.8.x LTS.

Camel undertow component is vulnerable to Camel message header injection, i=
n particular the custom header filter strategy used by the component only f=
ilter the "out" direction, while it doesn't filter the "in" direction.


This allows an attacker to include Camel specific headers that for some Cam=
el components can alter the behaviour such as the camel-bean component, or =
the camel-exec component.

This issue is being tracked as CAMEL-21876=20

Credit:

Mark Thorson of AT&T (finder)
Mark Thorson of AT&T (reporter)

References:

https://camel.apache.org/security/CVE-2025-27636.html
https://camel.apache.org/security/CVE-2025-29891.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-30177
https://issues.apache.org/jira/browse/CAMEL-21876

