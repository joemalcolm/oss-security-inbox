Received: (qmail 6138 invoked by uid 550); 26 Aug 2023 02:31:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6117 invoked from network); 26 Aug 2023 02:31:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1693017092;
	bh=GEt4OMCiDEFFRez65bTXxWjx/sdAQnjVWCIGSwnccGc=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=gGMEUI3mGqErDISGiPgf58zBiyIPfMkoG9w2eshWrimwcaLZcxSvOjI2Q7AJ2Komp
	 +y/oArrqVl6N7CjdqCzG7s5HP/YNmm5x31cqzle7DkbY6nBdyKIRaE2j61riynmuja
	 VxA9rHPJ4ixRhetG3kSo1l/KCVMiXjOmrg/nZXGxta//9b/yQgGTB6fjpiAti7V3Tl
	 VjMxJKgWYN+U1pVb4u94IlRO7Xz2ei9Kb0LOCLD33PZ40HyxVpXz9ZZkcOow2gyk5t
	 dd/Y4D74wvPGcduaTfVJaoLNGLVQsD1YBYJSQCD36+4o62trfqFnY/0kXxZLFhh3nX
	 86MZWziA/JRIQ==
Date: Sat, 26 Aug 2023 02:31:29 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20230826023129.GA2930052@millbarge>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20230825222359.GA10424@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PNTmBPCT7hxwcZjr"
Content-Disposition: inline
In-Reply-To: <20230825222359.GA10424@openwall.com>
Subject: Re: [oss-security] linux-distros list policy and Linux kernel, again

--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Aug 26, 2023 at 12:23:59AM +0200, Solar Designer wrote:
> I'd appreciate any well-reasoned votes and constructive suggestions.
> Maybe there are good ideas that didn't cross my mind yet.

I think we'd all be better served to wait until next year before we try to
make changes. Some additional space would probably do everyone some good.

For my own part, I was frustrated getting a dozen emails about the policy
and deadlines and folks saying "we don't even have a fix yet please back
off" etc over and over and over again. There were usually more emails
about the policy than about the issue. I can't speak for the others but
perhaps if we, as a group, were less vocal about the policies on every
single bug report it might have been easier to work together.

For every security issue in the kernel that gets a CVE and The Whole
Process, I'm sure there's five or ten more that go unnoticed by the
wider world. Trying to do The Security Process on the ones that come to
light feels silly when there's far more issues that may allow privilege
escalation that never get the theater treatment. While we can (and should)
try to bring more of these to light we might also reduce the friction on
the ones that do come to light.

I was also annoyed with the endless stream of "I found a security bug in
the kernel, give me a CVE!" that are a mangled syzkaller reproducer and
no work to diagnose the problem or propose a patch. If every syzkaller
issue received a CVE automatically, we'd immediately remove the most
noisome posts.

Here's what I think would help the most, if we in the future try to get
copied on reports "like the old days":

- No replies from distros@ subscribers about list policies. None. distros@
  subscribers can and should feel free to engage about the bug, about
  testing, about concerns, etc. But none about the list policies.

  We all know that the kernel developers don't just sit on reports for
  six months before they're forced to take action by public posts. They
  want fixes in a timely fashion and they're doing the work to deliver
  fixes in a timely fashion.

  They publish their patches in public very soon after the work is
  complete which addresses your concern about the inboxes and mail
  servers being a jackpot of private vulnerabilities.

  We shouldn't harangue them about the policies.

- Make it clear to all that distributions can apply fixes to their kernels
  as soon as patches are in publicly visible trees or mail lists. Trying
  to coordinate dates didn't work well: The kernel people don't want
  to hold off on publishing fixes for an arbitrary reason. The distro
  people have their own cycles for integrating patches, performing quality
  control, preferences to not publish updates on important holidays or
  weekends, etc.

  Let's just let the kernel developers work on fixes on their own schedule
  and whenever they go public, just go with it.

  We shouldn't try to coordinate dates.

- Ask Red Hat's CNA to consider setting up an automatic CVE assignment
  process for syzkaller issues. (Red Hat's CNA is now serving as a Root
  CNA for FOSS issues in general, so it feels like a plausible place to
  put this process. Google runs syzkaller and has four CNAs, perhaps
  one of them would be a better fit. Maybe the Linux Foundation could
  run a CNA for this purpose. I'm not picky.)

  We shouldn't indulge the very-low-effort-researchers who aren't putting
  in much effort but trying to get CVEs.

Thanks

--PNTmBPCT7hxwcZjr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmTpY/wACgkQ8yFyWZ2N
LpdEpwgAtyXU5MCii6dpUxGzMhiRR8f1d0LLZUbwfehGWU078eTvJNVEHyx25d/a
yBiOVpo/a9GHNDtWaJtHEUzLkww3tFDhOdkALNGGxYv7wUWWIG44Yiglrh1syBZH
KHk/gtfHQuIfIUYlf/3h4vabZMsO7RGFftrOWR2xMz1ul3iZOr0TZe3XLZgvnMfY
3hogYNDpq/j0y6fxNFKDaZYwHaM+IzZ3/cZCmAZlGRw+5yvFNvi3rUxjOHvITsZ6
VwOJGb+lAB5bdhbh6N9+Hbsyldvy32Mg19mLiZfALmi2W/ZOCvNpaplof9zxhQnz
IfJLMJRdoJ/+ILhALrB94wOa13ynxg==
=d5L6
-----END PGP SIGNATURE-----

--PNTmBPCT7hxwcZjr--
