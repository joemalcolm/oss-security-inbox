X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/10/2
Message-ID: <803908496.24193.1299763793117.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 10 Mar 2011 08:29:53 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>, Stefan Fritsch <sf@...itsch.de>, Florian Zumbiehl <florz@...rz.de>, Petr Uzel <petr.uzel@...e.cz>, Thomas Biege <thomas@...e.de>, Jan Kaluža <jkaluza@...hat.com>
Subject: Re: CVE Request -- logrotate -- nine issues
Content-Type: text/plain; charset=utf-8

----- Original Message -----
> Josh Bressers wrote:
> >
> > As best as I can tell, logrotate only needs a CVE id for this:
> >
> >     8) Issue #8: logrotate: TOCTOU race condition by creation of new
> >     files (between opening the file and moment, final permissions have
> >     been applied) [information disclosure]
> >
> 

Let' use CVE-2011-1098 for this.

Thanks.

-- 
    JB
