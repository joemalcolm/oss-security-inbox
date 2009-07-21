X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/07/21/3
Message-Id: <1248202636.3701.16.camel@dhcp-lab164.englab.brq.redhat.com>
Date: Tue, 21 Jul 2009 20:57:16 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
Cc: oss-security@...ts.openwall.com
Subject: CVE Request -- RubyGems
Content-Type: text/plain; charset=utf-8

Hello Steve, vendors,

  a potential system integrity violation flaw
was found in the way RubyGems used to handle
it's external Gem archives. A remote attacker
could provide a specially-crafted Gem (POSIX tar)
archive, which once opened by an unsuspecting
user, would overwrite relevant system file.

References:
----------
http://bugs.gentoo.org/show_bug.cgi?id=278566
http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-core/24472
http://redmine.ruby-lang.org/issues/show/1800

Credit:  Kazuhiro NISHIYAMA
-------

Affected versions: Issue reported in RubyGems-1.3.4,
-----------------  but confirmed also in 
                   RubyGems-1.3.1.


Could you please allocate a new CVE identifier for it?


Thanks && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team

