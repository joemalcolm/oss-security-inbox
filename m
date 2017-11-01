X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/01/2
Message-ID: <20171101085306.GF14183@redhat.com>
Date: Wed, 1 Nov 2017 09:53:06 +0100
From: Jan Pokorný <jpokorny@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: Fw: Security risk of vim swap files
Content-Type: text/plain; charset=utf-8

On 31/10/17 12:48 -0600, Kurt Seifried wrote:
> For example cat (and cpo and tar) work as expected:
> 
> [...]
> 
> [kseifrie@...alhost vi]$ cat foo > bar

Just noting that cat has nothing to do with how the file born by the
means of output redirection gets created.  It's the responsibility
of the executing shell that supports such a concept in the first place.

-- 
Jan (Poki)

Content of type "application/pgp-signature" skipped
