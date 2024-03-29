Received: (qmail 1117 invoked by uid 550); 29 Mar 2024 21:11:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31832 invoked from network); 29 Mar 2024 21:11:01 -0000
Date: Fri, 29 Mar 2024 22:10:52 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240329211052.GA2470@openwall.com>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de> <uu76c4$u7g$1@ciao.gmane.io>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <uu76c4$u7g$1@ciao.gmane.io>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh server compromise

On Fri, Mar 29, 2024 at 07:55:48PM -0000, Tavis Ormandy wrote:
> Thanks Andres, amazing work!

Certainly, thank you very much Andres!  Many others have helped in
various ways as well, all of this is appreciated.

> I have a minor procedural question for Solar though, shouldn't this
> have been redirected to oss-security immediately from distros? What's
> the rationale for an embargo here?

We don't have a clear policy for such case.  Some distros list members
have indeed suggested making this public ASAP.  We ended up delaying
publication by one day per my suggestion (as a compromise between ASAP
and having no specific CRD), and I think these are some reasons why:

1. Some specific distros were affected (or at least some people thought
so) and it was under (fast-paced) discussion whether we as a group agree
they may go for not-too-revealing reverts or source tarball replacements
before the rationale for those becomes public knowledge.  Several
distros in fact ended up doing those things and preparing advisories.
This meant that when Andres posted to oss-security, users of those
distros already had a clear course of action - just install updates.
For example, Debian issued an advisory almost immediately after the
oss-security posting.  I think that was helpful.  If this were made
public yesterday, there would be more of a panic.

2. We didn't know how the culprit (or group) would react when they
learned of the full extent of the community's awareness.  It could be
better to have fewer systems still "held hostage" by that point, which
availability of distros' revert/update packages may have helped achieve.
(This wasn't discussed, but I had it in mind.  Maybe others had such
thoughts too.)

3. We were aware of concurrent coordination efforts by other groups
(CERT/CC, CISA) and we didn't want to interfere with their plans.

4. More findings were still being made and the wording of Andres'
posting improved per private feedback.

Alexander
