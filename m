X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8334" "Monday" "17" "April" "2017" "20:07:28" "+0200" "Solar Designer" "solar@openwall.com" "<20170417180728.GA31692@openwall.com>" "196" "Re: [oss-security] Re: CVE Request: Cap'n Proto: Bounds check elided by compiler optimization" "^Cc:" nil nil "4" "2017041718:07:28" "[oss-security] Re: CVE Request: Cap'n Proto: Bounds check elided by compiler optimization" (number mark "        solar@openwa Apr 17  196/8334  " thread-indent "\"Re: [oss-security] Re: CVE Request: Cap'n Proto: Bounds check elided by compiler optimization\"\n") "<CAJouXQntfKK9r8T5HtxHCeVGhdYjwW_Wk_SSa4n-KsbM5qAFZA@mail.gmail.com>" ("<CAJouXQ=FM1XBV3p8Yn_yrhJyLv98hEChuGFgKuLUhFoGXAgsrg@mail.gmail.com>" "<CAJouXQntfKK9r8T5HtxHCeVGhdYjwW_Wk_SSa4n-KsbM5qAFZA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18045 invoked by uid 550); 17 Apr 2017 18:07:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17897 invoked from network); 17 Apr 2017 18:07:34 -0000
Message-ID: <20170417180728.GA31692@openwall.com>
References: <CAJouXQ=FM1XBV3p8Yn_yrhJyLv98hEChuGFgKuLUhFoGXAgsrg@mail.gmail.com> <CAJouXQntfKK9r8T5HtxHCeVGhdYjwW_Wk_SSa4n-KsbM5qAFZA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline
In-Reply-To: <CAJouXQntfKK9r8T5HtxHCeVGhdYjwW_Wk_SSa4n-KsbM5qAFZA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Cc: Kenton Varda <kenton@cloudflare.com>, Tom Lee <debian@tomlee.co>
Date: Mon, 17 Apr 2017 20:07:28 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: Cap'n Proto: Bounds check elided by compiler optimization
To: oss-security@lists.openwall.com

--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 17, 2017 at 10:35:51AM -0700, Kenton Varda wrote:
> Whoops, apparently I'm supposed to use the web form now. Sorry!

Yes, but many of us in here care(d) about being notified of security
issues much more than about CVEs, hence as a moderator I approved your
posting anyway.  Once you've obtained the CVE ID from MITRE, please post
it to this same thread as a "reply".

> On Mon, Apr 17, 2017 at 10:32 AM, Kenton Varda <kenton@cloudflare.com> wrote:
> > Full details and fix covered here: https://github.com/sandstorm-i
> > o/capnproto/blob/master/security-advisories/2017-04-17-0-
> > apple-clang-elides-bounds-check.md

The lack of detail in your posting goes against published oss-security
guidelines, which are:

http://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

"At least the most essential part of your message (e.g., vulnerability
detail and/or exploit) should be directly included in the message itself
(and in plain text), rather than only included by reference to an
external resource.  Posting links to relevant external resources as well
is acceptable, but posting only links is not.  Your message should
remain valuable even with all of the external resources gone."

Here's the "unbroken" GitHub URL:

https://github.com/sandstorm-io/capnproto/blob/master/security-advisories/2017-04-17-0-apple-clang-elides-bounds-check.md

and I've attached to this message the "raw" (text) version from:

https://raw.githubusercontent.com/sandstorm-io/capnproto/master/security-advisories/2017-04-17-0-apple-clang-elides-bounds-check.md

as text/plain.

Thanks,

Alexander

--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="2017-04-17-0-apple-clang-elides-bounds-check.md"

Problem
=======

Some bounds checks are elided by Apple's compiler and possibly others, leading
to a possible attack especially in 32-bit builds.

Although triggered by a compiler optimization, this is a bug in Cap'n Proto,
not the compiler.

Discovered by
=============

Kenton Varda &lt;kenton@cloudflare.com> &lt;kenton@sandstorm.io>

Announced
=========

2017-04-17

CVE
===

(none assigned yet)

Impact
======

- Remotely segfault a 32-bit application by sending it a malicious message.
- Exfiltration of memory from such applications **might** be possible, but our
  current analysis indicates that other checks would cause any such attempt to
  fail (see below).
- At present I've only reproduced the problem on Mac OS using Apple's
  compiler. Other compilers and platforms do not seem to apply the problematic
  optimization.

Fixed in
========

- git commit [52bc956459a5e83d7c31be95763ff6399e064ae4][0]
- release 0.5.3.1:
  - Unix: https://capnproto.org/capnproto-c++-0.5.3.1.tar.gz
  - Windows: https://capnproto.org/capnproto-c++-win32-0.5.3.1.zip
