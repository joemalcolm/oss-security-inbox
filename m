X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/08/20/11
Message-ID: <1588732992.1101451282325542424.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Fri, 20 Aug 2010 13:32:22 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request - kernel: jfs: don't allow os2 xattr namespace overlap with others
Content-Type: text/plain; charset=utf-8

Please use CVE-2010-2946

Thanks.

-- 
    JB


----- "Eugene Teo" <eugeneteo@...nel.sg> wrote:

> Upstream commit: aca0fa34bdaba39bfddddba8ca70dba4782e8fe6
> 
> Description from the commit: It's currently possible to bypass xattr 
> namespace access rules by prefixing valid xattr names with "os2.",
> since 
> the os2 namespace stores extended attributes in a legacy format with
> no 
> prefix.
> 
> This patch adds checking to deny access to any valid namespace prefix
> 
> following "os2.".
> 
> Thanks, Eugene
> -- 
> main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i);
> }
