X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/26/3
Message-ID: <53FC1201.7040505@redhat.com>
Date: Tue, 26 Aug 2014 14:50:09 +1000
From: Murray McAllister <mmcallis@...hat.com>
To: oss-security@...ts.openwall.com
CC: 759282@...s.debian.org
Subject: CVE request: php-pear, pear's insecure /tmp/ use for cache data
Content-Type: text/plain; charset=utf-8

Hello,

It was reported that the pear utility insecurely used the /tmp/ 
directory for cache data. A local attacker could use this flaw to 
perform a symbolic link attack against a user (typically the root user) 
running a pear command (such as "pear install").

Original report:

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=759282

Could a CVE please be assigned?

Thanks,

--
Murray McAllister / Red Hat Product Security
