X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1741" "Tuesday" "1" "January" "2019" "12:41:10" "+0000" "Simon McVittie" "smcv@debian.org" "<20190101124110.GA15804@espresso.pseudorandom.co.uk>" "38" "Re: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Cc:" nil nil "1" "2019010112:41:10" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        smcv@debian. Jan  1   38/1741  " thread-indent "\"Re: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<nn5zv8prfe.fsf@armitage.lysator.liu.se>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<nn5zv8prfe.fsf@armitage.lysator.liu.se>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1261 invoked by uid 550); 1 Jan 2019 12:41:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1243 invoked from network); 1 Jan 2019 12:41:35 -0000
Message-ID: <20190101124110.GA15804@espresso.pseudorandom.co.uk>
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
 <nn5zv8prfe.fsf@armitage.lysator.liu.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <nn5zv8prfe.fsf@armitage.lysator.liu.se>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Jeffrey Walton <noloader@gmail.com>, gmp-bugs@gmplib.org
Date: Tue, 1 Jan 2019 12:41:10 +0000
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Asserts considered harmful (or GMP spills its
 sensitive information)
To: oss-security@lists.openwall.com

On Tue, 01 Jan 2019 at 12:07:17 +0100, Niels Möller wrote:
> A security sensitive application can easily disable generation of core
> files, using setrlimit (on the linux kernel, prctl may also be useful).

If you want to avoid core dumps being recorded on Linux in the presence of
system configuration that writes them into a pipe to a command instead
of to a core file (systemd-coredump, corekeeper, abrt, apport etc.,
using a string starting with | in /proc/sys/kernel/core_pattern), then
you need to use prctl PR_SET_DUMPABLE. Setting RLIMIT_CORE to 0 prevents
the kernel from creating core dump files itself, but does not prevent
it from writing them to pipes.

It might be helpful to look at a recent version of dbus, which has a
reasonably portable implementation of "don't write core dumps", in a unit
test helper program that deliberately segfaults (so that the actual unit
test can assert that a segfaulting child process is handled correctly).
This was implemented to avoid core-collecting programs wasting time and
I/O bandwidth during unit test runs, rather than to avoid information
leaks, but the procedure is the same.

Some processes (including those that are setuid or setgid, I think?) are
automatically undumpable.

> And besides, most systems have zero ulimit -c as the system default
> these days

As noted above, this does not prevent writing the cores to pipes
(precisely to make crash-recording services like systemd-coredump more
useful).

> to get proper core dumps, including
> disabling the core dump collection "services" you mention

Crash-recording services should be able to provide a way to extract
the core from wherever they saved it, for example `coredumpctl -o... dump`
with systemd-coredump.

    smcv
