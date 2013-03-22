X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/03/22/3
Message-ID: <CAJzxam+htS2d0p_8qdA2h7qoD+a8A4Cb=kbdVs7+ReOLmk6odg@mail.gmail.com>
Date: Fri, 22 Mar 2013 19:20:36 +1100
From: David Black <disclosure@....org>
To: kseifried@...hat.com
Cc: oss-security@...ts.openwall.com
Subject: Re: CVE Request: python-pip insecure temporary directory handling
Content-Type: text/plain; charset=utf-8

On Fri, Mar 22, 2013 at 5:28 PM, Kurt Seifried <kseifried@...hat.com> wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> On 03/20/2013 08:13 AM, David Black wrote:
>> Prior to version 1.3 pip used '/tmp/pip-build' as a temporary
>> directory and as per the report in
>> https://github.com/pypa/pip/issues/725 would follow a symbolic
>> link placed at '/tmp/pip-build' when writing temporary files.
>>
>
> Is this the one actually fixed in
> https://github.com/pypa/pip/pull/780/files
>
> ? thanks.

Yes it is.
