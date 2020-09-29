X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/09/29/3
Message-ID: <b8d7ab76-2bef-4c91-bc3b-a187f7ea47d5@Spark>
Date: Tue, 29 Sep 2020 10:34:33 -0700
From: Will Barrett <barrett.william@...il.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-13952] Apache Superset Information Disclosure Vulnerability
Content-Type: text/plain; charset=utf-8

Affected Versions: Apache Superset < 0.37.2

In the course of work on the open source project it was discovered that authenticated users running queries against Hive and Presto database engines could access information via a number of templated fields including the contents of query description metadata database, the hashed version of the authenticated users’ password, and access to connection information including the plaintext password for the current connection. It would also be possible to run arbitrary methods on the database connection object for the Presto or Hive connection, allowing the user to bypass security controls internal to Superset. This vulnerability is present in every Apache Superset version < 0.37.2.

Will Barrett
Member of the Project Management Committee
Apache Incubator Superset

