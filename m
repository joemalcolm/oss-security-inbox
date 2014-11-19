X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/19/23
Message-ID: <546D286A.3060203@redhat.com>
Date: Thu, 20 Nov 2014 10:31:54 +1100
From: Murray McAllister <mmcallis@...hat.com>
To: oss-security@...ts.openwall.com
CC: 770222@...s.debian.org
Subject: CVE request: icecast: possible leak of on-connect scripts
Content-Type: text/plain; charset=utf-8

Good morning,

It was reported that Icecast could possibly leak the contents of 
on-connect scripts to clients, which may contain sensitive information. 
This issue has been fixed in the 2.4.1 release:

http://icecast.org/news/icecast-release-2_4_1/

"Fix on-connect and on-disconnect script STDIN/STDOUT/STDERR corruption 
due to shared file descriptors."

References:

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=770222

https://trac.xiph.org/ticket/2089

Cheers,

--
Murray McAllister / Red Hat Product Security

https://bugzilla.redhat.com/show_bug.cgi?id=1165880
