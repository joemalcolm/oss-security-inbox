X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2459" "Friday" "21" "June" "2019" "17:44:33" "+0100" "Simon McVittie" "smcv@debian.org" "<20190621164433.GA13111@espresso.pseudorandom.co.uk>" "44" "Re: [oss-security] Re: Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062116:44:33" "[oss-security] Re: Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        smcv@debian. Jun 21   44/2459  " thread-indent "\"Re: [oss-security] Re: Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<20190621150836.ieiciui3n6vrd5wb@matica.foolinux.mooo.com>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190615155740.GA2960@kroah.com>" "<02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>" "<20190621095616.GA5186@espresso.pseudorandom.co.uk>" "<20190621150836.ieiciui3n6vrd5wb@matica.foolinux.mooo.com>") nil nil nil nil nil nil nil "Re: [oss-security] Re: Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16294 invoked by uid 550); 21 Jun 2019 16:44:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16275 invoked from network); 21 Jun 2019 16:44:49 -0000
Message-ID: <20190621164433.GA13111@espresso.pseudorandom.co.uk>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190615155740.GA2960@kroah.com>
 <02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>
 <20190621095616.GA5186@espresso.pseudorandom.co.uk>
 <20190621150836.ieiciui3n6vrd5wb@matica.foolinux.mooo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190621150836.ieiciui3n6vrd5wb@matica.foolinux.mooo.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Fri, 21 Jun 2019 17:44:33 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

On Fri, 21 Jun 2019 at 08:08:36 -0700, Ian Zimmerman wrote:
> On 2019-06-21 10:57, Simon McVittie wrote:
> > If upstream projects have a stable branch that is genuinely stable
> > and bugfix-only to minimize the risk of regressions
> 
> Doesn't this simply shift the work of backporting ("crazy and bound to
> always fail in the end") from the distro maintainer to the upstream
> stable branch maintainer?

Yes. If we want fixes with minimal regression risk then someone has to
do the work, and it might as well be someone who understands the upstream
codebase and is releasing something that regression-averse redistributors
can share, rather than each redistributor reinventing essentially the same
backports. It isn't coincidence that the stable branches in dbus closely
match what I need as a downstream maintainer, and I'd be delighted to
see more downstream maintainers get involved upstream.

I agree that backporting will always fail in the end, but to quote Keynes,
"in the long run, we are all dead". Backporting indefinitely can't work,
because eventually the backports either become infeasible, or have a
greater regression risk than upgrading to the latest version; but if
backports can remain feasible and lower-risk than the latest upstream
development release for the support lifetime of a downstream stable
release, or even for a fraction of the support lifetime of a downstream,
then that finite lifetime has still provided value.

Sure, some projects are so fast-moving that backports quickly become
infeasible, but a lot of projects just aren't that fast (perhaps despite
their maintainers' best intentions). Similarly, I'm sure there are some
projects that have such good QA that the latest feature release always
has a lower regression risk than backporting fixes, but I'm not sure
that I could name one.

A few high-profile projects like the Linux kernel are blessed with
large numbers of developers, a strict review process, lots of QA and
enough early-adopter users that release candidates actually get tested;
but despite all that, even the Linux kernel suffers from regressions
and destabilizing changes, and even the Linux kernel has backport-based
stable-branches for downstreams' benefit (two tiers of stable-branches,
even). For those of us who are trying to keep smaller projects afloat
with resources that add up to a fraction of a full-time developer,
trying to do better than the Linux kernel doesn't seem viable.

    smcv
