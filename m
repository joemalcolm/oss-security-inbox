X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/11/08/1
Message-ID: <CABDpyChoSC+O_whkL_7Zh4ZMiXf7qmWpKoa-hep0dS6MTnJYJA@mail.gmail.com>
Date: Wed, 7 Nov 2018 13:24:03 -0800
From: Daniel Dai <daijy@...che.org>
To: user@...e.apache.org, dev@...e.apache.org, announce@...che.org,  security <security@...e.apache.org>, oss-security@...ts.openwall.com
Subject: [SECURITY] CVE-2018-1314: Hive explain query not being authorized
Content-Type: text/plain; charset=utf-8

CVE-2018-1314: Hive explain query not being authorized

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: This vulnerability affects all versions of Hive,
including 2.3.3, 3.1.0 and earlier

Description: Hive "EXPLAIN" operation does not check for necessary
authorization of involved entities in a query. An unauthorized user
can do "EXPLAIN" on arbitrary table or view and expose table metadata
and statistics.

Mitigation: all Hive users shall upgrade to 2.3.4 or 3.1.1 or later
