X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/10/9
Message-ID: <CA+LM4Mtfo75gm=L8D2Qjre2eTbbCqJG6b4F7Tia+6gBi8V4nQg@mail.gmail.com>
Date: Mon, 10 Jul 2017 11:25:37 -0700
From: Sailesh Mukil <sailesh@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2017-5640 Apache Impala (incubating) Information Disclosure
Content-Type: text/plain; charset=utf-8

CVE-2017-5640 Apache Impala (incubating) Information Disclosure

Severity: High

Versions Affected:
Apache Impala (incubating) 2.7.0 to 2.8.0

Description:
It was noticed that a malicious process impersonating an Impala daemon
could cause Impala daemons to skip authentication checks when Kerberos
is enabled (but TLS is not). If the malicious server responds with
‘COMPLETE’ before the SASL handshake has completed, the client will
consider the handshake as completed even though no exchange of
credentials has happened.

Mitigation:
Users of the affected versions should apply the following mitigation:
Upgrade to Apache Impala (incubating) 2.9.0

Credit:
This issue was identified by the Cloudera Security team.

References:
https://issues.apache.org/jira/browse/IMPALA-5005
