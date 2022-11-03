X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/11/03/11
Message-Id: <6442A168-FF2E-4CB9-8455-513A9FFC3EB5@gentoo.org>
Date: Thu, 3 Nov 2022 20:32:33 +0000
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Cc: nic.tuv@...il.com, Hanno Böck <hanno@...too.org>
Subject: Re: OpenSSL X.509 Email Address 4-byte Buffer Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer Overflow (CVE-2022-3786)
Content-Type: text/plain; charset=utf-8



> On 3 Nov 2022, at 20:23, Sam James <sam@...too.org> wrote:
> [snip]

> [2] https://github.com/openssl/openssl/issues/18663#issuecomment-1181478057

I should add - the LTO warnings with GCC here (-Wfree-nonheap-object) are possibly
false positives, but Clang doesn't emit them IIRC and I think it's a valuable
resource to dig into.

Download attachment "signature.asc" of type "application/pgp-signature" (359 bytes)
