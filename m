X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/05/24/8
Message-ID: <4DDB99A7.9090108@msgid.tls.msk.ru>
Date: Tue, 24 May 2011 15:42:31 +0400
From: Michael Tokarev <mjt@....msk.ru>
To: oss-security@...ts.openwall.com
CC: Josh Bressers <bressers@...hat.com>
Subject: Re: CVE Request: exim STARTTLS fix
Content-Type: text/plain; charset=utf-8

24.05.2011 15:24, Josh Bressers wrote:
> ----- Original Message -----
>> Hi,
>>
>> while reviewing EXIM git for the last security issues, I also found the
>> STARTTLS fix:
>>
>> http://git.exim.org/exim.git/commitdiff/da80c2a8ed49427334af613c00df65ae301cacdd
>>
>> Is fixed with exim 4.76 apparently.
>>
> 
> That commit suggests it's not an issue, but rather some extra paranoid
> buffer wiping. Is there a reason to believe this is a problem?

Isn't it CVE-2011-0411 attack ?

/mjt
