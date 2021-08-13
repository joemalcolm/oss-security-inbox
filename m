X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/08/14/1
Message-ID: <7b76d2e2-1438-b059-0e65-a2986c815f76@apache.org>
Date: Fri, 13 Aug 2021 12:20:03 +0000
From: Kaxil Naik <kaxilnaik@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-35936: Apache Airflow: No Authentication on Logging Server 
Content-Type: text/plain; charset=utf-8

Description:

If remote logging is not used, the worker (in the case of CeleryExecutor) or the scheduler (in the case of LocalExecutor) runs a Flask logging server and is listening on a specific port and also binds on 0.0.0.0 by default.
This logging server had no authentication and allows reading log files of DAG jobs.

This issue affects Apache Airflow < 2.1.2.

Mitigation:

Use remote logging with GCS, S3, Elasticsearch etc. This is recommended for production environments.

And do not publicly expose any other ports apart from Webserver port, Flower port etc.

Credit:

Apache Airflow would like to thank Dolev Farhi for reporting this issue.

