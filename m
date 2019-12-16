X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/12/16/3
Message-ID: <CALSkbjrJaRD51rYCmHr13a8iDepyKKpueJirw0K+tCKwogwyyA@mail.gmail.com>
Date: Mon, 16 Dec 2019 14:16:30 +0000
From: daniel gaspar <danielvazgaspar@...il.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2019-12413] Apache Incubator Superset meta data leak vulnerability
Content-Type: text/plain; charset=utf-8

Severity: Low

Vendor:
The Apache Software Foundation

Product:
Apache Incubator Superset

Versions Affected:
Superset < 0.31

Description:
A user could query database metadata information from a database he has
no access to, by using a specially crafted complex query.

Mitigation:
Superset users with version prior to 0.31 should upgrade to 0.31 or higher

