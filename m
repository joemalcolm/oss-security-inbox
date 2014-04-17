X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/17/2
Message-ID: <534FB184.4090103@redhat.com>
Date: Thu, 17 Apr 2014 12:48:36 +0200
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: openssl: missing critical flag for extended key usage not always detected in time-stamp verification
Content-Type: text/plain; charset=utf-8

On 04/16/2014 10:10 PM, Raphael Geissert wrote:
> Hi,
>
> Quoting from [0]:
>> "check_purpose_timestamp_sign()" in source file v3_purp.c [...] fails to
>> detect a missing critical flag if the extensions of the TSA certificate
>> are arranged in a specific order.
>
> Could a CVE id be assigned for this?

As described, this isn't a security issue, but the actual commit

<http://git.openssl.org/gitweb/?p=openssl.git;a=commitdiff;h=300b9f0b704048f60776881f1d378c74d9c32fbd>

might constitute a security fix if this applies not just to extensions 
on TSA certificates.

-- 
Florian Weimer / Red Hat Product Security Team
