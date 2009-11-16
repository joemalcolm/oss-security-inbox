X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/11/16/2
Message-ID: <20091116225116.2b6a9a03@redhat.com>
Date: Mon, 16 Nov 2009 22:51:16 +0100
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Cc: jt@....org
Subject: Re: CVE request: oping allows the disclosure of  arbitrary file contents
Content-Type: text/plain; charset=utf-8

On Thu, 15 Oct 2009 15:15:57 +0200 Julien Tinnes <jt@....org> wrote:

> in case anyone cares, oping also attempts to drop privileges with
> setuid(getuid()); without checking setuid()'s return value.
> 
> It's an obvious vulnerability, because a local attacker can make
> setuid() fail by setting a resource limit of 0 for RLIMIT_NPROC with
> setrlimit().

Does the RLIMIT_NPROC trick work against oping, or any setuid app that
calls setuid(getuid())?

-- 
Tomas Hoger / Red Hat Security Response Team
