X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/04/9
Message-ID: <54082301.6030506@reactos.org>
Date: Thu, 04 Sep 2014 10:29:53 +0200
From: Pierre Schweitzer <pierre@...ctos.org>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: RFC: Denial of Service in XCache?
Content-Type: text/plain; charset=utf-8

Dear all,

I'm looking for comments about a XCache bug which is visible in Ubuntu
12.04LTS (and left unfixed so far). It is #LP1189436
(https://bugs.launchpad.net/ubuntu/+source/xcache/+bug/1189436).
It basically happens when you try to query XCache state, then it SIGSEV
(and thus makes php5 crash). This can be easily reproduced with the
Munin plugin at: http://www.ohardt.net/dev/munin/ (munin_xcache.php
file). It triggers the crash on every query on our infrastructure.

I'm not sure it's a security issue as you may protect this using admin
password. But what about shared web hosting where you wouldn't have set
any password?

Was it spotted/reported on other distributions?

Cheers,

-- 
Pierre Schweitzer <pierre@...ctos.org>
System & Network Administrator
Senior Kernel Developer
ReactOS Deutschland e.V.



Download attachment "smime.p7s" of type "application/pkcs7-signature" (4305 bytes)
