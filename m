X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/09/16/18
Message-ID: <160916195601.AA66726.SM@caleb.ins.cwru.edu>
Date: Fri, 16 Sep 2016 15:56:01 -0400
From: Chet Ramey <chet.ramey@...e.edu>
To: john.haxby@...cle.com, oss-security@...ts.openwall.com
Cc: chet.ramey@...e.edu
Subject: Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME
Content-Type: text/plain; charset=utf-8

> > I believe the fix in parse.y is this (Chet, please correct me if I'm wrong):
> 
> Yes, that is the current fix for this.  There are other ways to do it.

Here's a patch to bash-4.3 that will fix this.

Chet


View attachment "prompt-string-comsub.patch" of type "text/plain " (3323 bytes)

``The lyf so short, the craft so long to lerne.'' - Chaucer
		 ``Ars longa, vita brevis'' - Hippocrates
Chet Ramey, UTech, CWRU    chet@...e.edu    http://cnswww.cns.cwru.edu/~chet/

