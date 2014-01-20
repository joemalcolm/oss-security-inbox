X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/01/20/4
Message-ID: <20140120150846.GA19365@eldamar.local>
Date: Mon, 20 Jan 2014 16:08:46 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Cc: David Prévot <taffit@...ian.org>
Subject: CVE request: spip: cross-site scripting vulnerability
Content-Type: text/plain; charset=utf-8

Hi

I would like to request a CVE for the following cross-site scripting
vulnerability in spip: authors could inject code via their name, which
is displayed in the signature of their articles and author page.

Upstream fixed this issue in 3.0.13[1,2,3] and also for the 2.1 branch
in [4,5].

 [1] http://www.spip.net/fr_article5648.html
 [2] http://core.spip.org/projects/spip/repository/revisions/20902
 [3] http://zone.spip.org/trac/spip-zone/changeset/77768
 [4] http://core.spip.org/projects/spip/repository/revisions/20972
 [5] http://www.spip.net/fr_article5665.html

Could a CVE be assigned for this issue? (unfortunately the changes
entries are only in french)

Regards,
Salvatore
