X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/2
Message-ID: <au0lKlhZiS3YrSNd@mertle>
Date: Thu, 5 Nov 2026 19:54:02 -0500
From: Michael Orlitzky <michael@...itzky.com>
To: oss-security@...ts.openwall.com
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

On 2026-11-05 23:50:00, Vincent Lefevre wrote:
> 
> This is not clear. Under Debian, the crypt(3) man page says...
> So it seems that "*" could be a valid result in case of error.

The PORTABILITY NOTES go on to say,

  The behavior of crypt on errors isn't well standardized. Some
  implementations simply can't fail (except by crashing the program),
  others return a null pointer or a fixed string. Most implementations
  don't set errno, but some do. POSIX specifies returning a null
  pointer and setting errno, but it defines only one possible error,
  ENOSYS, in the case where crypt is not supported at all. Some older
  applications are not prepared to handle null pointers returned by
  crypt. The behavior described above for this implementation, setting
  errno and returning an invalid hash different from setting, is
  chosen to make these applications fail closed when an error occurs.

The linux man-pages have a glibc bias, but of course musl has no
documentation at all. If you turn to POSIX for help, it's vague to the
point of being useless, and somehow still manages to mischaracterize
the status quo. Having tried to portably accomodate crypt(3),
iconv(3), and the gettext(3) family recently, this situation is more
common than you might think. In the end I gave up on crypt(3)
entirely, as the musl implementation in Gentoo is easy to replace with
libxcrypt's. Of course, libxcrypt ALSO uses "failure tokens" if you
are not careful to disable them.

Anyway, my point is, no one knows what the output from crypt(3) will
be, so doing a strcmp on it to authenticate logins is... optimistic.
