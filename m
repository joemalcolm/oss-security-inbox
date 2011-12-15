X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/12/15/3
Message-ID: <20111215180947.GA32460@devzero.fr>
Date: Thu, 15 Dec 2011 19:09:47 +0100
From: vladz <vladz@...zero.fr>
To: oss-security@...ts.openwall.com
Subject: CVE request: bypass default security level of the X wrapper (xserver-xorg <= 1:7.5+8)
Content-Type: text/plain; charset=utf-8

Hi,

On Debian systems, the X wrapper (/usr/bin/X) is a setuid-root binary that
checks for some security requirements before launching Xorg with root
privileges.  

By default, the wrapper's configuration file only allows users whose
controlling TTY (console) to start the X server, but it is possible to
bypass this restriction by connecting another file (with similar tty
properties) to standard input before launching the X wrapper.

  http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=652249

Could you allocate CVE id for this issue?

Thank you,
vladz.
