X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/02/03/4
Message-ID: <CAF+kE=T04dwUSyQ5BMw2tC6-Z_R=uUUT=Bu3dKSNnwCkLbq7Hg@mail.gmail.com>
Date: Thu, 3 Feb 2022 14:01:23 -0600
From: Justin Bertram <jbertram@...che.org>
To: oss-security@...ts.openwall.com, announce@...che.org
Subject: ARTEMIS-3593: CVE-2022-23913: Apache ActiveMQ Artemis DoS
Content-Type: text/plain; charset=utf-8

Description:

In Apache ActiveMQ Artemis prior to 2.20.0 or 2.19.1, an attacker could
partially disrupt availability (DoS) through uncontrolled resource
consumption of memory.

Mitigation:

Upgrade to Apache ActiveMQ Artemis 2.20.0 or 2.19.1 (if you're still using
Java 8).

References:

https://lists.apache.org/thread/fjynj57rd99s814rdn5hzvmx8lz403q2

