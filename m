X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4773" "Thursday" "3" "January" "2019" "07:42:01" "+0000" "halfdog" "me@halfdog.net" "<10950-1546501321.837517@7NMx.Y9CH.RDhT>" "115" "Re: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Date:" nil nil "1" "2019010307:42:01" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "U       me@halfdog.n Jan  3  115/4773  " thread-indent "\"Re: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<CAH8yC8kY-oSpFTTY2QEyM9HAWj6_h69xUAFSD=5PF7iLczqdAA@mail.gmail.com>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<nn5zv8prfe.fsf@armitage.lysator.liu.se>" "<20190101124110.GA15804@espresso.pseudorandom.co.uk>" "<CAH8yC8kY-oSpFTTY2QEyM9HAWj6_h69xUAFSD=5PF7iLczqdAA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13584 invoked by uid 550); 3 Jan 2019 07:42:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13566 invoked from network); 3 Jan 2019 07:42:37 -0000
In-reply-to: <CAH8yC8kY-oSpFTTY2QEyM9HAWj6_h69xUAFSD=5PF7iLczqdAA@mail.gmail.com>
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com> <nn5zv8prfe.fsf@armitage.lysator.liu.se> <20190101124110.GA15804@espresso.pseudorandom.co.uk> <CAH8yC8kY-oSpFTTY2QEyM9HAWj6_h69xUAFSD=5PF7iLczqdAA@mail.gmail.com>
Comments: In-reply-to Jeffrey Walton <noloader@gmail.com>
   message dated "Wed, 02 Jan 2019 16:53:16 -0500."
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Message-ID: <10950-1546501321.837517@7NMx.Y9CH.RDhT>
Date: Thu, 03 Jan 2019 07:42:01 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)
To: oss-security@lists.openwall.com

Jeffrey Walton writes:
> On Tue, Jan 1, 2019 at 7:42 AM Simon McVittie <smcv@debian.org>
> wrote:
>>
>> On Tue, 01 Jan 2019 at 12:07:17 +0100, Niels Möller wrote:
>> > A security sensitive application can easily disable generation
>> of core > files, using setrlimit (on the linux kernel, prctl
>> may also be useful).
>>
>> If you want to avoid core dumps being recorded on Linux in
>> the presence of system configuration that writes them into
>> a pipe to a command instead of to a core file (systemd-coredump,
>> corekeeper, abrt, apport etc., using a string starting with
>> | in /proc/sys/kernel/core_pattern), then you need to use
>> prctl PR_SET_DUMPABLE. Setting RLIMIT_CORE to 0 prevents the
>> kernel from creating core dump files itself, but does not
>> prevent it from writing them to pipes.
>
> This is kind of interesting. It looks like systems running
> systemd with coredumpctl store the dumps in journald. Systemd
> does not appear to offer a way to clear them, so a
> '/var/log/journal/*/*' is needed.

Such system stores them if the admin wanted that, see "man coredump.conf".
So unless the "Storage=" setting is "none" but ignored, you
should be able to retrieve the dumps. With "Storage=External"
they end up on disk, where you should also have means to delete
them.

I prefer a setup, where cores are encrypted immediately during
core dump piping and then (like all other forensically relevant
data) synchronized timely to other machine(s), e.g. via pipeline
procedures built around guerilla-backup toolbox (which I did
not manage to find a Debian package sponsor yet).

> $ cat coredump.c #include <stdio.h> #include <assert.h>
>
> int main(int argc, char* argv[]) { char password[128];
> printf("Please enter your password:\n"); if(fgets(password,
> sizeof(password), stdin) != NULL) { /* do some real work, detect
> an error condition, then... */ assert(0); }
>
> return 0; }
>
>
> $ gcc coredump.c -o coredump.exe $ ./coredump.exe Please enter
> your password: supersecretpassword coredump.exe: coredump.c:11:
> main: Assertion `0' failed. Aborted (core dumped)
>
>
> $ coredumpctl list TIME                            PID   UID
>   GID SIG COREFILE  EXE Wed 2019-01-02 16:23:15 EST   10827
>  1000  1000   6 present   /home/jwalton/...
>
>
> $ coredumpctl -o coredump.exe.core dump 10827 PID: 10827
> (coredump.exe) UID: 1000 (jwalton) GID: 1000 (jwalton) Signal:
> 6 (ABRT)
>
>
> $ strings coredump.exe.core | grep supersecret supersecretpassword
> supersecretpassword

No matter which way your program was crashed (by your code or
a library, by bug or API misuse, via SEGV, abort or whatsoever):
a application processing sensitive data was not prepared to protect
it. It could have happened also without even using any libraries
at all.


See e.g. "ssh-agent", which (beside other means I think) uses
the SGID-approach approach to protect against this and other
dumpable/ptrace-may-attach related security issues, thus also
preventing normal dumps. The art of secure programming would
somehow be knowing all typical risks on your target platform(s)
and mitigate them appropriately.


The use of systemd-coredump here is just another red herring (same
as abort()): A program processing sensitive information wanted to
be dumpable, so the information can be retrieved by normal users.
That is just exactly the idea behind coredumps for debugging et
al.

I think if your application would have coredump/ptrace protection
in place, systemd-coredump could still dump the file for the
root-user, but that also would be just very useful behaviour
(it allow forensics, IOC-generation also for SUID-crashes) and
usually not a security risk at all: only root can read them
(and root could usually ptrace your program, read all you
supersensitive IO, manipulate the binary, ... anyway).


In case your application is even that super-super-sensitive, that
the benefit from core-dump-analysis would still be eliminated
by possible data leackage via cores, then you should e.g. use
the kernel to store your sensitive material for you (see keyrings)
or when even that is too risky, use the appropriate TEMPEST-
and tamper-resistent HSM (maybe even one that has to be unlocked
by multiple actors using their HSMs at the same time, a similar
procedure like firing nukes in movies - Thales explained such
a design to me once). Of course such HSM schemes make only sense
with the appropriate physical protection, either by prohibiting
access or burning down your own place before your would let someone
leave with your HSM.


And finally, looking at the incomplete list of mitigations and
knowing what they imply on usability, management and debugging
of your software, decide if it is really worth taking them (damage
costs lower than mitigation costs).

hd


