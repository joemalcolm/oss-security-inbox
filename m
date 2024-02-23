Received: (qmail 17921 invoked by uid 550); 23 Feb 2024 21:22:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32734 invoked from network); 23 Feb 2024 19:31:06 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Otavio Rodolfo Piske <orpiske@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bfaa14be-f27b-e2df-da57-eb402f8a2c5d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 23 Feb 2024 19:34:19 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-22371: Apache Camel issue on ExchangeCreatedEvent 

Affected versions:

- Apache Camel 1.x through 1.6.0 unaffected
- Apache Camel 3.21.x through 3.21.3
- Apache Camel 3.22.x through 3.22.0
- Apache Camel 4.0.x through 4.0.3
- Apache Camel 4.x through 4.3.0

Description:

Exposure of sensitive data by by crafting a malicious EventFactory and prov=
iding a custom ExchangeCreatedEvent that exposes sensitive data. Vulnerabil=
ity in Apache Camel.This issue affects Apache Camel: from 3.21.X through 3.=
21.3, from 3.22.X through 3.22.0, from 4.0.X through 4.0.3, from 4.X throug=
h 4.3.0.

Users are recommended to upgrade to version 3.21.4, 3.22.1, 4.0.4 or 4.4.0,=
 which fixes the issue.

This issue is being tracked as CAMEL-20305=20

Credit:

Otavio Rodolfo Piske from the Apache Software Foundation (finder)

References:

https://camel.apache.org/security/CVE-2024-22371.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-22371
https://issues.apache.org/jira/browse/CAMEL-20305

