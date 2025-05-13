Received: (qmail 31924 invoked by uid 550); 13 May 2025 16:29:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9627 invoked from network); 13 May 2025 16:21:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uni-hamburg.de;
	s=rrzs003; t=1747153267;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r3JJqfWzbiK5LYiz47sr7aa1J3SVxh1T18RVQ3RAVMc=;
	b=t81hdCjvn9jKL0v4RGjbrS4zPMarLyIzT/cytPhrNYjvD6Z4lSwTXj0xINrB8yjTXZPVcy
	dKcYeWmt8IQUWEdg+gIhLM35CKaxnSe7bHA5UEjrQ3JiYh8+Sz5xFvXyrbz5MnB1mSd/zm
	tllI96WBLeeQpHjNm7EWGZkEAQT+rc1elF/6738OnMY9ymy/MTcB8eniUABqXoCQmm96mf
	N4oeIKxgnP36GwjuFNQS/vTwL1pFKZ/R6LU8y7UmUavp71UBIBwoLTrSSbhFgV+luGs8RD
	rei5m1Rx2Gip0PWImC7M4DgZzM47FKVb0YO9DTbm0n72JJJjrGwQEkIXDAnleQ==
Date: Tue, 13 May 2025 18:21:06 +0200
From: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
To: Matthias Gerstner <mgerstner@suse.de>
CC: <oss-security@lists.openwall.com>
Message-ID: <20250513182106.414b569f@plasteblaster>
In-Reply-To: <aCISrQTbLQjaxBZS@kasco.suse.de>
References: <aCISrQTbLQjaxBZS@kasco.suse.de>
Organization: =?UTF-8?B?VW5pdmVyc2l0w6R0?= Hamburg
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: EX-S-MR02.uni-hamburg.de (134.100.84.81) To
 EX-S-MR06.uni-hamburg.de (134.100.84.89)
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen
 (mostly affecting release 5.0.0 and setuid-root installations)

Moin Matthias,

regarding this bit with screen-4.9.1:

Am Mon, 12 May 2025 17:24:26 +0200
schrieb Matthias Gerstner <mgerstner@suse.de>:

> 3.c) Screen by Default Creates World Writable PTYs (CVE-2025-46803)
> -------------------------------------------------------------------
>=20
> In Screen version 5.0.0 the default mode of pseudo terminals (PTYs)
> allocated by Screen was changed from 0620 to 0622, thereby allowing
> anyone to write to any Screen PTYs in the system. Security-wise this
> results in some of the issues that have been outlined in issue 3.b),
> without the information leak aspects, however.
>=20
> The history of the default PTY mode in Screen is rather complex. Let's
> have a look at the situation in version 4.9.1 (and a lot of older
> versions):
>=20
> - There is a 0622 default mode in the code in process.c line 207 [14].
>   This is only a fallback that should not become active unless the code
>   is compiled in unusual ways.
> - A default mode of 0620 is applied in configure.ac line 811 [15], which
>   results in a safe default when compiling Screen using autotools.
> - In acconfig.h line 81 [16] the following is stated:
>=20=20=20
>   > define PTYMODE if you do not like the default of 0622, which allows p=
ublic write to your pty.=20=20
>=20=20=20
>   Thus in this version there is an inconsistency between the default
>   mode on autoconf level and the default on source code level, but in
>   the end the (safe) autoconf default wins.

Are you sure the safe default wins? I also read configure.ac as such,
at a first glance =E2=80=A6 but running plain configure results in

$ grep PTYMODE config.h
 * define PTYMODE if you do not like the default of 0622, which allows=20
/* #undef PTYMODE */

on a Debian 12 machine with perhaps a specific setup because of
multiuser access =E2=80=94 exactly the situation where the world-writable p=
tys
are of most concern.  Configure messages:

configure: checking for ptyranges...
configure: checking default tty permissions/group...
checking for write... /usr/bin/write
checking for xterm... no
- ptys are world accessable

This system does not have xterm installed in /usr/. It is a headless
shell server. But also running the configure code on an Ubntu 22.04.5
box, with write and xterm shows this:

~$ sh -x  /dev/shm/ttygrp.sh "$(command -v write)" "$(command -v xterm)"
+ AWK=3Dawk
+ WRITEPATH=3D/usr/bin/write
+ XTERMPATH=3D/usr/bin/xterm
+ found=3D
+ test -n /usr/bin/write/usr/bin/xterm
+ findfollow=3D
+ lsfollow=3D
+ find /usr/bin/write /usr/bin/xterm -follow -print
+ found=3D/usr/bin/write
/usr/bin/xterm
+ test -n /usr/bin/write
/usr/bin/xterm
+ findfollow=3D-follow
+ lsfollow=3DL
+ test -n /usr/bin/xterm
+ ls -lL /usr/bin/xterm
+ sed -n -e 1p
+ awk {print $4}
+ ptygrpn=3Droot
+ test tty !=3D root
+ XTERMPATH=3D
+ test -n /usr/bin/write
+ find /usr/bin/write -follow -perm -2000 -print
+ found=3D
+ test -n=20
+ echo - ptys are world accessable
- ptys are world accessable

So the code sees

-rwxr-xr-x 1 root root 22920 Apr  9  2024 /usr/bin/write.ul
-rwxr-xr-x 1 root root 852552 M=C3=A4r 11  2022 /usr/bin/xterm

and deduces that ptys should be world-accessible (see typo, btw.). Why
does it enter that code path at all? This test program fails on the
Debian 12 multiuser server, and probably everywhere:

#include <sys/types.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int
main()
{
  struct stat sb;
  char *x,*ttyname();
  int om, m;
  FILE *fp;

  if (!(x =3D ttyname(0))) return 1;
  if (stat(x, &sb)) return 2;
  om =3D sb.st_mode;
  if (om & 002) return 0;
  m =3D system("mesg y");
  if (m =3D=3D -1 || m =3D=3D 127) return 3;
  if (stat(x, &sb)) return 4;
  m =3D sb.st_mode;
  if (chmod(x, om)) return 5;
  if (m & 002) return 0;
  if (sb.st_gid =3D=3D getgid()) return 6;
  if (!(fp=3Dfopen("conftest_grp", "w")))
    return 7;
  fprintf(fp, "%d\n", sb.st_gid);
  fclose(fp);
  return 0;
}

Why? Because stdin is no terminal for configure tests.* The much
simplified logic in the screen-5.0.0 configure (which is also really
small and fast, to name an improvement) does not suffer from these
quirks and just uses sane defaults.

So screens opened with screen-4.9.1 are world-writable basically
everywhere without setgid xterm or write binaries, which is rather
counter-intuitive for admins who might even remove these bits to
enhance security.

So a better workaround is to supply _both_ mode and groups, to avoid
the wonky group detection logic:

$ ./configure --with-pty-mode=3D0620 --with-pty-group=3Dtty
[=E2=80=A6]
$ grep -e PTYMODE -e PTYGROUP config.h
 * define PTYMODE if you do not like the default of 0622, which allows=20
 * define PTYGROUP to some numerical group-id if you do not want the
#define PTYMODE 0620
#define PTYGROUP tty

Still, I'd rather expect, in the absence of requested group write
permissions to have the terminals as 0600, not 0622. This is really not
secure-by-default.


Alrighty then,

Thomas

* I admit that I was not sure of that, but rather hope that this would
  be ensured by autoconf, as it would introduce horrible inconsistency
  between automated and interactive builds.

--=20
Dr. Thomas Orgis
HPC @ Universit=C3=A4t Hamburg
