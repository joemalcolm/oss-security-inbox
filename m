X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/11/19/6
Message-Id: <861A949F-D5C8-4AE0-829D-E7C2B4F74137@dwheeler.com>
Date: Thu, 19 Nov 2020 11:54:07 -0500
From: "David A. Wheeler" <dwheeler@...eeler.com>
To: oss-security@...ts.openwall.com
Subject: Re: libass ass_outline.c signed integer overflow
Content-Type: text/plain; charset=utf-8



> On Nov 19, 2020, at 12:34 AM, Ian Zimmerman <itz@...y.loosely.org> wrote:
> 
> On 2020-09-29 08:19, Fstark wrote:
> 
>> In `ass_outline_construct`'s call to `outline_stroke` a signed integer
>> overflow happens *(undefined behaviour)*. On my machine signed overflow
>> happens to wrap around to a negative value, thus failing the assert.
>> https://github.com/libass/libass/issues/431
>> 
>> https://github.com/libass/libass/pull/432
> 
> I have followed the links above, and this seems to be an example of a
> situation where the CVE process has failed. It is still not fixed in
> Debian, possibly for that reason. I'll report a Debian bug today.

I read through the issue discussion. As best as I can tell, no one filed for a CVE, so there was no CVE.
Did I misunderstand something?

If my understanding is correct, that is *NOT* a failure of the CVE process.

--- David A. Wheeler

