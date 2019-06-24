X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1831" "Monday" "24" "June" "2019" "20:30:48" "+0100" "Simon McVittie" "smcv@debian.org" "<20190624193048.GA8039@espresso.pseudorandom.co.uk>" "33" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062419:30:48" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        smcv@debian. Jun 24   33/1831  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<E1hfSKS-00015J-V5@rmmprod07.runbox>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>" "<E1hfSKS-00015J-V5@rmmprod07.runbox>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21815 invoked by uid 550); 24 Jun 2019 19:31:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21796 invoked from network); 24 Jun 2019 19:31:08 -0000
Message-ID: <20190624193048.GA8039@espresso.pseudorandom.co.uk>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190617113203.GH15432@suse.de>
 <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>
 <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
 <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>
 <E1hfSKS-00015J-V5@rmmprod07.runbox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1hfSKS-00015J-V5@rmmprod07.runbox>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Mon, 24 Jun 2019 20:30:48 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

On Mon, 24 Jun 2019 at 13:00:28 -0400, David A. Wheeler wrote:
> In particular, many organizations have a rapid upgrade process
> if some software version has a CVE, and a slow process otherwise.
> (There are things that need doing besides upgrading software.)
> If a particular version of software has a serious vulnerability, it needs at least one
> of the most serious vulnerabilities assigned a CVE so that people will upgrade
> it more rapidly.

I think you might have also been implying this, but just to say it
explicitly: if a particular version of software has lots of fixed bugs,
but they are not exploitable vulnerabilities in practice, then it would
be counterproductive to try to fast-track upgrades (trick people into
using their rapid upgrade process) by assigning CVE IDs to those bugs.

Fast-tracking upgrades of packages with CVE fixes is only going to happen
as long as it's still a rational strategy for balancing vulnerability
exposure against the risk of regressions. If lots of CVE IDs get assigned
to issues that aren't exploitable in the real world, then that will teach
consumers of software that they can safely ignore "most" CVEs, which
will tend to result in some issues that *are* exploitable being missed
and not fixed on deployed systems. Everyone loses (except attackers).

This is a particularly interesting trade-off for denial-of-service
vulnerabilities, because regressions caused by flawed fixes for
vulnerabilities often cause denial of service. (This is often a crash,
but not necessarily - addressing local DoS vulnerability CVE-2014-3637
in dbus led to some machines not booting reliably, denying service to
rather more people than the original vulnerability.)

In the worst case, a flawed fix for a vulnerability might contain a
regression that is a more serious vulnerability.

    smcv
