X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/06/12/3
Message-ID: <5399FA3D.1050507@enovance.com>
Date: Thu, 12 Jun 2014 15:06:37 -0400
From: Tristan Cacqueray <tristan.cacqueray@...vance.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA 2014-018] Keystone privilege escalation through trust chained delegation (CVE-2014-3476)
Content-Type: text/plain; charset=utf-8

OpenStack Security Advisory: 2014-018
CVE: CVE-2014-3476
Date: June 12, 2014
Title: Keystone privilege escalation through trust chained delegation
Reporter: Steven Hardy (Red Hat)
Products: Keystone
Versions: up to 2013.2.3, and 2014.1 to 2014.1.1

Description:
Steven Hardy from Red Hat reported a vulnerability in Keystone chained
delegation. By creating a delegation from a trust or OAuth token, a
trustee may abuse the identity impersonation against keystone and
circumvent the enforced scope, resulting in potential elevated
privileges to any of the trustor's projects and or roles. All Keystone
deployments configured to enable trusts are affected, which has been the
default since Grizzly.

Juno (development branch) fix:
https://review.openstack.org/99687

Icehouse fix:
https://review.openstack.org/99700

Havana fix:
https://review.openstack.org/99703

Notes:
This fix will be included in the Juno-2 development milestone and in
future 2013.2.4 and 2014.1.2 releases.

References:
http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-3476
https://launchpad.net/bugs/1324592

-- 
Tristan Cacqueray
OpenStack Vulnerability Management Team




Download attachment "signature.asc" of type "application/pgp-signature" (539 bytes)
