X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/23/1
Message-ID: <54717EBF.2020100@internot.info>
Date: Sun, 23 Nov 2014 17:29:19 +1100
From: Joshua Rogers <oss@...ernot.info>
To: oss-security@...ts.openwall.com
Subject: Re: Off-by-one question
Content-Type: text/plain; charset=utf-8

On 23/11/14 03:47, Stuart Gathman wrote:
>>
> The snippet will print Fou.  The contract for strncpy is:
>
>        The strncpy() function is similar, except that at most n bytes 
> of  src
>        are  copied.  Warning: If there is no null byte among the first
> n bytes
>        of src, the string placed in dest will not be null terminated.
>
> So you are correct.  Unless strncpy is broken.
That's what I thought.

I wonder why MITRE says otherwise.

Thanks Stuart and Simon.
-- 
-- Joshua Rogers <https://internot.info/>
