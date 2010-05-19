X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/05/19/3
Message-Id: <201005191528.18818.ludwig.nussel@suse.de>
Date: Wed, 19 May 2010 15:28:18 +0200
From: Ludwig Nussel <ludwig.nussel@...e.de>
To: oss-security@...ts.openwall.com
Subject: Re: [oCERT-2010-001] multiple http client unexpected download filename vulnerability
Content-Type: text/plain; charset=utf-8

Solar Designer wrote:
> [...]
> Although I used a somewhat tricky approach in the above exploit,
> eventually making wget overwrite a file, it is also possible to mount
> attacks that do not rely on overwriting any files.  Many programs
> support optional startup/config files of fixed/known/guessable names
> that a malicious or compromised server could provide.  In fact, I've
> just demonstrated this attack against wget itself, but it could also
> work against another program.
> 
> Is this more convincing now?

Serving dot files is a neat trick indeed, I've overlooked that
paragraph in the ocert advisory. Nevertheless I'm not convinced it's
worth changing wget's default behavior in the proposed way. So I can
understand upstream here.

cu
Ludwig

-- 
 (o_   Ludwig Nussel
 //\   
 V_/_  http://www.suse.de/
SUSE LINUX Products GmbH, GF: Markus Rex, HRB 16746 (AG Nuernberg)
