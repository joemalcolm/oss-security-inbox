X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/12/26/1
Message-ID: <52BC86F2.5000001@redhat.com>
Date: Fri, 27 Dec 2013 01:13:46 +0530
From: Ratul Gupta <ratulg@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: rubygem-will_paginate XSS vulnerabilities
Content-Type: text/plain; charset=utf-8

Hello,

https://bugzilla.redhat.com/show_bug.cgi?id=1046642

Cross-Site Scripting (XSS) vulnerabilities were found in will_paginate 
gem for Ruby, where certain input related to generated pagination links 
were not properly sanitised before being returned. This could be 
exploited to execute arbitrary HTML and script code in a user's browser 
session in context of an affected site.

Can a CVE please be assigned to this issue?

-- 
Regards,

Ratul Gupta / Red Hat Security Response Team

