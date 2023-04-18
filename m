X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/18/17
Message-ID: <wbhfpn7kbwg64jordjxtpqfmmowes5rncupgzfbnqdz3uljioq@hgz2w4thzmya>
Date: Wed, 19 Apr 2023 02:59:26 +0800
From: Ruihan Li <lrh2000@....edu.cn>
To: "Todd C. Miller" <Todd.Miller@...o.ws>
Cc: Solar Designer <solar@...nwall.com>, oss-security@...ts.openwall.com,  Ruihan Li <lrh2000@....edu.cn>
Subject: Re: CVE-2023-2002: Linux Bluetooth: Unauthorized management command execution
Content-Type: text/plain; charset=utf-8

Hi Todd,

On Tue, Apr 18, 2023 at 08:27:16AM -0600, Todd C. Miller wrote:
> That is correct.  There are further changes to use TIOCGWINSZ on
> /dev/tty instead of stderr.  Using an open fd of /dev/tty makes the
> isatty() call superfluous but it doesn't hurt to have it.

Yeah, I see that you are removing ioctl calls on standard file descriptors. So
actually, just to confirm, it is feasible to avoid all ioctl calls to standard
file descriptors with root privileges (under all command line arguments), by
using /dev/tty, assuming something like the window size... Right?

If this is the case, I think it should not be difficult for other setuid
programs to do similar things. I am just thinking for a while, and cannot find
a case where ioctl calls are unavoidable.

Thanks,
Ruihan Li

