X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/22/6
Message-ID: <5470BE2B.5090704@gathman.org>
Date: Sat, 22 Nov 2014 11:47:39 -0500
From: Stuart Gathman <stuart@...hman.org>
To: oss-security@...ts.openwall.com
Subject: Re: Off-by-one question
Content-Type: text/plain; charset=utf-8

On 11/22/2014 01:28 AM, Joshua Roers wrote:
>
>> char buf[4];
>> strncpy(buf, "Four", sizeof(buf));
>> buf[sizeof(buf)-1] = '\0';
>> printf("%s\n", buf);
> Since
>> strncpy(buf, "Four", sizeof(buf));
> is not
>> strncpy(buf, "Four", sizeof(buf)-1);
> will strncpy write beyond the memory of 'buf', and set it to NUL?
>
>
> >From my understanding from
> http://cwe.mitre.org/data/definitions/193.html, it would.
> ".. creating a buffer overflow that may cause a memory address to be
> overwritten .."
>
>
> But actually RTFM, strncpy will not write, even the NUL, past the size.
>
> So it looks like I'm either reading mitre wrong, or it may be outdated.
>
>
> Any opinions on this?
The snippet will print Fou.  The contract for strncpy is:

        The strncpy() function is similar, except that at most n bytes  
of  src
        are  copied.  Warning: If there is no null byte among the first 
n bytes
        of src, the string placed in dest will not be null terminated.

So you are correct.  Unless strncpy is broken.
