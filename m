X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/04/6
Message-ID: <20170704150338.7oj7i5iah3hciy6g@eldamar.local>
Date: Tue, 4 Jul 2017 17:03:38 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Subject: jabberd2: CVE-2017-10807: Allows to authenticate using SASL ANONYMOUS even if disabled
Content-Type: text/plain; charset=utf-8

Hi

The Jabberd, before 2.6.1 allowed anyone to authenticate SASL
ANONYMOUS, even when sasl.anonymous c2s.xml option is not enabled.
The bug allows nauthorized usage of jabberd server installations and
could possibly lead to a DoS.

References:

https://github.com/jabberd2/jabberd2/releases/tag/jabberd-2.6.1

Upstream fix:

https://github.com/jabberd2/jabberd2/commit/8416ae54ecefa670534f27a31db71d048b9c7f16

As mentioned in the subject, MITRE has assigned CVE-2017-10807 for
this issue.

Regards,
Salvatore
