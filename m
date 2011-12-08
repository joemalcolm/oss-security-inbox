X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/12/08/2
Message-ID: <4EE0C595.5020000@kde.org>
Date: Thu, 08 Dec 2011 09:11:33 -0500
From: Jeff Mitchell <mitchell@....org>
To: oss-security@...ts.openwall.com
CC: Kurt Seifried <kseifried@...hat.com>
Subject: Re: Disputing CVE-2011-4122
Content-Type: text/plain; charset=utf-8

On 12/07/2011 11:26 AM, Kurt Seifried wrote:
>> One could assume that kcheckpass should do the validation. However, the
>> PAM documentation makes no mention of what a service name is supposed to
>> look like, and consequently it must be treated as opaque by the
>> application code. Therefore all validation must be expected to be done
>> by the library, and failure to do so must be seen as a bug in the
>> library exclusively.
> 
> Can you provide a link to the documentation?

http://pubs.opengroup.org/onlinepubs/8329799/pam_start.htm

Thanks,
Jeff


Download attachment "signature.asc" of type "application/pgp-signature" (260 bytes)
