X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/08/5
Message-ID: <1049149449.563527.1307563174968.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Wed, 8 Jun 2011 15:59:34 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: nospam@...il.it, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE Request -- WebSVN -- execCommand() remote commands injection vulnerability
Content-Type: text/plain; charset=utf-8



----- Original Message -----
> Hello, Josh, Steve, vendors,
> 
> it was found that WebSVN is prone to remote commands injection
> vulnerability due improper escaping / quoting of strings, to be
> sent to the command line. Microsoft Windows specific issue and
> different vulnerability than CVE-2008-5918, CVE-2008-5919,
> CVE-2008-5920, and CVE-2009-0240.
> 
> References:
> [1] http://seclists.org/bugtraq/2011/Jun/34
> [2] http://retrogod.altervista.org/rgod_websvn_adv.html
> [3] http://retrogod.altervista.org/rgod_websvn_poc.html
> 
> Could you allocate a CVE id for this?
> 

Please use CVE-2011-2195.

Thanks.

-- 
    JB
