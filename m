X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/11/26/6
Message-ID: <20121126150635.GA23095@inutil.org>
Date: Mon, 26 Nov 2012 16:06:35 +0100
From: Moritz Muehlenhoff <jmm@...ian.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: Curl insecure usage
Content-Type: text/plain; charset=utf-8

Hi,
during the triage of the SSL client bugs spotted by the
http://www.cs.utexas.edu/~shmat/shmat_ccs12.pdf paper
Debian developer Alessandro Ghedini discovered two more
applications using Curl in an insecure manner:

1. opendnssec (in the eppclient tool)
http://lists.opendnssec.org/pipermail/opendnssec-user/2012-November/002296.html

2. PHPcas (used by Moodle e.g.):
https://github.com/Jasig/phpCAS/pull/58

Please assign CVE IDs for these.

Cheers,
        Moritz
