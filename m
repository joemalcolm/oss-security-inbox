X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/07/11/1
Message-ID: <4E1AB63A.1010508@suse.de>
Date: Mon, 11 Jul 2011 10:37:14 +0200
From: Ludwig Nussel <ludwig.nussel@...e.de>
To: oss-security@...ts.openwall.com, Marcus Rueckert <mrueckert@...e.de>, security@...y-lang.org, Urabe Shyouhei <shyouhei@...y-lang.org>
Subject: CVE Request: ruby PRNG fixes
Content-Type: text/plain; charset=utf-8

Hi,

Ruby 1.8.7-p352 fixes initialization of the PRNG in forked
processes:

http://www.ruby-lang.org/en/news/2011/07/02/ruby-1-8-7-p352-released/
http://redmine.ruby-lang.org/issues/4579
http://svn.ruby-lang.org/cgi-bin/viewvc.cgi?view=revision&revision=31713
http://svn.ruby-lang.org/cgi-bin/viewvc.cgi?view=revision&revision=32050

cu
Ludwig

-- 
  (o_   Ludwig Nussel
  //\
  V_/_  http://www.suse.de/
SUSE LINUX Products GmbH, GF: Jeff Hawn, Jennifer Guild, Felix 
Imendörffer, HRB 16746 (AG Nürnberg)
