Received: (qmail 18357 invoked by uid 550); 18 Apr 2023 20:19:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9782 invoked from network); 18 Apr 2023 20:12:42 -0000
Date: Tue, 18 Apr 2023 22:12:29 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20230418201229.bx-3k%steffen@sdaoden.eu>
In-Reply-To: <043b8fbe6e014f17@millert.dev>
References: <w7boj4fg4x2o2bjz7a7zkjk4bgxqvqyuxycdqqw2dl3bhanh6a@h4jtbccffxgv>
 <20230416205727.0XQJ2%steffen@sdaoden.eu>
 <20230418005741.GA25557@openwall.com>
 <np5pdxoq5ymnbm53vmsjsuxkvh72buihwbqpsaruzm4mcmz3tq@zyz7o5ey2xzt>
 <043b82cc304acacf@millert.dev>
 <wbhfpn7kbwg64jordjxtpqfmmowes5rncupgzfbnqdz3uljioq@hgz2w4thzmya>
 <043b8fbe6e014f17@millert.dev>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-450-g9589f04a75
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] CVE-2023-2002: Linux Bluetooth:
 Unauthorized management command execution

Todd C. Miller wrote in
 <043b8fbe6e014f17@millert.dev>:
 |On Wed, 19 Apr 2023 02:59:26 +0800, Ruihan Li wrote:
 |
 |> Yeah, I see that you are removing ioctl calls on standard file
 |> descriptors. So actually, just to confirm, it is feasible to avoid
 |> all ioctl calls to standard file descriptors with root privileges
 |> (under all command line arguments), by using /dev/tty, assuming
 |> something like the window size... Right?
 |
 |For the most part, yes.  There are still some calls to isatty(3)

Frozen asset that i am,.., but i want to add this.
The POSIX standard says (i think quoting C99)

  [.]the standard input and standard output streams are fully
  buffered if and only if stream can be determined not to refer to
  an interactive device.[.]

Unless there is a new way of checking and/or unless creating
interactive devices is restrained to /dev/tty (pty etc) it seems
some calls done by C libraries cannot be avoided, only be delayed
a bit further down the road than what musl does.

  $ cat t.c
  #include <stdio.h>
  int main(void) { putc('\n',stdout);return 0; }
  $ gcc -o zt t.c

GNU libc:

  $ strace ./zt
  newfstatat(1, "", {st_mode=S_IFCHR|0620, st_rdev=makedev(0x88, 0x3), ...}, AT_EMPTY_PATH) = 0

  $ strace ./zt >/dev/null
  newfstatat(1, "", {st_mode=S_IFCHR|0666, st_rdev=makedev(0x1, 0x3), ...}, AT_EMPTY_PATH) = 0
  ioctl(1, TCGETS, 0x7ffe2151dc30)        = -1 ENOTTY (Inappropriate ioctl for device)

  $ mkfifo c; cat < c & strace ./zt > c
  newfstatat(1, "", {st_mode=S_IFIFO|0640, st_size=0, ...}, AT_EMPTY_PATH) = 0

musl always simply says

  ioctl(1, TIOCGWINSZ, {ws_row=55, ws_col=191, ws_xpixel=1910, ws_ypixel=1045}) = 0
or
  ... = -1 ENOTTY (Not a tty)

 |using the standard file descriptors when setting up the event loop
 |to run the program but that is after the user has been verified.
 |I will add checks that the fd is a character special file before
 |calling isatty(3).  In most cases the code wants the contents of
 |struct stat anyway, so the S_ISCHR check is basically free.
 |
 |> If this is the case, I think it should not be difficult for other
 |> setuid programs to do similar things.  I am just thinking for a
 |> while, and cannot find a case where ioctl calls are unavoidable.
 |
 |If there are setuid programs that call ttyname(3) that will also
 |call tcgetattr(3).  Also, the glibc getpass(3) function will use
 |tcgetattr(3) and tcsetattr(3) (to disable echo) on the standard
 |input if /dev/tty is not available.  For getpass(3) this could be
 |avoided by only trying to disable echo when using /dev/tty.  That
 |would change the behavior of things like:
 |
 |    su < /some/other/tty 

..even though it mostly reiterates what is said.

 |when /dev/tty is unavailable but I don't know what use case that
 |would actually support.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
