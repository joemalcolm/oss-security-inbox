X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/05/01/10
Message-ID: <5361CE7E.5090209@redhat.com>
Date: Thu, 01 May 2014 14:33:02 +1000
From: Murray McAllister <mmcallis@...hat.com>
To: oss-security@...ts.openwall.com
CC: 746322@...s.debian.org
Subject: CVE request: Python Bottle JSON content-type not restrictive enough
Content-Type: text/plain; charset=utf-8

Hi,

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=746322 and 
https://github.com/defnull/bottle/issues/616 report an issue where 
Bottle treated "text/plain;application/json" as JSON, allowing security 
mechanisms to be bypassed.

 From the upstream report, "For example Chrome will not allow 
cross-origin xmlhttprequests with the content type set to 
"application/json" but you can set it to "text/plain;application/json" 
instead and bottle will accept it."

Can a CVE please be assigned if one has not been already?

Thanks,

--
Murray McAllister / Red Hat Security Response Team

https://bugzilla.redhat.com/show_bug.cgi?id=1093255
