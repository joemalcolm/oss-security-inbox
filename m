X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/05/2
Message-ID: <apvDY4zzw-eAgE_7@eldamar.lan>
Date: Sat, 5 Sep 2026 09:23:15 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: Vulnerability fixes in util-linux-2.42.3
Content-Type: text/plain; charset=utf-8

Hi,

On Fri, Sep 04, 2026 at 06:38:13PM +0100, Sam James wrote:
> +util-linux 2.42.3 Release Notes
> +===============================
> +
> +Security fixes:
[...]
> + CVE-2026-78408 - nsenter(1), unshare(1) file descriptor leak.
> +   File descriptors in nsenter and unshare were not created with
> +   O_CLOEXEC, potentially leaking them across exec.  Added O_CLOEXEC
> +   as defense in depth.

Note this needs a followup fix in the stable branches:
https://github.com/util-linux/util-linux/commit/286dd3ff41526b582ef48830de239dffbaa61f90

Regards,
Salvatore
