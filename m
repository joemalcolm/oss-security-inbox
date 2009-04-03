X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/04/03/1
Message-ID: <Pine.LNX.4.64.0904030943430.11200@forced.attrition.org>
Date: Fri, 3 Apr 2009 09:46:09 +0000 (UTC)
From: security curmudgeon <jericho@...rition.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request -- Linux kernel irda driver buffer
Content-Type: text/plain; charset=utf-8


Previous discussion: 
http://marc.info/?l=oss-security&w=2&r=1&s=irda+driver&q=b

Mark Cox ruled "doesn't seem to have any security implications". Since 
then, 3rd party analysis suggests it still may in a different manner:

http://xorl.wordpress.com/2009/03/11/linux-kernel-irda-sigmatel-stir421x-off-by-one/

[..]

This could lead to information leak if request_firmware() gives some kind 
of output but I havent checked this.

[..]


Comments?
