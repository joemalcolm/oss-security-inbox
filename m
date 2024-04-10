Received: (qmail 16278 invoked by uid 550); 10 Apr 2024 19:42:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31829 invoked from network); 10 Apr 2024 18:20:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712773196;
	bh=bpGqlaU3UqYgxJiUSb3o5ywzYu6XhoWA/yIoxQ7pXSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SESGDpvjhHcpDXoiYAgN25JIx/VdJMHaTNF4bndEGA9Gcoox6m8jCMDlYqT7ANyPY
	 FC863TDG8gYJMOPXnbPZUuOJHIF/CmQxm8gG9HQwgPRiu1ORmtyJAIeUkXONKhR3gq
	 EeALULMrG4xvpbm2s9uAYHFGE0f4i1Apd7YxUtO3isM0MN+E8rNmfRPzQnSnNYDBMH
	 MZpNwVSyWIhBjdsNCOV6s+adPDXp/rLLLbySUoXUgdxLSlz1JbJSaiIi5JtALqx5ER
	 PvRRlGb1DnEcdVRq/W+NjSdLz+9XLlauSfZRNyWjZsZPWH6Lpjcl/5yB1CXc/nejMT
	 J/r+72vssWDiA==
Date: Wed, 10 Apr 2024 20:19:46 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joey Hess <id@joeyh.name>, Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, Sam James <sam@gentoo.org>,
	Jonathan Nieder <jrnieder@gmail.com>,
	Andres Freund <andres@anarazel.de>,
	Lasse Collin <lasse.collin@tukaani.org>, xz@tukaani.org
Message-ID: <ZhbYSJXGt-HpcGbf@debian>
References: <ZhYEpAFolwefRv7X@debian>
 <Zha6C3RExPyp8iBd@kitenet.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/qvT/kdUHCBI1w//"
Content-Disposition: inline
In-Reply-To: <Zha6C3RExPyp8iBd@kitenet.net>
Subject: [oss-security] Re: Analysis on who is Jia Tan, and who he could work for, reading
 xz.git

--/qvT/kdUHCBI1w//
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Apr 2024 20:19:46 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joey Hess <id@joeyh.name>, Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, Sam James <sam@gentoo.org>,
	Jonathan Nieder <jrnieder@gmail.com>,
	Andres Freund <andres@anarazel.de>,
	Lasse Collin <lasse.collin@tukaani.org>, xz@tukaani.org
Subject: Re: Analysis on who is Jia Tan, and who he could work for, reading
 xz.git

Hi Joey, Alexander,

On Wed, Apr 10, 2024 at 12:10:51PM -0400, Joey Hess wrote:
> Alejandro Colomar wrote:
> > I suspect those +0200 and +0300 correspond to a few times that this guy
> > would have traveled to his intelligence agency for some special work
>=20
> That's a theory. But many of the commits with author Jia Tan in those
> time zones have committer Lasse Collin, and show signs of being eg,
> git-amed patch sets which may have also been rebased. In which case
> it would make sense that these have Lasse Collin's usual timezone.

Yep, I also had the feeling that some of those might be the result of
git-am(1) (TBH, I had those feelings today, after the email had been
sent).  In principle, git-am(1) respects the author date, but if some
mails (assuming patches taken via mail) were somehow malformed, or Lasse
had something misconfigured, it might have overwritten the author date.
Maybe this helps Lasse investigate his emails, and see if this makes any
sense for him.

The CommitDate, however, is certain to be from Jia, and there are
exactly 4 commits from him with a suspicious CommitDate (+0200), in a
short and recent period of time: 2024-02-29 - 2024-03-05, part of the
most "fun" period of this thing.  It would be interesting to investigate
the mails that led to those patches being pushed, if they were discussed
publicly, since they may contain IPs and other traces.

BTW, there's more indication that shows there were several people
involved: there's a mix of timezones in this period:

	$ git log --all --since=3D2024-02-28 --until=3D2024-03-06 \
		--pretty=3Dfuller --date=3Diso \
	| grep -B1 Date: \
	| grep -A1 jia \
	| grep -v -- -- \
	| grep -v jia \
	| sed 's/......Date: //' \
	| while read d; do
		date -u --iso-8601=3Dseconds --date=3D"$d";
		echo "  %%  $d";
	done \
	| sed 'N;s/\n//' \
	| sort;
	2024-02-29T14:35:52+00:00  %%  2024-02-29 16:35:52 +0200
	2024-02-29T14:35:52+00:00  %%  2024-02-29 16:35:52 +0200
	2024-03-04T16:27:31+00:00  %%  2024-03-05 00:27:31 +0800
	2024-03-04T16:27:31+00:00  %%  2024-03-05 00:27:31 +0800
	2024-03-04T16:27:31+00:00  %%  2024-03-05 00:27:31 +0800
	2024-03-04T16:34:46+00:00  %%  2024-03-05 00:34:46 +0800
	2024-03-04T16:34:46+00:00  %%  2024-03-05 00:34:46 +0800
	2024-03-04T16:34:46+00:00  %%  2024-03-05 00:34:46 +0800
	2024-03-04T17:23:18+00:00  %%  2024-03-04 19:23:18 +0200
	2024-03-04T17:54:30+00:00  %%  2024-03-05 01:54:30 +0800
	2024-03-04T17:54:30+00:00  %%  2024-03-05 01:54:30 +0800
	2024-03-05T21:21:26+00:00  %%  2024-03-05 23:21:26 +0200

