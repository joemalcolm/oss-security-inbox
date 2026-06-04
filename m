Received: (qmail 17548 invoked by uid 550); 4 Jun 2026 15:59:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15461 invoked from network); 4 Jun 2026 15:47:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1780588016;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=UW+TmXuyZsdYcGy+LXesW9SGWUTuTVNHUdLCCVJ7JQM=;
	b=eq/635Ue8TRDl+cI6G5VdroQlgt3nRJYV+QQcbGRZT0WI2Sa51MZpDMI4M7vkNDrya+aER
	nxVbjXjuj80aXI52njboB8s9bCvQs0WLQfmxDNgoZTMIV00oEK3eb+UlD5AlW6HZkyu/9w
	hdlLNxRWLhjwibKdy6vzqfOlcgKaKCjBDQD1tzzP47BmItc1AKGCLPDf8sJzU7qb8h/C8u
	xF94HbPffMODlzbrYd3tqjyM0oyJI/MgddPR93rwpLfPrBcrkEghbPjzgB8fTMrpmC2b5F
	L3KQwKbxwxZER2TiweJp6EWRfE03M7wwOhDMMakejPH/rbjRg9wsLg2LbePsDg==
Message-ID: <fa7de811-9e3b-499a-af21-a21b8e67b5d7@cpansec.org>
Date: Thu, 4 Jun 2026 16:46:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTGAoC5XbhDMUlaA9UkR4TM/70a16WBmgX9SD0YL5AKaa+qMs80SZUbxz8CEWVEw++RKPiazRAHcb5rAKtb8NL/HcO9MuafremTlVJvOKSYsOwFlIP5YDL2tIhRp/xBRZb9np2s+XoIRNdYasXe1RJphBEZtHsOAYUv+vvsQcTIWUXZP0lJMlGJDcS/9rYQUw16g/stWpu8zdif1E315WlXpoJzV/PtitpFPblVNDaxG2Gy5YaO+Fiao8682F42WXetf+0B8hpkgyAd6PteKsiCB7hRrgCOcW6vD/A5pEY64VVWZI+9b0eGX1fGTPpADDCjg8rTOuiT4O1NJ4m4DRuW5PidRi0DBSZb4QX9aqGoBBoVs/opLJ/0gJvUxkXS/AGdM/Sc11f9TEytYuWqTSZtv0CQlln+0sckzn5NdGc1m1xvzWPITV0uOiFUsRkroJ+aWTpxzmgY4ok1LrXLKjYAagPKOq5yM1ZYXmfpQTnf4Rodg39CfmoaZBcvPogtO9YKuxKKRiQWsTFKZn+4zTWx0mSxRYZOObIu2QvQ9lAyfQUyiNtljB4zTVeiQUceRGLJFIHVCi/UewkZaSyktfYHH5FeYrjv9gnrWPxD9hJ/Ekuasof1bUHDcQc2xT+XVRo4M6GAEUNFdFTJiJiRnwMMaBvbzHzT+8Un4qoYgxJMo8w
X-GND-State: clean
X-GND-Score: 0
Subject: [oss-security] CVE-2026-46739: Net::Statsd versions before 0.13 for Perl allow
 metric injections

========================================================================
CVE-2026-46739                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-46739
   Distribution:  Net-Statsd
       Versions:  before 0.13

       MetaCPAN:  https://metacpan.org/dist/Net-Statsd
       VCS Repo:  https://github.com/cosimo/perl5-net-statsd


Net::Statsd versions before 0.13 for Perl allow metric injections

Description
-----------
Net::Statsd versions before 0.13 for Perl allow metric injections.

The metric names are not checked for newlines, colons or pipes. Metrics
generated from untrusted sources could inject additional statsd
metrics.

The update_stats (used for updating counters) and gauge methods do not
check that values are numeric (which would block metric injection).

Problem types
-------------
- CWE-93 Improper Neutralization of CRLF Sequences

Workarounds
-----------
Apply the linked pull request.

Otherwise ensure only trusted data is submitted to metrics.


Solutions
---------
Upgrade to version 0.13 or later.


References
----------
https://github.com/cosimo/perl5-net-statsd/pull/10
https://www.cve.org/CVERecord?id=CVE-2026-46719
https://www.cve.org/CVERecord?id=CVE-2026-46720



