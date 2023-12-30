Received: (qmail 9538 invoked by uid 550); 30 Dec 2023 21:15:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9298 invoked from network); 30 Dec 2023 21:14:54 -0000
Date: Sat, 30 Dec 2023 22:15:49 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Simon Josefsson <simon@josefsson.org>,
	Jeffrey Bencteux <jeffbencteux@gmail.com>
Message-ID: <20231230211549.GA18597@openwall.com>
References: <20231230162600.GA14382@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231230162600.GA14382@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] inetutils ftpd, rcp, rlogin, rsh, rshd, uucpd: Avoid potential privilege escalations by checking set*id() return values

On Sat, Dec 30, 2023 at 05:26:00PM +0100, Solar Designer wrote:
> > * Noteworthy changes in release 2.5 (2023-12-29) [stable]
> > 
> > ** ftpd, rcp, rlogin, rsh, rshd, uucpd
> > 
> > *** Avoid potential privilege escalations by checking set*id() return values.
> > Reported by Jeffrey Bencteux in
> > <https://lists.gnu.org/archive/html/bug-inetutils/2023-07/msg00000.html>.

This is CVE-2023-40303.

> notably Debian (and Ubuntu) does
> package inetutils (and has already updated to 2.5 in unstable)

Debian also patched the issues in LTS:

https://lists.debian.org/debian-lts-announce/2023/10/msg00013.html

> Jeffrey's initial message also says:
> 
> > There are cases where set*id() functions can fail, for example multiple
> > calls to the clone() function can cause setuid() to fail when the user
> > process limit is reached.
> 
> Linux kernel hardening patches have been mitigating this for some years,
> and a mitigation (postponing RLIMIT_NPROC enforcement to execve(2) time,
> if ever) got into upstream Linux, as I recall after this thread in 2011:
> 
> https://www.openwall.com/lists/kernel-hardening/2011/06/12/9
> 
> I hope on current Linux this dangerous failure mode is not triggerable,
> but indeed programs must not rely on that, and I think inetutils isn't
> Linux-only.

There's still the supposedly-cannot-fail memory allocation on setuid(),
where it contains a supposedly-unreachable error return code.  Back
then, I failed to convince the maintainers to replace that code with
crashing the process, which would be a safer action to take on such
supposedly-impossible conditions if they ever do become possible.

Also, LSMs can alter the behavior of setuid(), including adding new
reasons why it can fail.

> Also, initgroups() may still fail, and omitting it or setgroups() will
> leave supplementary groups potentially inherited by a service intact.

Alexander
