X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/04/22/1
Message-ID: <CAOJmqsDC25MV1BMWeaQNfugjv0WbPRaXE3FTvWKvdWEK2Jfo5g@mail.gmail.com>
Date: Fri, 22 Apr 2016 11:32:26 +1000
From: Brendan Scarvell <bscarvell@....net>
To: oss-security@...ts.openwall.com
Subject: CVE Request - XXE in Pentaho Business Analytics 6.0.1.0.386
Content-Type: text/plain; charset=utf-8

Hi there,

I've discovered an XXE vulnerability in Pentaho Business Analytics
Community Edition 6.0.1.0.386 due to Pentaho's xml parser not disabling the
parsing of external entities.

This issue has been reported to the vendor several times, who has refused
to fix it in the community edition unless an enterprise license is
purchased.  I've created a Github issue (
https://github.com/pentaho/data-access/issues/728) for someone in the
community to submit a patch.


Could a CVE ID please be assigned to this issue.


Thanks,

Brendan Scarvell