Of course, all of that can be faked, but it's a starting point.  And
even for state actors, it's hard to not make mistakes, so they likely
leaked something at some point.

>=20
> I analized that here: https://hachyderm.io/@joeyh/112193146103113070

Regarding to your question in that post:

< anyone know of a common #git workflow that would result in 4 commits
< with 2 separate authors all having one timestamp as a common commit
< timestamp and a second timestamp as a common author timestamp?

For the author dates you get them with `git commit --reuse-message`.  I
do that seldom, but I do it.  It's useful when I decide I want to reuse
a commit message (for a patch set which has repetitively stuff in the
commit message, for example, where you can --reuse-message and then
adjust).  You can find a few examples in the Linux man-pages repo.
The committer date you can get them with a rebase of the patch set.

So he reused a commit message + ammend, and then rebased at some point.
It's not unconceivable.  Here's how to reproduce it:

	alx@debian:~/tmp$ mkdir foo
	alx@debian:~/tmp$ cd foo/
	alx@debian:~/tmp/foo$ git init
	Initialized empty Git repository in /home/alx/tmp/foo/.git/
	alx@debian:~/tmp/foo$ git commit --allow-empty -m init
	[main (root-commit) dd8f3ea] init
	alx@debian:~/tmp/foo$ touch a
	alx@debian:~/tmp/foo$ git add .
	alx@debian:~/tmp/foo$ git commit -m a
	[main c92b1c1] a
	 1 file changed, 0 insertions(+), 0 deletions(-)
	 create mode 100644 a
	alx@debian:~/tmp/foo$ touch b
	alx@debian:~/tmp/foo$ git add .
	alx@debian:~/tmp/foo$ git commit -m b
	[main 511aa3c] b
	 1 file changed, 0 insertions(+), 0 deletions(-)
	 create mode 100644 b
	alx@debian:~/tmp/foo$ touch c
	alx@debian:~/tmp/foo$ git add .
	alx@debian:~/tmp/foo$ git commit --reuse-message=3DHEAD
	[main 28cd344] b
	 Date: Wed Apr 10 19:31:33 2024 +0200
	 1 file changed, 0 insertions(+), 0 deletions(-)
	 create mode 100644 c
	alx@debian:~/tmp/foo$ git commit --amend -m c
	[main 94aa6a9] c
	 Date: Wed Apr 10 19:31:33 2024 +0200
	 1 file changed, 0 insertions(+), 0 deletions(-)
	 create mode 100644 c
	alx@debian:~/tmp/foo$ git rebase -i HEAD^^^
	[detached HEAD 460b428] a
	 Date: Wed Apr 10 19:31:20 2024 +0200
	 1 file changed, 0 insertions(+), 0 deletions(-)
	 create mode 100644 a
	Successfully rebased and updated refs/heads/main.
	alx@debian:~/tmp/foo$ git log --pretty=3Dfuller
	commit 7b102f35902a5212114cd1ceb5ecf4e648c83abb (HEAD -> main)
	Author:     Alejandro Colomar <alx@kernel.org>
	AuthorDate: Wed Apr 10 19:31:33 2024 +0200
	Commit:     Alejandro Colomar <alx@kernel.org>
	CommitDate: Wed Apr 10 19:36:41 2024 +0200

	    c

	commit b28ec7f6a33eacd9dd27f6493493bc399ecff66e
	Author:     Alejandro Colomar <alx@kernel.org>
	AuthorDate: Wed Apr 10 19:31:33 2024 +0200
	Commit:     Alejandro Colomar <alx@kernel.org>
	CommitDate: Wed Apr 10 19:36:41 2024 +0200

	    b

	commit 460b42821313d48207760e79583d8fbd3f6fe3ec
	Author:     Alejandro Colomar <alx@kernel.org>
	AuthorDate: Wed Apr 10 19:31:20 2024 +0200
	Commit:     Alejandro Colomar <alx@kernel.org>
	CommitDate: Wed Apr 10 19:36:38 2024 +0200

	    a

	commit dd8f3ea6a3dc1272389e7ad5afd950b3194bdea8
	Author:     Alejandro Colomar <alx@kernel.org>
	AuthorDate: Wed Apr 10 19:30:59 2024 +0200
	Commit:     Alejandro Colomar <alx@kernel.org>
	CommitDate: Wed Apr 10 19:30:59 2024 +0200

	    init


