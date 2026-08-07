X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/07/1
Message-ID: <CAHtpoa05LzWOHG+BGNQ316XYX_Jw8T3Ki8dHguHFdwLBk1B9og@mail.gmail.com>
Date: Fri, 7 Aug 2026 09:52:57 +0800
From: fourie <littleddfu@...il.com>
To: Solar Designer <solar@...nwall.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-64564: Linux SCTP ASCONF transport UAF leading to local privilege escalation and container escape
Content-Type: text/plain; charset=utf-8

Yes. On systems where SCTP is built as a loadable module rather than
built into the kernel,
unloading the sctp module and preventing it from being loaded should
mitigate exploitation
of this issue.

mitigation, for example:

sudo sh -c "printf 'install sctp /bin/false\n' >
/etc/modprobe.d/block-CVE-2026-64564.conf"
sudo rmmod sctp


Fourie


Solar Designer <solar@...nwall.com> 于2026年8月7日周五 04:04写道：
>
> Hi,
>
> Thank you for bringing this to oss-security.
>
> On Thu, Aug 06, 2026 at 07:33:31PM +0800, Fourie Zhang wrote:
> > - Rocky Linux 9 / RHEL 9-family target, vendor 5.14 kernel (SCTP loaded)
>
> On these distros, the SCTP module is not part of a typical install, but
> is in the kernel-modules-extra subpackage.
>
> Further, that subpackage includes module blacklist files with:
>
> blacklist sctp
> blacklist sctp_diag
>
> which prevents unprivileged autoload of these modules on demand.
>
> So the sysadmin would have to explicitly install kernel-modules-extra
> and load the SCTP module to expose this vulnerability, meaning that in
> practice it would only be exposed on systems that actually use SCTP.
>
> Of course, exposure likely varies by distro.  The above is just about
> the RHEL family distros with their recent kernels.
>
> Alexander
