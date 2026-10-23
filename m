X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/3
Message-ID: <CAFuRGoDLoPC6ie_3NntFp2K_GWVXSQsO7jA+Tnf98HYdeo2htg@mail.gmail.com>
Date: Fri, 23 Oct 2026 10:27:57 +0300
From: Oleksii Molchanov <oleksii.molchanov.pe@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-109618 / CVE-2026-109619: unofficial backport of the PHP OOM bailout / stale state fix to PHP 5.4.16 (EL7) and 5.3.3 (EL6)
Content-Type: text/plain; charset=utf-8

Hi,

A correction to the "Risk on PHP 5" part of my message, after Red Hat
updated its data:

> As of 22 Oct, Red Hat's VEX lists the RHEL 6 and 7 php packages as
> "under investigation" for CVE-2026-109618 and as not affected by
> CVE-2026-109619 ("vulnerable code not present").

Red Hat's bulletin RHSB-2026-013 (updated on 22 Oct, 15:47 UTC) and,
since 23 Oct, its VEX data say the opposite for CVE-2026-109619 on
RHEL 7 (php-5.4.16): "Only affected by CVE-2026-109619 — In a default
configuration, the version of PHP in use is vulnerable" and "The
vulnerable code required to exploit CVE-2026-109618 is not present".
No fix for RHEL 7 is listed yet. For RHEL 6, the VEX data now lists
both CVEs as affected, marked "Out of support scope".

This matches the reports. The CVE-2026-109618 hash table code was first
released in PHP 7.3.0 (php-src 6de54703f; "PHP 7.2 and earlier do not
contain this exact raw-key ordering", Red Hat Bugzilla 2553995,
comment 0). The known CVE-2026-109619 path, session upload progress,
exists since PHP 5.4.0 and is enabled by default. PHP 5.3 has neither.

So on PHP 5.4 the backport matters mainly for CVE-2026-109619: it
disables session upload progress in the code. On PHP 5.3 it is defense
in depth. Where a package update is not possible,
session.upload_progress.enabled = 0 in php.ini (not with ini_set())
closes that path.

https://access.redhat.com/security/vulnerabilities/RHSB-2026-013
https://bugzilla.redhat.com/show_bug.cgi?id=2553995

-- 
Oleksii Molchanov
