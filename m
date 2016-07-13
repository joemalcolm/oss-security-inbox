X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/07/13/9
Message-ID: <20160713172318.GA28955@sisay.ephaone.org>
Date: Wed, 13 Jul 2016 19:23:18 +0200
From: Michael Scherer <misc@...b.org>
To: oss-security@...ts.openwall.com
Subject: CVE Request: openshift-node is logging private RSA keys to the systemd journal
Content-Type: text/plain; charset=utf-8

Hi,

I stumbled on https://github.com/openshift/origin/issues/3951 , which was found by Adam Miller,
but he didn't request a CVE id. The vendor (Red Hat) told me to request the 
CVE on oss-sec since the issue is public since a while. 

-- 
Michael Scherer
