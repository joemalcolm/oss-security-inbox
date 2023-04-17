Received: (qmail 9579 invoked by uid 550); 17 Apr 2023 23:38:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28432 invoked from network); 17 Apr 2023 22:53:44 -0000
Date: Tue, 18 Apr 2023 00:53:30 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20230417225330.ckXBw%steffen@sdaoden.eu>
In-Reply-To: <20230417064047.dhrrkuzjmtx4yhgj@jwilk.net>
References: <w7boj4fg4x2o2bjz7a7zkjk4bgxqvqyuxycdqqw2dl3bhanh6a@h4jtbccffxgv>
 <20230416205727.0XQJ2%steffen@sdaoden.eu>
 <20230417064047.dhrrkuzjmtx4yhgj@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-450-g9589f04a75
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] CVE-2023-2002: Linux Bluetooth:
 Unauthorized management command execution

Jakub Wilk wrote in
 <20230417064047.dhrrkuzjmtx4yhgj@jwilk.net>:
 |* Steffen Nurpmeso <steffen@sdaoden.eu>, 2023-04-16 22:57:
 |>have you verified that they do not use isatty(3)
 |
 |I'm pretty sure they do. But isatty(3) is implemented using the TCGETS 
 |ioctl, so that doesn't help.

Well everbody knows how this is implemented, most of the time.
There never was any systemcall that comes otherwise near of doing
that (except maybe fcntl).  Plan9, maybe.

By the way out of interest and because of ringing in my ear for
one target i implemented sandboxing for an iteration of a very
simple non-front-line server to be released tomorrow,
pledge/unveil, seccomp(2) (glibc and musl), and capsicum(4) on
FreeBSD.  seccomp(2) i find so expensive (i'd wish there would be
a first-level bitset or so), and very hard to do (argument
checking rather constant-only, of course: one could dynamically
build the filter, even use a library that aids in doing so, but
still), that i though the enormous capabilities of Linux regarding
"ip netns", "unshare" and "capsh", in conjunction with overlayfs,
ie containment, and keeping the server lean, seems more appealing.
All the libraries one has to use today, mostly evolving targets,
and blockboxes from my application's point of view.  Yes,
i wondered how to create a bigger one i have on my TODO list,
which requires DNS lookups (and that potentially leads to the
black hole of TLS, HTTP, HTTP/2, QUIC).  How to write this
securely with containment as above?
The musl client of the simple even needs a SYS_ioctl clearance for
normal writing to stdout (__stdout_write()).

Ciao!

(P.S.: it is great that QUIC will come "for free" with OpenSSL!)

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
