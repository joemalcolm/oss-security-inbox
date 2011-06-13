X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/13/11
Message-ID: <1512488830.650854.1307992464681.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 13 Jun 2011 15:14:24 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request: buffer overflow in tftp-hpa
Content-Type: text/plain; charset=utf-8



----- Original Message -----
> The tftp-hpa daemon contained a buffer overflow vulnerability in the
> function for setting the utimeout option. As the daemon accepts this
> option from clients, the buffer overflow can be remotely exploited.
> 
> For a patch, see
> 
> > git clone http://www.kernel.org/pub/scm/network/tftp/tftp-hpa.git/
> > git diff 2864 f303
> 

Here is the gitweb URL for that patch:
http://git.kernel.org/?p=network/tftp/tftp-hpa.git;a=commitdiff;h=f3035c45bc50bb5cac87ca01e7ef6a12485184f8

Please use CVE-2011-2199.

Thanks.

-- 
    JB
