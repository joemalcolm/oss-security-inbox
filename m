X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/02/26/6
Message-ID: <CALCETrWner1C6Niczzx-mRay_YVb4fxS7xXLx66v1p+7tkU73g@mail.gmail.com>
Date: Fri, 26 Feb 2016 12:28:23 -0800
From: Andy Lutomirski <luto@...nel.org>
To: oss security list <oss-security@...ts.openwall.com>
Subject: Partial SMAP bypass on 64-bit Linux kernels
Content-Type: text/plain; charset=utf-8

Hi all-

Those of you using 64-bit Linux kernels on SMAP-capable systems (which
are still very rare in the server space) with ia32 emulation enabled
will want to backport:

https://git.kernel.org/cgit/linux/kernel/git/tip/tip.git/commit/?h=x86/urgent&id=3d44d51bd339766f0178f0cf2e8d048b4a4872aa

That patch fixes a bug that exposed a fairly large kernel code surface
to a straightforward SMAP bypass.

Credit to Brian Gerst who noticed the bug.

This bug is present in all kernels from 3.10 on AFAICT.  Kernels
before 3.10 don't support SMAP in the first place.  32-bit kernels are
not affected (but why would you be running a 32-bit kernel on
SMAP-capable hardware in the first place?).

--Andy
