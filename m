X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/04/19/3
Message-ID: <CAPnWRTg33J=jQSU6E02creHzNvC_oVk+hgbC1y-V07m9ATXY6Q@mail.gmail.com>
Date: Thu, 19 Apr 2018 14:30:59 -0700
From: Ed Cable <edcable@...os.org>
To: user@...eract.apache.org, Dev <dev@...eract.apache.org>,  security <security@...che.org>, oss-security@...ts.openwall.com,  圆珠笔 <627963028@...com>
Subject: [SECURITY] CVE-2018-1291: Apache Fineract SQL Injection Vulnerability - Order by injection via Order Param
Content-Type: text/plain; charset=utf-8

Severity: Critical

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Fineract 1.0.0
Apache Fineract 0.6.0-incubating
Apache Fineract 0.5.0-incubating
Apache Fineract 0.4.0-incubating

Description:

Apache Fineract exposes different REST end points to query domain specific
entities with a Query Parameter 'orderBy' which
are appended directly with SQL statements. A hacker/user can inject/draft
the  'orderBy'  query parameter by way of the "order" param  in such a way
to
to read/update the data for which he doesn't have authorization.

Mitigation:
All users should migrate to Apache Fineract 1.1.0 version
https://github.com/apache/fineract/tree/1.1.0


Credit:
This issue was discovered by 圆珠笔 (627963028@...com)

References:
http://fineract.apache.org/
https://cwiki.apache.org/confluence/display/FINERACT/Apache+
Fineract+Security+Report

Regards,
Apache Fineract Team

