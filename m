Received: (qmail 19785 invoked by uid 550); 28 Jun 2024 14:09:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18322 invoked from network); 28 Jun 2024 14:09:36 -0000
Date: Fri, 28 Jun 2024 16:09:22 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240628140922.GA2048@openwall.com>
References: <CAL6_Ycxg1vyY24uTfsM5uNW25Pf7pT=X8tTnp1=Ni46CrN_z9Q@mail.gmail.com> <5fc9fb83-2f59-4e9e-ab08-c5748cb0792f@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5fc9fb83-2f59-4e9e-ab08-c5748cb0792f@oracle.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Fwd: [siren] Reputation Farming Using Closed Github Issues / PRs

On Tue, Jun 25, 2024 at 12:15:47PM -0700, Alan Coopersmith wrote:
> Date: Mon, 24 Jun 2024 18:29:26 -0400
> From: Bennett Pursell <bpursell@linuxfoundation.org>

> Maintainers have reported in discussions on OpenSSF's Slack suspicious
> activity in OSS repositories especially in Github against closed issues and
> Pull Requests.  This includes commenting or approving on these closed
> items.  This can lead to the accounts at question being able to pad their
> Github account reputation by seeming to have contributed to those projects.
> 
> Reputation farming may seem benign, but in the wake of a number of recent
> incidents, OSS maintainers are recommended to have increased awareness of
> anyone attempting to gain trust illegitimately.

>    Lock old issues / pull requests / discussions

I dislike this one recommendation.  It's sometimes very useful to have
late follow-ups recorded where they belong.

Anyway, here's a second message posted to the siren thread above:

---
From: "Ben Cotton" <bcotton@funnelfiasco.com>
Date: Thu, 27 Jun 2024 09:59:51 -0400
Subject: Re: [siren] Reputation Farming Using Closed Github Issues / PRs

On Mon, Jun 24, 2024 at 6:29???PM Bennett Pursell wrote:
>
> Closed Github Issues / Pull Request Activity
> Reputation Farming Using Closed Github Issues / PRsCVE ID (if applicable):

Found another variant of this on a Mastodon post[1] from Hector Martin
today. For projects that handle contributions outside of GitHub but
publish to GitHub as a mirror, a reputation farmer can create a pull
request for a patch that hasn't yet been pushed. This makes it look
like the project merged their pull request when the patch is pushed.
linux#832[2] is an example of this.

[1] https://hachyderm.io/deck/@marcan@treehouse.systems/112687121777345482
[2] https://github.com/torvalds/linux/pull/832

--
Ben Cotton (he/him)
TZ=America/Indiana/Indianapolis
---

Hector Martin's Mastodon post above is:

---
TIL that some people are playing GitHub race games to make it seem like
Linus Torvalds merged their GitHub PR [github.com].

Cute trick, but no, Linus doesn't actually ever merge anything via
GitHub. Explanation here [github.com].
---

and there's some discussion in replies to it.  The GitHub links above
are to PR 832, where Hector Martin's comment is:

---
No Linux PRs have ever been merged via GitHub. What happened here is
that a random person submitted a branch that was already sent to Linus
via a mailing list PR.

This is the real (non-GitHub) PR. The timestamp is Sun, 31 Mar 2024
10:27:11 UTC. @ammarfaizi2 then opened this GitHub PR at 12:37 UTC, a
couple hours later, using the exact same commit hash, even though he is
neither the commit author nor the person making the PR. Then when Linus
merged this (again, not involving GitHub at all) into mainline, and this
mirror was updated to include the merge commit, GitHub marked the PR as
merged since the commit that this PR was attempting to merge was, in
fact, merged (this is a GitHub feature that works as long as the commit
hash is identical, and included in a subsequent merge commit). At no
point was GitHub involved in the process with the actual kernel
community, and as far as I can tell @ammarfaizi2 is just a random who
had nothing to do with the commit, nor the real PR, or anything else.

Anyone can do this by running ahead of Linus on any non-GitHub kernel
pull request and opening a PR here. It's just a stupid trick to make it
look like Linus merged your PR via GitHub, even though that never
actually was the case.

You can submit Linux kernel changes to upstream maintainers from
GitHub-hosted branches, I've done so myself. But it's via mail PR, and
GitHub in that case is just treated as an arbitrary Git hosting site.
The GitHub web interface PRs are never used.
---

where "This" linked to a pull request message on Linux kernel mailing
lists that does indeed have the exact same commit hash as was later used
in the GitHub PR, but gives a git.kernel.org repo link to pull from.

Alexander
