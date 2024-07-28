Received: (qmail 25654 invoked by uid 550); 28 Jul 2024 18:50:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19583 invoked from network); 28 Jul 2024 18:22:33 -0000
Date: Sun, 28 Jul 2024 20:22:25 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240728182225.GA19232@openwall.com>
References: <20240701083838.GA12787@localhost.localdomain> <20240703112525.GA8740@localhost.localdomain>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240703112525.GA8740@localhost.localdomain>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2024-6387: RCE in OpenSSH's server, on glibc-based Linux systems

On Wed, Jul 03, 2024 at 11:26:54AM +0000, Qualys Security Advisory wrote:
> Many people have asked us about an alleged proof of concept named
> "7etsuo-regreSSHion.c": it is not a proof of concept, it is essentially
> empty code (it might even be dangerous to compile and execute, we have
> not checked). It is not just the shellcode that is missing, everything
> else is missing too: the key-exchange code does nothing, the public-key
> code does nothing useful, etc etc.
> 
> It looks great but it does nothing. A working proof of concept for this
> vulnerability will be much longer and complex, and will take much more
> time to write than this.

It's been almost a month, but apparently there still isn't a public
exploit.  7etsuo's unfinished code was forked to lots of GitHub repos -
some acknowledge it's a fork, most don't, a few claim it's their own.
Most made no changes at all, a few added non-English comments, a few
added Python wrappers (it's quite ridiculous to have wrappers for
non-working code), none brought it significantly closer to completion.

Perhaps most interestingly, someone tried to lure people into
downloading and perhaps running Linux malware apparently (if I
understood and recall some tweet threads right) by scanning the Internet
for SSH servers from an IP address that also had a web server running.
The web server had a directory listing with a variation of 7etsuo's
code to make this look real, along with malware binaries.  Targeted
advertising, right?  Here's a lengthy blog post on this incident:

The Wild West of Proof of Concept Exploit Code (PoC)
By Vlad O & Daniel C

https://santandersecurityresearch.github.io/blog/sshing_the_masses.html

> On closer examination it quickly became evident that the source code of
> the exploit itself was a decoy designed as a lure to infect the machine
> on which it was executed. This attack chain primary component was
> identified as a heavily modified version of a relatively obscure Golang,
> multi-platform Command and Control (C2) framework The Remote Access
> Trojan (RAT) called Chaos (https://github.com/tiagorlampert/CHAOS).

Alexander
