X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/10/17/7
Message-Id: <201210171248.19746.geissert@debian.org>
Date: Wed, 17 Oct 2012 12:48:19 -0500
From: Raphael Geissert <geissert@...ian.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: radsecproxy incorrect x.509 certificate validation
Content-Type: text/plain; charset=utf-8

Hi,

Ralf Paffrath discovered that radsecproxy may incorrectly accept a client 
certificate if the certificates chain was validated with the CA settings of 
one configuration block but the other certificate constraints failed, and the 
certificate constraints of another configuration block passed (ignoring this 
other config block's CA settings.)

This issue has been fixed in version 1.6.1. However, it introduces a minor 
regression as it ignores some configuration blocks (see the references for 
further details.)

Could a CVE id be assigned?

Thanks in advance. 

References:
https://project.nordu.net/browse/RADSECPROXY-43
https://postlister.uninett.no/sympa/arc/radsecproxy/2012-09/msg00001.html
https://postlister.uninett.no/sympa/arc/radsecproxy/2012-09/msg00006.html

-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
