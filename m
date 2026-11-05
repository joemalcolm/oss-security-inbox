X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/05/14
Message-ID: <20261105225000.GD498269@qaa.vinc17.org>
Date: Thu, 5 Nov 2026 23:50:00 +0100
From: Vincent Lefevre <vincent@...c17.net>
To: oss-security@...ts.openwall.com
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

On 2026-11-05 23:38:51 +0400, Loganaden Velvindron wrote:
> It's unfortunate that some people are writing misleading statements
> about a security problem in OpenSSH, especially on linkedin, despite
> djm@ explaining that this is a WORKAROUND.

This is not clear. Under Debian, the crypt(3) man page says:

  Upon error, crypt_r, crypt_rn, and crypt_ra write an invalid hash
  to  the  output field of their data argument, and crypt writes an
  invalid hash to its static storage area.   This  string  will  be
  shorter  than  13 characters, will begin with a ‘*’, and will not
  compare equal to setting.

So it seems that "*" could be a valid result in case of error.

-- 
Vincent Lefèvre <vincent@...c17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
