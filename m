X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1982" "Sunday" "8" "January" "2017" "15:19:33" "+0000" "Simon McVittie" "smcv@debian.org" "<20170108151933.xskkfpmwum3jr6jf@perpetual.pseudorandom.co.uk>" "43" "Re: [oss-security] Re: Firejail local root exploit" "^Date:" nil nil "1" "2017010815:19:33" "[oss-security] Re: Firejail local root exploit" (number mark "        smcv@debian. Jan  8   43/1982  " thread-indent "\"Re: [oss-security] Re: Firejail local root exploit\"\n") "<1483876318.5179.50.camel@juliet.mcarpenter.org>" ("<730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>" "<f47526d9-157e-1600-8f64-d737db07753c@web.de>" "<1483795275.8979.125.camel@juliet.mcarpenter.org>" "<1483876318.5179.50.camel@juliet.mcarpenter.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26588 invoked by uid 550); 8 Jan 2017 15:20:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26539 invoked from network); 8 Jan 2017 15:20:16 -0000
Message-ID: <20170108151933.xskkfpmwum3jr6jf@perpetual.pseudorandom.co.uk>
References: <730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>
 <f47526d9-157e-1600-8f64-d737db07753c@web.de>
 <1483795275.8979.125.camel@juliet.mcarpenter.org>
 <1483876318.5179.50.camel@juliet.mcarpenter.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1483876318.5179.50.camel@juliet.mcarpenter.org>
User-Agent: NeoMutt/20161126 (1.7.1)
Date: Sun, 8 Jan 2017 15:19:33 +0000
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Firejail local root exploit
To: oss-security@lists.openwall.com

On Sun, 08 Jan 2017 at 12:51:58 +0100, Martin Carpenter wrote:
> Here's
> disable_coredumps() from sudo 1.8.9p5 (as shipped with Ubuntu 14.04,
> which does not disable suid coredumps on desktop by default):
[... the active ingredient is ...]
>  800     (void) getrlimit(RLIMIT_CORE, &corelimit);
>  801     memcpy(&rl, &corelimit, sizeof(struct rlimit));
>  802     rl.rlim_cur = 0;
>  803     (void) setrlimit(RLIMIT_CORE, &rl);

This is not actually enough. dbus has one regression test involving a
binary that deliberately segfaults (so we can assert that the resulting
error is reported correctly) and we found that with tools like corekeeper
that set core_pattern="|some-helper", code similar to sudo's still resulted
in a core dump being written into the pipe to some-helper. In dbus this
was only a performance issue and not a security issue (dumping core
repeatedly made our unit tests really slow).

To address that, we added this:

#if defined(HAVE_PRCTL) && defined(PR_SET_DUMPABLE)
  /* Really, no core dumps please. On Linux, if core_pattern is
   * set to a pipe (for abrt/apport/corekeeper/etc.), RLIMIT_CORE of 0
   * is ignored (deliberately, so people can debug init(8) and other
   * early stuff); but Linux has PR_SET_DUMPABLE, so we can avoid core
   * dumps anyway. */
  prctl (PR_SET_DUMPABLE, 0, 0, 0, 0);
#endif

Reference: https://bugs.freedesktop.org/show_bug.cgi?id=83772
Rationale for RLIMIT_CORE=0 being ignored in this case:
https://lkml.org/lkml/2011/8/24/136

> there just has to be more stuff out there like this. sudo was literally
> the first thing I looked at... Disabling filter inheritance across the
> privilege boundary doesn't seem like an obviously good solution(?).

bubblewrap opts-out of setuid and similar mechanisms by unconditionally
setting PR_SET_NO_NEW_PRIVS (and bailing out if that fails), which seems
a good idea for anything that claims to be a sandbox. If feasible, I would
recommend that firejail should do the same.

    S
