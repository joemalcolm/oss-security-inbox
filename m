X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/09/12
Message-ID: <54362BD8.3080008@redhat.com>
Date: Thu, 09 Oct 2014 17:31:52 +1100
From: Murray McAllister <mmcallis@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2014-3691, foreman-proxy: failure to verify SSL certificates
Content-Type: text/plain; charset=utf-8

It was discovered that Foreman Smart Proxy failed to verify SSL 
certificates. As noted in the upstream bug, "This permits any client 
with access to the API to make requests and perform actions (permitting 
control of Puppet CA, DHCP, DNS etc.)". (CVE-2014-3691)

A mitigation is available from the following:

https://groups.google.com/forum/#!topic/foreman-announce/jXC5ixybjqo

References:

http://projects.theforeman.org/issues/7822
https://bugzilla.redhat.com/show_bug.cgi?id=1150879

Cheers,

--
Murray McAllister / Red Hat Product Security
