X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/06/29/1
Message-ID: <20090629132323.10683f9e@redhat.com>
Date: Mon, 29 Jun 2009 13:23:23 +0200
From: Tomas Hoger <thoger@...hat.com>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: nagios: remote code execution
Content-Type: text/plain; charset=utf-8

Hi!

Just in case you missed it - nagios 3.1.1 mentions:

# Security fix for statuswml.cgi where arbitrary shell injection was
possible 

( http://www.nagios.org/development/history/core-3x/ )

Further details in the upstream bug:

  http://tracker.nagios.org/view.php?id=15

-- 
Tomas Hoger / Red Hat Security Response Team
