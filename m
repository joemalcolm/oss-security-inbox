X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/03/01/2
Message-ID: <87ftesqtg8.fsf@oldenburg2.str.redhat.com>
Date: Sun, 01 Mar 2020 11:07:35 +0100
From: Florian Weimer <fweimer@...hat.com>
To: "Alexander E. Patrakov" <patrakov@...il.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)
Content-Type: text/plain; charset=utf-8

* Alexander E. Patrakov:

> Just in case, I would like to complain here that my Fedora 31 systems
> have not received an update.
>
> There is indeed something in testing, but it is (mistakenly?) marked
> as a bugfix release and not as a security update:
>
> https://bodhi.fedoraproject.org/updates/?packages=opensmtpd

I have edited the update and flagged it as security.

However, without feedback from community testing (karma), this update
cannot be pushed at this time.

The package also failed to build on Fedora 32 and 33/rawhide due to C
conformance issues, so there are no updates available there.

Thanks,
Florian

