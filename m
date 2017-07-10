X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/10/8
Message-ID: <CA+LM4MvaXPq4yO0iS0RSMcZorjWwPtexj0L4ozJ7jPRZqxC4ug@mail.gmail.com>
Date: Mon, 10 Jul 2017 10:27:37 -0700
From: Sailesh Mukil <sailesh@...che.org>
To: oss-security@...ts.openwall.com
Subject: Fwd: [SECURITY] CVE-2017-5652 Apache Impala (incubating) Information Disclosure
Content-Type: text/plain; charset=utf-8

CVE-2017-5652 Apache Impala (incubating) Information Disclosure


Severity: High


Versions Affected:

Apache Impala (incubating) 2.7.0 to 2.8.0


Description:

During a routine security analysis, it was found that one of the ports sent
data in plaintext even when the cluster was configured to use TLS. The port
in question was used by the StatestoreSubscriber class which did not use
the appropriate secure Thrift transport when TLS was turned on. It was
therefore possible for an adversary, with access to the network, to
eavesdrop on the packets going to and coming from that port and view the
data in plaintext.


Mitigation:

Users of the affected versions should apply the following mitigation:

 - Upgrade to Apache Impala (incubating) 2.9.0


Credit:
This issue was identified and reported responsibly by the Cloudera security
team.


References:
[1] https://issues.apache.org/jira/browse/IMPALA-5253

