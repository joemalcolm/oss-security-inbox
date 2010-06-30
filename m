X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/06/30/21
Message-ID: <AANLkTin-M5vuVgYz6_JXDjJUA5gqXn5VXeci8WzfD3il@mail.gmail.com>
Date: Wed, 30 Jun 2010 21:33:45 +0200
From: Pierre Joye <pierre.php@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request -- PHP strrchr() Interruption  Information Leak Vulnerability
Content-Type: text/plain; charset=utf-8

hi,

On Wed, Jun 30, 2010 at 9:27 PM, Josh Bressers <bressers@...hat.com> wrote:
>
> ----- "Péter Veres" <moltesalt@...il.com> wrote:
>
>> Hi Steve,
>>
>> PHP’s strrchr() function can be interrupted and used for information
>> leakage due to call time pass by reference.
>>
>> Could you allocate a CVE id for this issue?
>>
>
> Do you have some sort of reference for this? I'm not finding anything in the
> usual places.
>
> I'll assign an ID once I have more information.

Correct me if I'm wrong but it looks to me that it is related to the
MOPS 18-40, which are actually the same issue.

Cheers,
-- 
Pierre

@pierrejoye | http://blog.thepimp.net | http://www.libgd.org
