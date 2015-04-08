X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2682" "Tuesday" "7" "April" "2015" "22:44:43" "-0400" "David A. Wheeler" "dwheeler@dwheeler.com" "<E1Yffyt-0004J8-1a@rmm6prod02.runbox.com>" "56" "Re: [oss-security] Hanno Boeck found Heartbleed using afl + ASan!" nil nil nil "4" "2015040802:44:43" "[oss-security] Hanno Boeck found Heartbleed using afl + ASan!" (number mark "        dwheeler@dwh Apr  7   56/2682  " thread-indent "\"Re: [oss-security] Hanno Boeck found Heartbleed using afl + ASan!\"\n") "<CALx_OUCyBQabw9Z7RiP7nLfzzJy0zF-5qKUXyzEFHTPUVRab+g@mail.gmail.com>" ("<CALx_OUCyBQabw9Z7RiP7nLfzzJy0zF-5qKUXyzEFHTPUVRab+g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1478 invoked by uid 550); 8 Apr 2015 02:44:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1407 invoked from network); 8 Apr 2015 02:44:54 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Mailer: RMM6
In-Reply-To: <CALx_OUCyBQabw9Z7RiP7nLfzzJy0zF-5qKUXyzEFHTPUVRab+g@mail.gmail.com>
Message-Id: <E1Yffyt-0004J8-1a@rmm6prod02.runbox.com>
Date: Tue, 07 Apr 2015 22:44:43 -0400 (EDT)
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Hanno Boeck found Heartbleed using afl + ASan!
To: "oss-security" <oss-security@lists.openwall.com>

On Tue, 7 Apr 2015 18:58:40 -0700, Michal Zalewski <lcamtuf@coredump.cx> wr=
ote:
> I think that cases such as Coverity are more of an exception than a
> rule. Yup, they get credit for a steady trickle of issues (mostly
> through their self-service offering to developers, rather than any
> in-house analysis); but if you consider the size of the commercial and
> research "market" for static analysis and symbolic execution tools,
> it's not a common practice. Coverity and the singular case of
> Heartbleed aside, the mark left by others isn't as easy to find.

HP/Fortify and Coverity are two of the most common
source code weakness analyzers, and both *do* intentionally
support OSS developers by giving the developers gratis access to their tool=
s.
There are probably others. I think it's a "common enough" practice.

True, they're primarily provided as self-service for use by developers
during development.  But that's how these tools are often used.
There's nothing wrong with self-help, and that doesn't reduce the tool's ut=
ility.
Providing access to a tool (that would otherwise be unavailable) is still a=
 contribution.

Besides, I think if someone makes a tool that really helps find vulnerabili=
ties, we
should give the toolmaker credit for that.  Perhaps you can agree ;-).

This typical usage also explains why the mark "isn't as easy to find".
The vulnerabilities tend to be detected and fixed *before* the official rel=
ease.
This is exactly how it *should* be for OSS that many people depend on.
Typically an OSS project makes its source code available for review
(say, via a public repo managed by a version control system), then
people publicly examine it using tools and manual review and localized test=
s,
and *then* the software is officially released (as a tarball or whatever).
Vulnerabilities that slip through that process may get more publicity,
but we don't *want* many to slip through.

> so to be clear, I'm not
> saying it provides no value. I'm just trying to be mindful of the fact
> that I wouldn't give a proprietary tool an easy pass in similar
> circumstances, so I don't want to give one to my own tool =3D)

Sure.  The only way to really know how effective this will be
is to apply this approach on more network protocols, and more thoroughly.
In practice that means it needs to be easier to use these tools on network =
protocols.

Hanno's post is good evidence, though, that it's worth doing. There's a lot=
 of
evidence that afl works on files, and that ASan helps find vulnerabilities;
it seems reasonable that the combination (and similar) would also find
vulnerabilities in network protocol implementations.

--- David A. Wheeler
