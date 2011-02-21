X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/21/5
Message-ID: <484004077.143287.1298317970746.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 21 Feb 2011 14:52:50 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request: ruby: FileUtils is vulnerable to symlink race attacks + Exception methods can bypass $SAFE
Content-Type: text/plain; charset=utf-8



----- Original Message -----
> AFAIK this two need a CVE-ID:
> 1)
> http://www.ruby-lang.org/en/news/2011/02/18/fileutils-is-vulnerable-to-symlink-race-attacks/

CVE-2011-1004 Ruby FileUtils.remove_entry_secure symlink attack


> 2)
> http://www.ruby-lang.org/en/news/2011/02/18/exception-methods-can-bypass-safe/
> 

CVE-2011-1005 Ruby Exception methods can bypass $SAFE

Thanks.

-- 
    JB
