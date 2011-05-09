X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/05/09/7
Message-ID: <1732124180.120317.1304967123464.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 9 May 2011 14:52:03 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley@...re.org
Subject: Re: CVE request: tigervnc
Content-Type: text/plain; charset=utf-8

----- Original Message -----
> The vncviewer in tigervnc had X.509 certificate support added in svn
> r4200 (currently beta, slated for the 1.1.0 release). It would prompt for
> and send authentication credentials before properly validating the X.509
> certificate, which makes it susceptible to a man-in-the-middle attack.
> 
> References:
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=702470
> http://www.mail-archive.com/tigervnc-devel@lists.sourceforge.net/msg01342.html
> http://www.mail-archive.com/tigervnc-devel@lists.sourceforge.net/msg01347.html
> 

Please use CVE-2011-1775.

Thanks.

-- 
    JB
