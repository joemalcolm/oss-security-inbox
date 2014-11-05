X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/05/15
Message-ID: <57A89B78-F96E-4E49-9AAC-034AB2BA25B0@redhat.com>
Date: Wed, 05 Nov 2014 13:51:25 -0700
From: "Vincent Danen" <vdanen@...hat.com>
To: "OSS Security List" <oss-security@...ts.openwall.com>
Subject: CVE-2014-7828 FreeIPA 4.0/4.1 does not require password when OTP used
Content-Type: text/plain; charset=utf-8

Just a heads-up that FreeIPA 4.0 and 4.1 (_not_ earlier versions), when 
OTP is used, did not requite the password (or second factor of 2FA) to 
login.

https://fedorahosted.org/freeipa/ticket/4690
https://bugzilla.redhat.com/show_bug.cgi?id=1160871
This was assigned CVE-2014-7828.  A patch to fix it is available:

https://www.redhat.com/archives/freeipa-devel/2014-November/msg00068.html

Upstream is recommending users disable 2FA until they can get a fix out 
tomorrow:

https://www.redhat.com/archives/freeipa-users/2014-November/msg00077.html

-- 
Vincent Danen / Red Hat Product Security
