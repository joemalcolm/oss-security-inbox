X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/05/23
Message-ID: <54823520.7040609@fifthhorseman.net>
Date: Fri, 05 Dec 2014 17:43:44 -0500
From: Daniel Kahn Gillmor <dkg@...thhorseman.net>
To: oss-security@...ts.openwall.com
Subject: Re: Offset2lib: bypassing full ASLR on 64bit Linux
Content-Type: text/plain; charset=utf-8

On 12/05/2014 05:15 PM, Reed Loden wrote:
> On Fri, Dec 5, 2014 at 7:09 AM, Daniel Micay <danielmicay@...il.com> wrote:
> 
>>
>> Mozilla has no excuse for not enabling PIE for Firefox, because 99% of
>> the code is in dynamic libraries already. It has no performance impact.
>>
> 
> For the record, Mozilla tried it several months ago and had to back it out.
> 
> "Nautilus (the file manager) can't open PIE executables, which makes
> distributing PIE executable essentially impossible."
> 
> https://bugzilla.mozilla.org/show_bug.cgi?id=857628#c6 (which caused
> https://bugzilla.mozilla.org/show_bug.cgi?id=1076892)


i couldn't find a reference to this in the nautilus bugtracker, so i
just posted:

 https://bugzilla.gnome.org/show_bug.cgi?id=741183

	--dkg


Download attachment "signature.asc" of type "application/pgp-signature" (950 bytes)
