X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/21
Message-ID: <20261106173150.LJYh8Oen@steffen%sdaoden.eu>
Date: Fri, 06 Nov 2026 18:31:50 +0100
From: Steffen Nurpmeso <steffen@...oden.eu>
To: oss-security@...ts.openwall.com
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

Martin Steigerwald wrote in
 <lAcUgmfSTD6YfF29yvDOHQ@...htvoll.de>:
 |Greetings.
 |
 |Matt Johnston - 06.11.26, 03:05:13 CET:
 |> Prior to ~2019 when the OpenSSH change was made, Debian
 |> would have shown a different manpage that only documents
 |> NULL for error [1].
 |> Changing system APIs is problematic!
 |
 |That.
 |
 |If applications do not check for a NULL pointer:
 |
 |Let them crash!
 |
 |Really.

Yet this all is SysV / BSD a.k.a. UNIX.

  #?0|lecce:ucb-csrg-bsd$ git lo master -- lib/libc/gen/crypt.c | tail -n1
  701ef780846a72969d45e56612122f4c8a0ddb47 date and time created 80/12/21 16:39:32 by wnj

  #?0|lecce:unix-hist$ git grep -F 'crypt(' Research-V3 | head -n1
  Research-V3:man/man0/index:        crypt(III): encrypt  according to a keyword

  #?0|lecce:unix-hist$ gl1 Research-V3 | grep ^Commit
  Commit:     Ken Thompson <ken@...earch.uucp>
  CommitDate: 1973-08-30 19:34:53 -0500

POSIX example does not test for NULL.

  ...

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
