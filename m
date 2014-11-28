X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/28/4
Message-ID: <54785B1B.9030408@internot.info>
Date: Fri, 28 Nov 2014 22:23:07 +1100
From: Joshua Rogers <oss@...ernot.info>
To: oss-security@...ts.openwall.com
Subject: Re: The Fuzzing Project
Content-Type: text/plain; charset=utf-8

On 24/11/14 07:49, Hanno Böck wrote:
> As already mentioned in various threads I hereby announce the Fuzzing
> Project:
> https://fuzzing-project.org/
>
> This is still a lot of work in progress. I welcome all feedback,
> contributions and especially links to your reports of the bugs you
> fuzzed.
If you'd like, add 'man', 'diff', 'memcached', and 'exif'.
I ran afl-fuzz on each of them for 24-hours, and encountered no crashes.

Thanks,
-- 
-- Joshua Rogers <https://internot.info/>
