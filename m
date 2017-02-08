X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/02/08/4
Message-ID: <ddadc77b-f3fe-1c7b-fd44-513b11d2f0cf@canonical.com>
Date: Wed, 8 Feb 2017 02:10:05 -0600
From: Tyler Hicks <tyhicks@...onical.com>
To: oss-security@...ts.openwall.com
Cc: James Page <james.page@...ntu.com>, security@...ntu.com
Subject: CVE Request: Nova-LXD incorrectly applied Neutron security group rules
Content-Type: text/plain; charset=utf-8

Neutron security group rules were not being applied to Nova-LXD
instances due to improperly named veth pairs. This resulted in network
traffic to/from external hosts being incorrectly allowed.

Bug: https://launchpad.net/bugs/1656847
Fix:
https://github.com/openstack/nova-lxd/commit/1b76cefb92081efa1e88cd8f330253f857028bd2

Thank you!

Tyler



Download attachment "signature.asc" of type "application/pgp-signature" (802 bytes)