- release 0.6 (future)

[0]: https://github.com/sandstorm-io/capnproto/commit/52bc956459a5e83d7c31be95763ff6399e064ae4

Details
=======

*The following text contains speculation about the exploitability of this
bug. This is provided for informational purposes, but as such speculation is
often shown to be wrong, you should not rely on the accuracy of this
section for the safety of your service. Please update your library.*

During regular testing in preparation for a release, it was discovered that
when Cap'n Proto is built using the current version of Apple's Clang compiler
in 32-bit mode with optimizations enabled, it is vulnerable to attack via
specially-crafted malicious input, causing the application to read from an
invalid memory location and crash.

Specifically, a malicious message could contain a [far pointer][1] pointing
outside of the message. Cap'n Proto messages are broken into segments of
continuous memory. A far pointer points from one segment into another,
indicating both the segment number and an offset within that segment. If a
malicious far pointer contained an offset large enough to overflow the pointer
arithmetic (wrapping around to the beginning of memory), then it would escape
bounds checking, in part because the compiler would elide half of the bounds
check as an optimization.

That is, the code looked like (simplification):

    word* target = segmentStart + farPointer.offset;
    if (target < segmentStart || target >= segmentEnd) {
      throwBoundsError();
    }
    doSomething(*target);

To most observers, this code would appear to be correct. However, as it turns
out, pointer arithmetic that overflows is undefined behavior under the C
standard. As a result, the compiler is allowed to assume that the addition on
the first line never overflows. Since `farPointer.offset` is an unsigned
number, the compiler is able to conclude that `target < segmentStart` always
evaluates true. Thus, the compiler removes this part of the check.
Unfortunately, in the case of overflow, this is exactly the part of the check
that we need.

Based on both fuzz testing and logical analysis, I believe that the far pointer
bounds check is the only check affected by this optimization. If true, then it
is not possible to exfiltrate memory through this vulnerability: the target of
a far pointer is always expected to be another pointer, which in turn points to
the final object. That second pointer will go through its own bounds checking,
which will fail (unless it somehow happens to point back into the message
bounds, in which case no harm is done).

I believe this bug does not affect any common 64-bit platform because the
maximum offset expressible by a far pointer is 2^32 bytes. In order to trigger
the bug in a 64-bit address space, the message location would have to begin
with 0xFFFFFFFF (allocated in the uppermost 4GB of address space) and the
target would have to begin with 0x00000000 (allocated in the lowermost 4GB of
address space). Typically, on 64-bit architectures, the upper half of the
address space is reserved for the OS kernel, thus a message could not possibly
be located there.

I was not able to reproduce this bug on other platforms, perhaps because the
compiler optimization is not applied by other compilers. On Linux, I tested GCC
4.9, 5.4, and 6.3, as well as Clang 3.6, 3.8, and 4.0. None were affected.
Nevertheless, the compiler behavior is technically allowed, thus it should be
assumed that it can happen on other platforms as well.

The specific compiler version which was observed to be affected is:

    $ clang++ --version
    Apple LLVM version 8.1.0 (clang-802.0.41)
    Target: x86_64-apple-darwin16.5.0
    Thread model: posix
    InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin

(Note: Despite being Clang-based, Apple's compiler version numbers have no
apparent relationship to Clang version numbers.)

[1]: https://capnproto.org/encoding.html#inter-segment-pointers

Preventative measures
=====================

The problem was caught by running Cap'n Proto's standard fuzz tests in this
configuration. These tests are part of the Cap'n Proto test suite which runs
when you invoke `make check`, which Cap'n Proto's installation instructions
suggest to all users.

However, these fuzz tests were introduced after the 0.5.x release branch,
hence are not currently present in release versions of Cap'n Proto, only in
git. A 0.6 release will come soon, fixing this.

The bugfix commit forces the compiler to perform all checks by casting the
relevant pointers to `uintptr_t`. According to the standard, unsigned integers
implement modulo arithmetic, rather than leaving overflow undefined, thus the
compiler cannot make the assumptions that lead to eliding the check. This
change has been shown to fix the problem in practice. However, this quick fix
does not technically avoid undefined behavior, as the code still computes
pointers that point to invalid locations before they are checked. A
technically-correct solution has been implemented in the next commit,
[2ca8e41140ebc618b8fb314b393b0a507568cf21][2]. However, as this required more
extensive refactoring, it is not appropriate for cherry-picking, and will
only land in versions 0.6 and up.

[2]: https://github.com/sandstorm-io/capnproto/commit/2ca8e41140ebc618b8fb314b393b0a507568cf21

--y0ulUmNC+osPPQO6--
