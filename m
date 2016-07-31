X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4824" "Sunday" "31" "July" "2016" "12:24:48" "-0500" "Joshua J. Drake" "oss-security-dbduaf@qoop.org" "<20160731172448.GA3127@fear.qoop.org>" "105" "Re: [oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)" "^Cc:" nil nil "7" "2016073117:24:48" "[oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)" (number mark "        oss-security Jul 31  105/4824  " thread-indent "\"Re: [oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)\"\n") "<20160730102709.25d91e44@pc1>" ("<20160727013203.C008FABC4E2@smtpvmsrv1.mitre.org>" "<abec12ab-d311-cbe6-f256-5c9df0af2008@gmail.com>" "<20160729115843.386c87dc@pc1>" "<83a44672-b86b-08c3-689e-f55675c5f6b7@gmail.com>" "<20160730102709.25d91e44@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17476 invoked by uid 550); 31 Jul 2016 17:29:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16328 invoked from network); 31 Jul 2016 17:28:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=qoop.org;
	 s=default; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Resent-To:Resent-Message-ID:Resent-Date:Resent-From:
	Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Sender:Resent-Cc:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=qdACBl7/XUeEp12xpIiiQ8Ue2/r/zKfvwQamPIGp4Oo=; b=eQF4zLArL4cmtVn0oCZYQT4QeV
	Jbh1KlgRMTdrx0d12ANZTm7A1qQTqOprMrJoFU1/HCxJDSL5Bo1CPykEvbv2EOxCEFWFlJGNT1td9
	SZnbfT2DEktA2E+d2wEOr4mtk7m4hICzJadyyxcL4ehIfGW5utGTpYKCweJH4I+jwJYpCFjc1rKbr
	Rs01U8DS4pLUxRjLRjrokT+y+3+qF0GIiHi2jHxxobwUDPaFtQ3MhiQ4+T95IRS53gLDMenbbpoWM
	ud3EV9Wdv1aE3RriWZ0N7bb7gBgXevGcsgg4XpOVDhKovzz+6rgdBjdSOw9n8mN8QoI5h1/Qejv8P
	SQ2Nhmbw==;
Message-ID: <20160731172448.GA3127@fear.qoop.org>
References: <20160727013203.C008FABC4E2@smtpvmsrv1.mitre.org>
 <abec12ab-d311-cbe6-f256-5c9df0af2008@gmail.com>
 <20160729115843.386c87dc@pc1>
 <83a44672-b86b-08c3-689e-f55675c5f6b7@gmail.com>
 <20160730102709.25d91e44@pc1>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline
In-Reply-To: <20160730102709.25d91e44@pc1>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - secure15.gigenet.com
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - qoop.org
X-Get-Message-Sender-Via: secure15.gigenet.com: authenticated_id: jdrake/from_h
X-Authenticated-Sender: secure15.gigenet.com: oss-security-dbduaf@qoop.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: lazytyped <lazytyped@gmail.com>
Date: Sun, 31 Jul 2016 12:24:48 -0500
From: "Joshua J. Drake" <oss-security-dbduaf@qoop.org>
Reply-To: oss-security@lists.openwall.com
Resent-From: "Joshua J. Drake" <jdrake@qoop.org>
Resent-Date: Sun, 31 Jul 2016 12:27:48 -0500
Resent-Message-ID: <20160731172748.GA3773@fear.qoop.org>
Resent-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Use after free in my_login() function of
 DBD::mysql (Perl module)
To: oss-security@lists.openwall.com

--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Certainly buffer overread and related errors can sometimes be security
vulnerabilities. The biggest question that differentiates those cases from
non-security bugs (aka "lame bugs") is whether or not the the out-of-bounds
data can actually be accessed by an attacker (directly or otherwise).If the
data is read (and thus would cause an ASAN failure) then it's conceivable t=
hat
nothing is actually done with the out of bound data at all... Writes are
generally easier to make assumptions about.

In the future, Maybe it would help to partner with someone more experienced=
 to
determine severity before public disclosure. Also, asking the list for its
collective advice might also prove fruitful (instead of asking for a CVE
straight away).

Don't be afraid to be more explicit. If you don't know -- just say "I don't
know if attackers can get anything out of this, but similar bugs like" .. <=
real quote>"use
after free's can be serious and potentially lead to malfunction and security
issues."</real quote> "Do you see any potential for abuse by attackers?"A

Also, realize that this type of inquiry will help both you and the developer
learn about security bugs and in general will lead to improved awareness to=
 all
parties that happen across your communications.

Again, just my $0.02 when I read this thread.

Joshua

On Sat, Jul 30, 2016 at 10:27:09AM -0400, Hanno B=F6ck wrote:
> On Fri, 29 Jul 2016 20:42:03 -0700
> lazytyped <lazytyped@gmail.com> wrote:
>=20
> > Well, AddressSanitizer should have told you whether the access is a
> > read access (as I suspect) or a write access. A bit of code
> > inspection (or follow up from the code maintainer) should add to the
> > picture.
>=20
> It's my (maybe poor / limited) understanding that most use after free
> bugs are actually reads, but still can lead to code execution, e.g. if
> the read includes function pointers. This is probably not the case in
> this example (but I previously had an example where I thought it's not
> exploitable for similar reasons, and later got told by people who
> understand this stuff much better that they disagree).
>=20
> > It would be great if we could get a bit more triaging by the owner of
> > the code or the submitter before declaring the bug one thing or the
> > other (especially in these days of projects like yours that bring in
> > a lot of reports -- and don't get me wrong, this is a very valuable
> > effort).
>=20
> I understand your wish here, but I am afraid it doesn't match up well
> with the reality we are in.
>=20
> I had similar discussions before, but I think there is a very obvious
> problem here: The tools we use to find these bugs (asan+afl) are dead
> simple and there are a lot of people out there using them, finding and
> reporting bugs. The number of people with a detailed knowledge of
> memory corruption on the other hand is small.
>=20
> Generally this is a good thing, as it means more people finding bugs.
> But we have a large number of people who can use the tools to find
> these bug classes, but who aren't neccessarily able to judge the
> severity. And that definitely includes me (although I learned a lot in
> the past year, but I've been accused both in over and underplaying bugs
> in the past).
> My approach to this is that I simply try to choose my wording that it
> matches what I know and if I can't say anything reasonable about
> exploitability I simply don't.
>=20
> As for CVEs, it's my impression that MITRE right now has a policy that
> they give one for almost any memory safety issue and that they don't
> require an explicit exploit scenario. E.g. my impression is that buffer
> overreads, as long as they aren't simply in a command line tool, almost
> always get CVEs.

--cNdxnHkX5QqsyA0e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIVAwUBV540YHJkGbxMIyBbAQK3TRAAlP6iUjQ85OQL+Vi2VIosDVBgmLP7UVbH
6b79kSkFTDLPZa+3BnBSBxKdXZtvo+ZkyArPMH6Z0hCq7PD7rKMhgKZd0l0CsX32
IeVfEHs/ajkRxudLGMsy8Rr4Lqfw5oNofn1W0buuBL3d0Kcjg4nuxcGCBzPwfH+N
/PWQBsZ7+dTMrjyIqQI2WIw4/OZGw8das07B7G/PTgOfIouoeSIK74BoHMRo2W0P
S4cIKSqGpocUhJMbj98gcGtLAJEYOQzSEa3OQhnxLkS9sZN4Byt7vxCuRFPfrAS/
LWZcRVOB07pjmS8w4s5M3a9dU777iOxDgqVC/ndepjK28kbXaY1s/skAyV47lwBg
igNdd3KNpKZ+0Is75X2PdNNSWIIY+7UIEaTvz9zCxA77h64wrSx6BLIF/7dzNlpy
rKZwooxRcH0wa626jS/SQGIEUDCUsujQmFyyQZh51ty/uiRZebX64pL78X6M8BsH
KH64kJHWVRFbbW0EK0NBTYQQFst1jxqIeKtt8WkhIYr4+w5xz04n7jmJrd/eLchv
E75ksXZ3MPpYkclieLxkuSaiFGPbSZOCyLJeu36EhukmCMX9osaOMmgcqZnbvBGX
k/G3TfxIijSazKjmlyWmRzQsdB9x9VdA1bfuf/i8udWbU2oJsSjj9qUbPQYIpGFB
b5cMfpeROyY=
=CGlA
-----END PGP SIGNATURE-----

--cNdxnHkX5QqsyA0e--