Have a lovely day!
Alex


On Wed, Apr 10, 2024 at 06:28:13PM +0200, Solar Designer wrote:
> On Wed, Apr 10, 2024 at 05:16:52AM +0200, Alejandro Colomar wrote:
> > I've been researching xz.git to learn about this malicious actor, and
> > who he might have worked for.
>
> As a moderator, I reluctantly let this through out of respect for
> Alejandro's time and knowing that many readers will find it interesting.

Thank you.

> However:
>
> This is almost off-topic for oss-security and it risks provoking further
> speculation and potentially hatred in follow-ups.  Related analyses,
> including not only of timezones but also of commit times, were already
> posted elsewhere (e.g., a Wired story).  So let's please limit the
> follow-ups to (1) corrections of any factual errors or major omissions
> (to the extent of being misleading) there might be in Alejandro's
> postings and (2) observations that more directly help us identify or
> prevent more compromises like this (if any can be made based on this
> analysis, which I doubt).  One major omission I'd like to point out is
> that timezones can be faked - we have no reliable way to know which of
> these, if any, actually correspond to where Jia Tan was.
>
> Note that other recent threads in here about search for code patterns
> similar to Jia Tan's and even for PGP keys similar to Jia Tan's are more
> relevant to oss-security, because they're aimed to uncover potential
> related backdoor code in other projects.  In contrast, identifying who
> Jia Tan is or what country/ies they're from doesn't obviously help.  At
> best, it may give us guesses on where the presumed targets are, but then
> what?  We need to protect the whole ecosystem regardless of who/where
> the current attackers are, and we need to develop means to detect such
> attacks everywhere, not only at currently likely targets.


P.S.:  While the first part of this email is within "corrections of any
factual errors or major omissions", I acknowledge that this last part
might be getting even more off-topic.  Since I guess it's short and will
have no replies, I included it.  Sorry.

P.S.2:  I didn't find the other similar investigations in other sites
until today.  There's so much stuff about this that it's hard to find it
all.  Sorry for duplication.  Hopefully, this might contain some new
idea that might help someone.  Sorrt again.  :)

P.S.3:  I hope nobody takes this incident as an excuse to hate a group
of people.  This is a thing about states being evil, and there are
powerful states of all inclinations that do evil stuff.  And even if it
were just an individual, the same can be said of individuals.  I don't
intend this thread to be used for increasing hatred; instead I did it
for learning about how this has happened, and what kinds of mistakes and
patterns of mistakes can authors of this and similar attacks have
forgotten to check, which could be useful to detect similar attacks in
other projects, if similar git history checks are done in other repos.

> P.S. Let's also not spam distro security teams with this (CC's dropped).
> I'm sure they don't want tickets auto-created for such analyses, like
> they would for vulnerability reports.  And I certainly don't want to
> spend time removing more ticket auto-replies from our moderation queue.

Ok.


--=20
<https://www.alejandro-colomar.es/>

--/qvT/kdUHCBI1w//
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYW2EIACgkQnowa+77/
2zJkvA//bmYxe4L4XwI27R8Oa2yMBznA7iGpOsOhhx8RIrLZcfxbJOzFrfE2BGMo
83X2E8HsEo4ZWYeooMcw9SdXI95nAyLHaRU5j86DBxnbEP+4rtwFXJpsGKZBQv1E
gr5/tJYn4HGPmoS2hA3WOoCE2+J2VSBYZmglq1jDg2QOVCxN6stofd6fHhn9IqJ7
R8aOjb3SHdPC3e44PP2HiBDAwojrX3VNgFYfz9EvsfXs0Y/4t46KCegxyKUV+0bX
v7Y8zXMywfZFCTjMHIsPS7pWi2GsWz4cad3oLhK1g2uTw+8t9aVHT5OmgfGce0Gb
BTHsZ1P85zzjyEBaxIvBhbhx2MKM2pqtjZdvo1cuHzsFUg+8Dk0yE0S2DsCQioJ6
ct8bQouzgILFkJjZyUiVmy1CR8KYV1n9ISUsQDwToRuinlNoS9snq7NmKjhMoVT9
L+8UrOZJrSDkTjo/ykoqU6oKIm+se3ngv9SrSyRnsBXikQOWgsFIl0LZOjIIINa2
JAKNTuQWZ+m7jIB6DeNJkLDBeHM4wfaKQ0eCAYvnKAx8cfOWY6UiOmWcbHmh6V0c
rM99QkRsw2px/u11WAjb14yUq33XMvIjBAkPs3BgsFZ++tm0TMQa7imwuI4j7g4B
X71zkmwBPnJ4+GpDAbnsCSJQgePNo/rKPYMT823IrRntKq3ELYo=
=M5QO
-----END PGP SIGNATURE-----

--/qvT/kdUHCBI1w//--
