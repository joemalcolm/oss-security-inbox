X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/21/13
Message-ID: <20170621151552.ncx7w746qpg2wpi5@symphytum.spacehopper.org>
Date: Wed, 21 Jun 2017 16:15:52 +0100
From: Stuart Henderson <stu@...cehopper.org>
To: oss-security@...ts.openwall.com
Subject: Re: Qualys Security Advisory - The Stack Clash
Content-Type: text/plain; charset=utf-8

On 2017/06/21 16:36, Solar Designer wrote:
>                                                 Granted, they can now
> prepare their updates within hours or days due to the work done by SUSE,
> Red Hat, and others on the distros list, hopefully in time before
> attacks using the Qualys findings start or become widespread, but
> nevertheless they are at a disadvantage.

People doing this might want to note that Icinga ran into problems
with the fix in RHEL/Centos kernels when using setrlimit to restrict
the stack size below the default.

The Red Hat ticket is currently locked but there's some information at
https://bugs.centos.org/view.php?id=13453.

