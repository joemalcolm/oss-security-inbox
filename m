X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/12/16/2
Message-ID: <CALSkbjpG+QgQg4LRS5hMG-oZZ3uxTb4xeg8MCyc0dHED9jRLPg@mail.gmail.com>
Date: Mon, 16 Dec 2019 14:15:35 +0000
From: daniel gaspar <danielvazgaspar@...il.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2019-12414] Apache Incubator Superset medata data leak vulnerability
Content-Type: text/plain; charset=utf-8

Severity: Low

Vendor:
The Apache Software Foundation

Product:
Apache Incubator Superset

Versions Affected:
Superset < 0.32

Description:
A user can view database names that he has no access to on a dropdown list
in SQLLab

Mitigation:
Superset users with version prior to 0.32 should upgrade to 0.32 or higher

