X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/09/14
Message-ID: <692064672.379039.1297288790104.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Wed, 9 Feb 2011 16:59:50 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request for feh
Content-Type: text/plain; charset=utf-8

Please use CVE-2011-0702 for this.

Thanks.

-- 
    JB

----- Original Message -----
> Hi,
> 
> I guess there is no CVE request for this one yet:
> 
> On https://bugs.launchpad.net/ubuntu/+source/feh/+bug/607328 seegooon
> wrote:
> 
> --------------------------------------------------
> Hi, I've just discovered that feh is vulnerable to rewriting any user
> file:
> 
> tmpname_timestamper =
> estrjoin("", "/tmp/feh_", cppid, "_", basename, NULL);
> ...
> execlp("wget", "wget", "-N", "-O", tmpname_timestamper, newurl,
> quiet, (char*) NULL);
> 
> If attacker knows PID of feh and knows the URL, it can create the link
> to any user file. wget would overwrite it.
> 
> --------------------------------------------------
> 
> Thanks in advance,
> 
> Craig
