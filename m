X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/13
Message-ID: <20260806200421.GA597@openwall.com>
Date: Thu, 6 Aug 2026 22:04:21 +0200
From: Solar Designer <solar@...nwall.com>
To: Fourie Zhang <littleddfu@...il.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-64564: Linux SCTP ASCONF transport UAF leading to local privilege escalation and container escape
Content-Type: text/plain; charset=utf-8

Hi,

Thank you for bringing this to oss-security.

On Thu, Aug 06, 2026 at 07:33:31PM +0800, Fourie Zhang wrote:
> - Rocky Linux 9 / RHEL 9-family target, vendor 5.14 kernel (SCTP loaded)

On these distros, the SCTP module is not part of a typical install, but
is in the kernel-modules-extra subpackage.

Further, that subpackage includes module blacklist files with:

blacklist sctp
blacklist sctp_diag

which prevents unprivileged autoload of these modules on demand.

So the sysadmin would have to explicitly install kernel-modules-extra
and load the SCTP module to expose this vulnerability, meaning that in
practice it would only be exposed on systems that actually use SCTP.

Of course, exposure likely varies by distro.  The above is just about
the RHEL family distros with their recent kernels.

Alexander
