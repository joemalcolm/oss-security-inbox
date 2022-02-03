X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/02/03/2
Message-ID: <CAD+38UDCM==oLPK0E6pjt18GPkoyYMN9U+_hZ=1DTyQvN0JQ1g@mail.gmail.com>
Date: Thu, 3 Feb 2022 10:07:26 -0800
From: Abhishek Tiwari <abti@...che.org>
To: oss-security@...ts.openwall.com
Cc: user@...blin.apache.org
Subject: CVE-2021-36152: Apache Gobblin: Insecure TrustManager used in LDAP connections
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

Apache Gobblin trusts all certificates used for LDAP connections in
Gobblin-as-a-Service. This affects versions <= 0.15.0. Users should
update to version 0.16.0 which addresses this issue.

Credit:

Apache Gobblin would like to thank Simon Gerst for reporting this issue.

