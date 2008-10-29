X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/10/29/6
Message-ID: <20081029151659.GF496@linsec.ca>
Date: Wed, 29 Oct 2008 09:16:59 -0600
From: Vincent Danen <vdanen@...sec.ca>
To: oss-security@...ts.openwall.com
Subject: Fwd: [Full-disclosure] [PLSA 2008-36] Ffmpeg: Multiple vulnerabilities
Content-Type: text/plain; charset=utf-8

Was looking at the latest ffmpeg issue (CVE-2008-3230) to see if there
were any patches and found this in my inbox as not dealt with yet.
There are no CVE identifiers for any of these issues that I can see.
I'm not sure how many of these issues would be considered security
sensitive/exploitable, but Pardus had issued an advisory and the
references contain the patches to fix them, but even searching on
MITRE's web site shows no ffmpeg CVEs that I've missed.

Do these need CVE identifiers?

-- 
Vincent Danen @ http://linsec.ca/

Delivered-To: vdanen@...sec.ca
Received: from gmail-pop.l.google.com [209.85.201.109]
	by odin.local with POP3 (fetchmail-6.3.8)
	for <vdanen@...alhost> (single-drop); Fri, 05 Sep 2008 07:55:13 -0600 (MDT)
Received: by 10.141.3.7 with SMTP id f7cs189386rvi;
        Fri, 5 Sep 2008 06:53:06 -0700 (PDT)
Received: by 10.181.13.19 with SMTP id q19mr9092978bki.102.1220622788588;
        Fri, 05 Sep 2008 06:53:08 -0700 (PDT)
Return-Path: <full-disclosure-bounces@...ts.grok.org.uk>
Received: from lists.grok.org.uk (lists.grok.org.uk [78.109.215.201])
        by mx.google.com with ESMTP id 33si162362nfu.7.2008.09.05.06.53.07;
        Fri, 05 Sep 2008 06:53:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of full-disclosure-bounces@...ts.grok.org.uk designates 78.109.215.201 as permitted sender) client-ip=78.109.215.201;
Authentication-Results: mx.google.com; spf=pass (google.com: domain of full-disclosure-bounces@...ts.grok.org.uk designates 78.109.215.201 as permitted sender) smtp.mail=full-disclosure-bounces@...ts.grok.org.uk
Received: from lists.grok.org.uk (localhost [127.0.0.1])
	by lists.grok.org.uk (Postfix) with ESMTP id 1EEBF354;
	Fri,  5 Sep 2008 14:51:48 +0100 (BST)
X-Original-To: full-disclosure@...ts.grok.org.uk
Delivered-To: full-disclosure@...ts.grok.org.uk
Received-SPF: none (lists.grok.org.uk: domain of pinar@...dus.org.tr does not
	designate permitted sender hosts)
Received: from pardus.org.tr (ns2.uludag.org.tr [193.140.100.220])
	by lists.grok.org.uk (Postfix) with ESMTP id 5C6D9118
	for <full-disclosure@...ts.grok.org.uk>;
	Fri,  5 Sep 2008 14:51:13 +0100 (BST)
Received: by pardus.org.tr (Postfix, from userid 1031)
	id 3F37F62E6D12; Fri,  5 Sep 2008 16:51:05 +0300 (EEST)
X-Spam-Checker-Version: SpamAssassin 3.2.1-gr1 (2007-05-02) on
	comar.pardus.org.tr
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.3 tests=AWL,BAYES_00,RDNS_NONE
	autolearn=no version=3.2.1-gr1
Received: from [10.10.1.21] (unknown [194.27.222.62])
	by pardus.org.tr (Postfix) with ESMTP id 9E86A62E155F;
	Fri,  5 Sep 2008 16:51:03 +0300 (EEST)
Message-ID: <48C138EA.6080708@...dus.org.tr>
Date: Fri, 05 Sep 2008 16:49:30 +0300
From: Pardus Security Team <pinar@...dus.org.tr>
Organization: Pardus
User-Agent: Thunderbird/3.0a2 (X11; 2007111515)
MIME-Version: 1.0
To: pardus-security@...dus.org.tr
Cc: full-disclosure@...ts.grok.org.uk
Subject: [Full-disclosure] [PLSA 2008-36] Ffmpeg: Multiple vulnerabilities
X-BeenThere: full-disclosure@...ts.grok.org.uk
Precedence: list
Reply-To: security@...dus.org.tr
List-Id: An unmoderated mailing list for the discussion of security issues
	<full-disclosure.lists.grok.org.uk>
List-Unsubscribe: <https://lists.grok.org.uk/mailman/listinfo/full-disclosure>, 
	<mailto:full-disclosure-request@...ts.grok.org.uk?subject=unsubscribe>
List-Archive: <http://lists.grok.org.uk/pipermail/full-disclosure>
List-Post: <mailto:full-disclosure@...ts.grok.org.uk>
List-Help: <mailto:full-disclosure-request@...ts.grok.org.uk?subject=help>
List-Subscribe: <https://lists.grok.org.uk/mailman/listinfo/full-disclosure>, 
	<mailto:full-disclosure-request@...ts.grok.org.uk?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: full-disclosure-bounces@...ts.grok.org.uk
Errors-To: full-disclosure-bounces@...ts.grok.org.uk

------------------------------------------------------------------------
Pardus Linux Security Advisory 2008-36            security@...dus.org.tr
------------------------------------------------------------------------
       Date: 2008-09-05
   Severity: 2
       Type: Remote
------------------------------------------------------------------------

Summary
=======

There are multiple vulnerabilities detected in  ffmpeg.  Please  update
your packages to the latest versions.


Description
===========

* Free in avcodec_close() avctx->rc_eq. Fix a memory leak.

* Buffer overflow in /libavcodec/dca.c. (patch by Alexander E. Patrakov)

*  Prevent dts  generation  code  to  be  executed  when  delay  is>
MAX_REORDER_DELAY, this fixes  overflow  in  AVStream->pts_buffer.  (in
libavformat/utils.c())

* Tcp/udp memory leak

Affected packages:

   Pardus 2008:
     mplayer, all before 0.0_20080825-92-11
     ffmpeg, all before 0.4.9_20080825-46-14


Resolution
==========

There are update(s) for mplayer, ffmpeg. You can update them via Package
Manager or with a single command from console:

     pisi up mplayer ffmpeg

References
==========

   * http://lists.mplayerhq.hu/pipermail/ffmpeg-cvslog/2008-August/016011.html
   * http://lists.mplayerhq.hu/pipermail/ffmpeg-cvslog/2008-August/016012.html
   * http://lists.mplayerhq.hu/pipermail/ffmpeg-cvslog/2008-August/016352.html
   * http://lists.mplayerhq.hu/pipermail/ffmpeg-cvslog/2008-August/016136.html

------------------------------------------------------------------------

_______________________________________________
Full-Disclosure - We believe in it.
Charter: http://lists.grok.org.uk/full-disclosure-charter.html
Hosted and sponsored by Secunia - http://secunia.com/


Content of type "application/pgp-signature" skipped
