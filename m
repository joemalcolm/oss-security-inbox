X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7790" "Wednesday" "17" "February" "2016" "17:24:40" "-0800" "Konstantin Serebryany" "konstantin.s.serebryany@gmail.com" "<CAGQ9bdw_kcv84s+mzevpBnNfhTN9idGRf_JJM7Tw8jk5Jsji_Q@mail.gmail.com>" "210" "Re: [oss-security] Address Sanitizer local root" "^Date:" nil nil "2" "2016021801:24:40" "[oss-security] Address Sanitizer local root" (number mark "        konstantin.s Feb 17  210/7790  " thread-indent "\"Re: [oss-security] Address Sanitizer local root\"\n") "<20160217221921.GB24130@port70.net>" ("<20160217221921.GB24130@port70.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32332 invoked by uid 550); 18 Feb 2016 01:26:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31744 invoked from network); 18 Feb 2016 01:25:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=Sd1g1MqV9awscZXgGBTNVTday6OFmVZipCCZI0GqTvo=;
        b=yMwi3RMQcVA/8pDrWCMV3RwSMrXRX33DT/rg4L8hljU1nidxmLesYZ6t5rGGv/Eo91
         3J162aLpZgk63xRdJGzn2VfnflUHomHCG0Ork1ofnxlnRque9h7OoW08V314DnksjE+e
         K+DlSl6su3wLPehiN7PdzoHOLdANqO7QWcHjMlWV6y49HZTXR27D7Z6f0dpl0TAwOT//
         LzjC4iBUWW5jCHDzLsxr4x53x96ohXEp/wQARLLWQ7iGY6cEGrefeHWKkdEoNszlleU7
         XReIf3oMOfztQbuwUgUYsCOFjD9KDK8DQf8gk4uKT77d/gPrzNvmgkhjy4tORwirr6Fn
         8dmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=Sd1g1MqV9awscZXgGBTNVTday6OFmVZipCCZI0GqTvo=;
        b=LKStz8PUATdSF6bqegLA38Xzb/pTU79nripHCMmx0Gtd0ryWGkEhGsNuc1e2GscjtW
         guSXNsL1MxNHtYgIC0W/2oO63J6+nkJRXxAbTBknE+zkQmLi+OSwmHuk3izPmtPWMBsO
         XE1phU0wt7/0Zukf3FXM1rPKCgeYN82wZZmAayjhdz4r3ndR1Wt8Cdj0edftCFNFdUCM
         mUPre5Pivbd00Im6jWlYccMtr8nr3Bl76GTX6b6uidecMtpQdfXmN4Ye+AjZb8aTXg4h
         V4l1HS7KgxxcZuJoxJR011eXd6EO9KKszxxVwBGmn25b1rAWH/VLoqMuXoh0cUVTmWH2
         lGpQ==
X-Gm-Message-State: AG10YOQduddJLHS/LhVDRK4exnglziyoixrmPZ8ygZm3GbWQHqPl0ImT9PxX+PIZLBYUt6a893K7uxEtVjITTQ==
X-Received: by 10.13.216.145 with SMTP id a139mr2581923ywe.245.1455758699718;
 Wed, 17 Feb 2016 17:24:59 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160217221921.GB24130@port70.net>
References: <20160217221921.GB24130@port70.net>
Message-ID: <CAGQ9bdw_kcv84s+mzevpBnNfhTN9idGRf_JJM7Tw8jk5Jsji_Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114e55fa2cede8052c013c0f
Date: Wed, 17 Feb 2016 17:24:40 -0800
From: Konstantin Serebryany <konstantin.s.serebryany@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Address Sanitizer local root
To: oss-security@lists.openwall.com

--001a114e55fa2cede8052c013c0f
Content-Type: text/plain; charset=UTF-8

[I'm one of the asan authors]

Thanks for the detailed explanation of why asan is not a hardening
technique.
I agree with most points here but they are not needed simply because asan
run-time
is so complex that it can not possibly be verifiable as a secure hardening
tool.

However using asan in production is sometimes desirable for *testing*
purposes
to find the last remaining bugs.

More comments below.


On Wed, Feb 17, 2016 at 2:19 PM, Szabolcs Nagy <nsz@port70.net> wrote:

> There is an alarming trend that Address Sanitizer and related
> compiler instrumentations from compiler-rt are used as a hardening
> solution and run in production.
>
> Even though these are debugging and testing tools, there is
> no clear warning against production use in their documentation:
> http://clang.llvm.org/docs/
> And it's obvious how a tool that catches UB can be misunderstood
> as a hardening tool:
>
> This analysis concluded that ASan can be used for protection
> to stop certain attacks:
> http://scarybeastsecurity.blogspot.dk/2014/09/using-asan-as-protection.html
> The Tor project distributes ASan "hardened" binaries:
> https://blog.torproject.org/blog/tor-browser-55a4-hardened-released
> And there are various projects for full Linux distro instrumentation:
>
> http://balintreczey.hu/blog/progress-report-on-hardened1-linux-amd64-a-potential-debian-port-with-pie-asan-ubsan-and-more/
>
> https://blog.hboeck.de/archives/879-Safer-use-of-C-code-running-Gentoo-with-Address-Sanitizer.html
> (the later was presented at FOSDEM 2016:
> https://fosdem.org/2016/schedule/event/csafecode/ )
>

The linux dostros with asan are primarily for *testing*, not hardening. (At
least in my view)


>
> While these are interesting projects, ASan should not be
> used for hardening in production systems in its current form,
> so at least the language ("hardening", "protection", "safe")
> should be fixed.
>
> My simple local root exploit is that ASan uses a lot
> of environment variables without checking for secure
> execution of setuid binaries:
>
> ASAN_OPTIONS='verbosity=2 log_path=foo' ./suid.exe
>
> will write to foo.$PID using escalated priviledge, so a
> normal user may be able to clobber arbitrary root owned files
> (by creating foo.{1,2,3,..} symlinks to it) which can lead
> to local root on an "ASan hardened" Linux distribution:
>
> ASAN_OPTIONS='suppressions="/foo
> root:passwdhash:12345:0:::::
> bar" log_path=foo' ./suid.exe
>
> can easily clobber /etc/shadow with
>

> AddressSanitizer: failed to read suppressions file '/foo
> root:passwdhash:12345:0:::::
> bar'
>

nice!


>
> if there is any setuid root executable built with ASan.
>
> (This is not a problem for testing where the env var based
> configuration is convenient and I haven't checked if any
> of the current ASan distro efforts have setuid executables
> with instrumentation, but I still find it a security bug
> given the improper advertisment of the sanitizer tools:
> this can lead to problems if the documentation is not fixed.)
>
> Beyond this trivial issue there are plenty reliability
> problems in the sanitizer runtimes that i think deserve
> at least a warning. It can crash conforming applications
> because
>
> - the shadow map overlaps with something
> - ulimit -v
> - overcommit is turned off
> - it allocates memory but aborts on failure
> - it interposes __tls_get_addr with non-as-safe code.
> - it uses initial-exec TLS.
> - it handles "deadly" signals like SIGBUS
>   (often used by applications using mmaped files).
> - the c runtime is updated and incompatible
>   (with the various interposition hacks)
> - does not handle c11 thread creation
>
> some of the features reduce security:
>
> - heuristic introspective unwind
> - nice diagnositc messages at undefined behaviour
> - interpositions in general (UB according to POSIX)
>
> other limitations:
>
> - static linking is not supported
>
> (This is for ASan only, I briefly looked at thread
> sanitizer, which seemed even worse for reliability
> and safe stack




> that is in fact advertised for hardening
> but it has plenty reliability problems, needs further
> analysis.)
>

safe stack is a new thing, not really well tuned and polished,
but I would love to hear your analysis because we do expect safe stack to
become a hardening tool.

Also, WDYT about http://clang.llvm.org/docs/ControlFlowIntegrity.html ?
:)



>
> I believe some of the problems can be fixed by
> implementing the runtimes in the libc instead of
>

+1
Many other problems will be solved by implementing asan/tsan/msan/lsan as
part of a libc.



> second guessing libc behaviour with fragile
> heuristics from a compiler runtime.   This would solve
> most of the runtime aborts.  I can see an easy way to do
> this with musl libc


Yes, please!


> (because a non-host musl is easy to
> distribute and link against), but non-trivial with glibc.
> In either case I don't see a solution to the shadow map
> commit charge unless the kernel is modified.  So I cannot
> recommend even a careful reimplementation in libc for
> production use for reliable systems.
>


> ASan is also far from providing full memory safety and to a large extent
> it defeats Address Space Layout Randomization. It was strange to see a
> hardening effort enabling both PIE and ASan. Even without taking the
> runtime issues into consideration, it can make exploitation easier. It
> doesn't work with PaX ASLR for a reason. It's also incompatible with PaX
> UDEREF on x86_64 but that's a separate kind of issue since it could be
> altered to reserve the mappings in a way that's compatible.
> ASan's bounds checking is great at detecting the common cases of
> overflow for debugging, but it's far from exhaustive. An attacker would
> be able to bypass it in the general case. It would make it too hard to
> exploit some vulnerabilities, but it won't prevent exploitation in
> general.
> The use-after-free and double-free detection is based on the same
> quarantine technique in Valgrind. It can only detect the issues before
> allocations are flushed out of the quarantine by memory pressure. It
> does mitigate many vulnerabilities but comparable double-free detection
> could be done in malloc without the drawbacks (two flat arrays providing
> a ring buffer for a FIFO quarantine + a hash table). The same thing
> applies to write-after-free but not use-after-free, since that would
> require instrumentation in the code. A write-after-free can be detected
> by filling allocations with junk and then checking for it when it's
> flushed from the quarantine rather than instrumentation. It doesn't need
> to do the whole allocation to be useful, so there's a large range of
> tuning for performance. The junk data could come from a stream cipher
> seeded from the address if desired, but it doesn't seem important.
> It makes a lot of sense to use UBSan in the trapping mode for hardening,
> as it has no runtime and is simply adding extra checks branching to an
> instruction aborting the process. That includes the bounds and object-
> size sanitizers for bounds checking where object sizes are statically
> known. They could even be extended to cover cases where the compiler can
> figure out runtime size bounds at compile-time (for example, usage of
> memory directly after allocation with malloc(n)).
> Using ASan doesn't seem advisable. There would need to be an investment
> in remaking it with hardening in mind. It might not make sense to use
> the same design at all. For example, Intel MPX is much more oriented
> towards usage in production, including for hardening.


Sadly MPX is too slow, too memory-hungry, and does not protect from
use-after-free at all.

--001a114e55fa2cede8052c013c0f--
