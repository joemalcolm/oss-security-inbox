X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4754" "Friday" "19" "March" "2021" "15:58:25" "-0400" "Brad Spengler" "spender@grsecurity.net" nil "115" "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       spender@grse Mar 19  115/4754  " thread-indent "\"Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31803 invoked by uid 550); 19 Mar 2021 20:09:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27973 invoked from network); 19 Mar 2021 19:58:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=grsecurity.net;
	s=mail; t=1616183905;
	bh=XNKwrHA6JsTkHVqLLPyk4gWYglOORylMi0RUBwlxNTQ=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=tH66ERbR751pgczdg1+S7VoraPabt5TKZ5YahAcnm+SgkKES8F0sF6IjYS5Ycq37k
	 gt6eq91RlQDzhs6fUldFnzHcVgYL1i4BvQ6TFo7mlegMQ3u8WgQb/pIXpstvyCWlCq
	 IPXzILVvNiAqwNTpQrUkJ3sG4+CwkCmOEkyHnvtE=
Date: Fri, 19 Mar 2021 15:58:25 -0400
From: Brad Spengler <spender@grsecurity.net>
To: oss-security@lists.openwall.com
Message-ID: <20210319195825.GA28654@grsecurity.net>
References: <CAKx+4-pR3JScgA-PJFSwkAw6B8xiXYWFtVD6rEYp2wnJjyCogw@mail.gmail.com>
 <YFNCtWmsYrtYQeEJ@kroah.com>
 <YFOLo/QrlgIrFotJ@wopr>
 <YFOc8bhUAKOgjfVS@sashalap>
 <20210318192136.GA6178@openwall.com>
 <YFSyTOoNtyrQvrH3@sashalap>
 <20210319144311.GA22152@grsecurity.net>
 <YFTlezXaxyIRxcKN@sashalap>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline
In-Reply-To: <YFTlezXaxyIRxcKN@sashalap>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Sasha,

> I'm really not sure how to respond to this. I don't own upstream, my
> name isn't Linus, Greg, nor do I maintain a major subsystem. I don't
> have any control over how upstream commits look like.

Both you and Greg certainly have control over stable kernel commit
messages (it's the same ability you use to add the upstream commit ID).
Greg at least receives private notification of security vulnerabilities
through security@kernel.org.  I've privately received several complaints
from different researchers about what was lacking from commit messages
for vulnerabilities they reported there.

> Can you please stop complaining about Greg's mails as if I was the one
> who wrote them? I'm not his alter-ego, twin, or so on. If you have a
> concern with what he writes take it up with him.

I wanted to avoid having to send multiple mails to the mailing list
and cluttering it up even more (which is now unavoidable).

But since I'm here, I'll also address an assertion Greg repeated today:
https://seclists.org/oss-sec/2021/q1/242
that RH had incorrectly credited the CVE, after it had been already
pointed out here:
https://seclists.org/oss-sec/2021/q1/225
that the reporter had found a flaw in the backport of the original
fix that had happened years ago.  This is not improper acknowledgement.
If Greg wanted to ensure proper acknowledgement of a CVE for the *original*
issue, he could have done that back in 2018 when he committed the
original fix:

commit 3d63b7e4ae0dc5e02d28ddd2fa1f945defc68d81
Author:     Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
AuthorDate: Sat May 26 09:53:13 2018 +0900
Commit:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CommitDate: Thu Jun 28 21:30:16 2018 +0900

    n_tty: Fix stall at n_tty_receive_char_special().

I'm in agreement that since the flaw was in the backport, it should have
been attributed to RHEL, BTW.

> Great, let's work together on making it better, but it's been following
> the same pattern for quite a while now.

I think both you and Greg are exaggerating the level of "extra work" this
temporary blip creates for you -- with the exception of the RH backport
issue, it was not difficult at all for me to determine what issue was
being discussed, without even having to plug the CVEs into bugzilla.redhat.=
com
which produces:
https://bugzilla.redhat.com/show_bug.cgi?id=3DCVE-2020-35519
https://bugzilla.redhat.com/show_bug.cgi?id=3DCVE-2021-3428
(though these are equally light on information)

Greg's annoyances on this list have been going on for far longer than these
recent advisories, and are not specific even to RH advisories.  For instanc=
e,
in the middle of his RH tirade, he posted this useless email about another
set of issues:
https://seclists.org/oss-sec/2021/q1/217
It's not the concern of the list why the reporter did or did not provide the
fixes upstream (at least two of which were already upstreamed).

We do not need more emails from Greg like:
https://seclists.org/oss-sec/2021/q1/21
"I still do not understand why you report issues that are fixed over a year=
 ago"
"Who does this help out"

https://seclists.org/oss-sec/2021/q1/100
"5.1.0 is _VERY_ old"

https://seclists.org/oss-sec/2021/q1/233
"Is that a mistake in your kernel development process that should be
resolved?"

They are as useless to this list as his boilerplate "all users must upgrade"
stable announcements every 3 days.

I'm hopeful that RH's advisories will return to their previous level of
information (not "start" as Greg characterized it).  What can be said of
upstream's policies that everyone's been putting up with for ~16 years now?

Thanks,
-Brad

--VbJkn9YxBvnuCH5J
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJgVQJaAAoJEETRwPglJf5Jf3wP/04HGruor9jPpiHJUCDq4goJ
ctR22q2/VZzfWV16SQli9t0/ovr5hDjRyLU4RfYk1mIwF/tEdHMWJt6gReKu44ME
K7rODJTWgtry6x8ae7KVXqf711qATeFihzFKWO8yunNdILGxB5ot4+HaHjKLgxUj
BFyGul+cUtQBe6IHxTHxDp3dfs+CLAj5vi4fK/jbvgSOPpJe6rzWMz0Eq3UfcdHh
/EKEv1SzBBodJL8Us/zmYAhCP3+YHPtLVhYOzNBU7QovBdCHlpn7IOm4uQqTRUCr
xOK83hsXL3uLKB82N+ZUv73mlLlHWo6+9MIlSRT0LiRPNJQy0WMAfF1k2W4z3MCz
sO29fiYm/IOk6Ml89pZDaGPgveklGGf4TFqaDnLc11W91SOBbhJs0AQCWhkLe7a2
hlU/Y1ZH6rf5q4oCP/xc4y9vlkSMyCWK4tvulTMzqmkYG6VMK8rVA2hVGc10iQVx
HlF06nm99md+pIG4rDPYfHYA/J281Nn6WPl7Ca4MCBNL+jLoIl8fdfTrkHUeUGTt
JMQuCbPIjTARxhR5/49GUz+JxcV/Eel6fgAY4t9LML8PLeHCHOdKMNvo89KVwZFG
1HLP6JW3T3EyP1CE96ucnjpYbQMHsTtxZI3NdXgjWh353850pq3YS4fSABxbX164
cIjHcXzCYT3ongAfUvzg
=s0Fo
-----END PGP SIGNATURE-----

--VbJkn9YxBvnuCH5J--
