X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4660" "Tuesday" "23" "October" "2018" "15:35:02" "+0200" "Solar Designer" "solar@openwall.com" "<20181023133502.GA22933@openwall.com>" "91" "Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" "^Cc:" nil nil "10" "2018102313:35:02" "[oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" (number mark "        solar@openwa Oct 23   91/4660  " thread-indent "\"Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions\"\n") "<87zhv5znqn.fsf@oldenburg.str.redhat.com>" ("<DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>" "<87zhv5znqn.fsf@oldenburg.str.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3678 invoked by uid 550); 23 Oct 2018 13:38:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1544 invoked from network); 23 Oct 2018 13:35:24 -0000
Message-ID: <20181023133502.GA22933@openwall.com>
References: <DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com> <87zhv5znqn.fsf@oldenburg.str.redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87zhv5znqn.fsf@oldenburg.str.redhat.com>
User-Agent: Mutt/1.4.2.3i
Cc: Andrew Sandoval <ASandoval@webroot.com>
Date: Tue, 23 Oct 2018 15:35:02 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions
To: oss-security@lists.openwall.com

On Mon, Oct 22, 2018 at 11:16:00PM +0200, Florian Weimer wrote:
> * Andrew Sandoval:
> 
> > Will Webroot communicate this to the public?
> > Webroot believes in responsible disclosure and will work with third parties to
> > ensure that the vulnerability is addressed before a public announcement. We
> > are happy to work with your communications team on announcement timing.
> 
> This is already public because oss-security is a public mailing list.

This was brought to the distros list a few days ago, and I asked Andrew
to repost the same text to oss-security, which is why the stale mention
of private communications.

> Most GNU/Linux distributions ensure that only very special binaries
> (such as some versions of the Ada compiler) enable executable stacks.
> In our experience, if the toolchain produces a binary that requests an
> executable stack, it is more likely due to manually written assembler
> files without the required stack executability markup section, and not
> due to nested C functions whose address escapes.  Without scanning built
> binaries for these discrepancies, such cases could easily be missed.

Some distros check for this at package build time - I think Gentoo might
have been first to start doing that over a decade ago.

Here's a list of maybe-actionable items I came up with in response to
Webroot's findings/reminder:

1. More distros should start checking for executable stacks in program
binaries at package build time, and error out when this is unexpected.

2. On Linux, we might want to have an enforcing mode (or several
sub-modes) in the kernel, where it'd keep the stack non-executable (and
possibly enforce W^X for other mappings as well), ignoring any flags in
the program binaries.  I encouraged Vasiliy Kulikov to implement that
when he worked with us under GSoC 2011 on Linux kernel hardening tasks.
Here's the relevant thread, including a kernel patch:

https://www.openwall.com/lists/kernel-hardening/2011/07/18/8

For GCC trampolines to continue working, we can implement emulation of
the trampoline instructions like I introduced in -ow patches for 2.2.x
and like it's done in PaX/grsecurity.  Vasiliy's patch includes that
(using code from PaX).

IIRC, we never actually submitted this upstream.  Maybe the current
kernel hardening project (KSPP) should take and complete this effort.

3. Andrew writes: "Most if not all C++ compilers are able to produce
code from lambdas (similar to nested functions) without compromising the
call stack."  It'd be helpful to explore this more and see whether
there's any fundamental difference preventing reuse of the same approach
(whatever it is) for nested functions as well.  I'd appreciate
discussion of this on oss-security.  My guess is this probably doesn't
fit in the existing ABI for C, but I might be wrong.

4. The Webroot report lists several commonly used Open Source programs
for Windows where GCC's behavior results in the stack made executable:

> > * Git for Windows Installer
> > * Cygwin Installer
> > * MinTTY
> > * Git Bash Shell
> > * ...and other similar tools

The maintainers of these programs, or distros/contributors, could want
to look into removing the uses of nested functions from there.  For
those projects where issue trackers (e.g., GitHub issues) or bug
reporting mailing lists exist, the issues should be reported to there.
These issues are not strictly bugs, but they may be tracked similarly.
If you (anyone reading this) do anything on this (e.g., report one of
those issues), please post a follow-up to this thread saying so.

5. On Linux, we're unlucky to have the stack marked executable from the
start, but at least we're lucky to have this easily detectable from
automated analysis of the program binary.  As I understand, this isn't
the case on Windows, where the binary would appear to have DEP enabled
yet each thread would switch to executable stack upon having the address
of a nested function taken and would stay with executable stack until
terminating.  Perhaps there's room for improvement here (e.g., an
enforcing more like what I suggest for Linux), but with Windows not
being an Open Source operating system there's little we can do and
discuss in here, short of suggesting that Open Source tools for security
analysis of Windows programs should learn to detect existence of code
inside the programs that would (partially) circumvent DEP.  I guess they
could detect this GCC-specific pattern or/and uses of VirtualProtect()
in general, although not all of those uses are relevant (some might
actually be improving security - e.g., explicitly setting something to
read-only and/or non-executable).

Alexander
