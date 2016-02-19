X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2343" "Thursday" "18" "February" "2016" "20:07:30" "-0500" "Rich Felker" "dalias@libc.org" "<20160219010730.GF9349@brightrain.aerifal.cx>" "49" "Re: [oss-security] Re: Address Sanitizer local root" nil nil nil "2" "2016021901:07:30" "[oss-security] Re: Address Sanitizer local root" (number mark "U       dalias@libc. Feb 18   49/2343  " thread-indent "\"Re: [oss-security] Re: Address Sanitizer local root\"\n") "<56C6516E.7040808@xiphosresearch.co.uk>" ("<56C6516E.7040808@xiphosresearch.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29818 invoked by uid 550); 19 Feb 2016 01:07:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29798 invoked from network); 19 Feb 2016 01:07:43 -0000
Date: Thu, 18 Feb 2016 20:07:30 -0500
From: Rich Felker <dalias@libc.org>
To: oss-security@lists.openwall.com
Message-ID: <20160219010730.GF9349@brightrain.aerifal.cx>
References: <56C6516E.7040808@xiphosresearch.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <56C6516E.7040808@xiphosresearch.co.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: Rich Felker <dalias@aerifal.cx>
Subject: Re: [oss-security] Re: Address Sanitizer local root

On Thu, Feb 18, 2016 at 11:19:10PM +0000, Darren Martyn wrote:
> Hi List,
> Figured I would add this to the thread to keep it amusing.
> 
> Here is a fully functioning local root by clobbering /etc/ld.so.preload
> instead of /etc/shadow (which breaks things spectacularly). I am using a
> fairly messy "symlink spray"/"symlink carpet bombing" technique.
> 
> Simply point it at a setuid-root binary compiled with asan and away it
> goes.
> 
> Video: https://www.youtube.com/watch?v=jhSIm3auQMk
> PoC Code: https://gist.github.com/0x27/9ff2c8fb445b6ab9c94e
> 
> Development/Testing was done on a Debian 8.3 VM that was last updated
> last week.
> 
> Now, I wonder - what can actually be done to mitigate against this,
> besides "don't use ASAN in production"?
> Is there something that can be done ASAN-side?
> Because due to how ld.so.preload is parsed so, uh, forgivingly, all the
> attacker needs to control is one line in the output file. Could it check
> for symlinks before writing the log?

Fixing this whole class of bugs is trivial -- just don't process
environment vars or other invoker-controlled input when run suid. For
most things you would want to call secure_getenv (glibc) or issetugid
(BSD) to achieve this but for sanitizer libs it may make more sense to
just access the aux vector directly and check AT_SECURE and related
items.

Of course there's a lot more state that the attacker invoking a suid
binary controlls -- resource limits, open file descriptors,
controlling ttys, signal state, etc. This also needs to be dealt with.

On a more general level, the kind of diagnostic introspection the
sanitizer libs do is just unsafe in general. Once you have a
known-compromised process state, the only thing safe to do is inducing
program termination asap. Processing complex data structures is
unsafe. Unwinding is unsafe. Function calls (especially via GOT/PLT)
and even normal system calls (on i386 where the vdso syscall pointer
is stored just after the thread stack) are unsafe. For hardening
purposes you need either an inline __builtin_trap() (and hope nobody's
catching SIGILL/SIGSEGV/SIGABRT) or ideally an inline [rt_sigprocmask,
getpid, kill] syscall sequence. Analysis of the crashing process, if
desired, should be left to an external debugger, not put in the
sanitizer libs just because it's "convenient".

Rich
