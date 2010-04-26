X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/04/26/2
Message-ID: <20100426181408.18181340@redhat.com>
Date: Mon, 26 Apr 2010 18:14:08 +0200
From: Tomas Hoger <thoger@...hat.com>
To: OSS Security <oss-security@...ts.openwall.com>
Cc: ppisar@...hat.com
Subject: WordNet wn format string issue
Content-Type: text/plain; charset=utf-8

Hi!

Petr Pisar discovered a format string bug in wordnet while doing review
of wordnet packages in Fedora / RHEL:

  https://bugzilla.redhat.com/show_bug.cgi?id=585206
  https://bugs.gentoo.org/show_bug.cgi?id=317265

We're not treating this as security issue (no good attack vector,
fortify source mitigation) and fixing it as a regular bug.  Though as
the issue can be triggered in a similar way as CVE-2008-2149, and some
vendors fixed that one as security, bringing this to attention if
anyone wants to use a different approach.

-- 
Tomas Hoger / Red Hat Security Response Team
