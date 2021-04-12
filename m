X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/04/12/3
Message-ID: <CAJRvFdpVe6LQf3TDoPyhhQBeMTLQe+kRdyMH+Ge5kJ8L5NYcog@mail.gmail.com>
Date: Mon, 12 Apr 2021 16:09:58 -0500
From: Mike Drob <mdrob@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-29262: Apache Solr: Misapplied Zookeeper ACLs can result in leakage of configured authentication and authorization settings
Content-Type: text/plain; charset=utf-8

Description:

When starting Apache Solr versions prior to 8.8.2, configured with the
SaslZkACLProvider or VMParamsAllAndReadonlyDigestZkACLProvider and no
existing security.json znode, if the optional read-only user is
configured then Solr would not treat that node as a sensitive path and
would allow it to be readable.

Additionally, with any ZkACLProvider, if the security.json is already
present, Solr will not automatically update the ACLs.

This issue is being tracked as SOLR-15249

Mitigation:

Manually set appropriate ACLs on /security.json znode.

Credit:

Timothy Potter and Mike Drob, Apple Cloud Services

