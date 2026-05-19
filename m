Received: (qmail 20076 invoked by uid 550); 19 May 2026 15:49:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19580 invoked from network); 19 May 2026 12:14:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andrea Cosentino <acosentino@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8d2e418a-ab77-0dac-f88c-1e58d436c0cb@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 12:13:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-47323: Apache Camel: Camel-CXF Message Header Injection
 via Missing Inbound Filtering 

Severity: moderate=20

Affected versions:

- Apache Camel (org.apache.camel:camel-cxf-rest) 3.18.0 before 4.14.6
- Apache Camel (org.apache.camel:camel-cxf-rest) 4.15.0 before 4.18.2

Description:

Camel-CXF and Camel-Knative Message Header Injection via Missing Inbound Fi=
ltering

The CXF and Knative HeaderFilterStrategy implementations (CxfRsHeaderFilter=
Strategy in camel-cxf-rest, CxfHeaderFilterStrategy in camel-cxf-transport,=
 and KnativeHttpHeaderFilterStrategy in camel-knative-http) only filter out=
bound Camel-internal headers via setOutFilterStartsWith, while not configur=
ing inbound filtering via setInFilterStartsWith. As a result, an unauthenti=
cated attacker can inject Camel-internal headers (e.g. CamelExecCommandExec=
utable, CamelFileName) via HTTP requests to CXF-RS or CXF-SOAP endpoints. W=
hen a route forwards messages from these endpoints to header-driven compone=
nts such as camel-exec or camel-file, the injected headers override configu=
red values, enabling remote code execution or arbitrary file writes. This i=
s the same pattern that was previously addressed in camel-undertow (CVE-202=
5-30177), the broader incoming-header filter (CVE-2025-27636 and CVE-2025-2=
9891), and non-HTTP strategies (CVE-2026-40453).


This issue affects Apache Camel: from 3.18.0 before 4.14.6, from 4.15.0 bef=
ore 4.18.2.

Users are recommended to upgrade to version 4.19.0, which fixes the issue. =
If users are on the 4.18.x LTS releases stream, then they are suggested to =
upgrade to 4.18.2. If users are on the 4.14.x LTS releases stream, then the=
y are suggested to upgrade to 4.14.6.

Credit:

Quac Tran (finder)

References:

https://camel.apache.org/security/CVE-2026-47323.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-47323

