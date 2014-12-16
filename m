X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/16/1
Message-ID: <548FA9C7.7030409@redhat.com>
Date: Tue, 16 Dec 2014 14:40:55 +1100
From: Murray McAllister <mmcallis@...hat.com>
To: oss-security@...ts.openwall.com
Subject: krb5: kadmin NULL pointer dereference issues, CVE-2014-5353 and CVE-2014-5354
Content-Type: text/plain; charset=utf-8

Good morning,

If anyone missed it, there are two NULL pointer dereference issues when 
kadmind is used with an LDAP back end for the KDC database. Both require 
authentication.

CVE-2014-5353
https://github.com/krb5/krb5/commit/d1f707024f1d0af6e54a18885322d70fa15ec4d3

CVE-2014-5354
https://github.com/krb5/krb5/commit/04038bf3633c4b909b5ded3072dc88c8c419bf16

References:
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=773226
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=773228

Cheers,

--
Murray McAllister / Red Hat Product Security
