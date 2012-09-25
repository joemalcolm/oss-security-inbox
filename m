X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/09/25/3
Message-ID: <CANTw=MM0DZ3+-peswQzkt1_nUeys_wR6uKe+4zewDafFCPJnvA@mail.gmail.com>
Date: Mon, 24 Sep 2012 20:32:38 -0400
From: Michael Gilbert <michael.s.gilbert@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Re: Re: Re: Re: CVE request(?): gpg: improper file permssions set when en/de-crypting files
Content-Type: text/plain; charset=utf-8

On Mon, Sep 24, 2012 at 8:24 PM, Michael Gilbert
<michael.s.gilbert@...il.com> wrote:
> On Mon, Sep 24, 2012 at 5:46 PM, Tavis Ormandy wrote:
>>> > I think you've misunderstood the problem, and it's trivial to solve.
>>>
>>> No, I'm thinking about the broader implication.  If you're arguing that
>>> gpg should be modified to better handle permissions, then all applications
>>> potentially handling sensitive information should as well: file editors,
>>> and what not.  Otherwise, what makes gpg such a special case?
>>>
>>
>> I think you've confused my post with someone elses.
>
> See Steve Christy's snowball post.  Again, I'm considering the
> totality of the system.  Setting 644 as a default for gpg is I suppose

Correction, not 644, but using the input file's permissions as the
basis for the output file's permissions (obviously before applying
umask).

Best wishes,
Mike
