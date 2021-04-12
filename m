X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/04/12/2
Message-ID: <CAJRvFdqhi0PfOmZsxOyVYxW3Jyv6E9GAR_UKnM0LqD_Ti5io6w@mail.gmail.com>
Date: Mon, 12 Apr 2021 16:09:56 -0500
From: Mike Drob <mdrob@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-29943: Apache Solr Unprivileged users may be able to perform unauthorized read/write to collections
Content-Type: text/plain; charset=utf-8

Description:

When using ConfigurableInternodeAuthHadoopPlugin for authentication,
Apache Solr versions prior to 8.8.2 would forward/proxy distributed
requests using server credentials instead of original client
credentials. This would result in incorrect authorization resolution
on the receiving hosts.

This issue is being tracked as SOLR-15233

Credit:

Geza Nagy

