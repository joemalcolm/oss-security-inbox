X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/02/17/2
Message-ID: <CAH5JyZq1We7GoJGuOu5jzgRiOQ-iQf46yYdO=rWw8Cf-8KR=5g@mail.gmail.com>
Date: Wed, 17 Feb 2021 14:09:11 +0000
From: Kaxil Naik <kaxilnaik@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-26697: Apache Airflow: Lineage API endpoint for Experimental API missed authentication check
Content-Type: text/plain; charset=utf-8

Description:

The lineage endpoint of the deprecated Experimental API was not
protected by authentication in Airflow 2.0.0. This allowed
unauthenticated users to hit that endpoint.

This is low-severity CVE as the attacker needs to be aware of certain
parameters to pass to that endpoint and even after can just get some
metadata about a DAG and a Task.

This issue affects Apache Airflow 2.0.0.

Credit:

Apache Airflow would like to thank Ian Carroll for reporting this issue.

References:
https://lists.apache.org/thread.html/re21fec81baea7a6d73b0b5d31efd07cc02c61f832e297f65bb19b519%40%3Cusers.airflow.apache.org%3E

