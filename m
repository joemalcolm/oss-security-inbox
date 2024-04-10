Received: (qmail 25803 invoked by uid 550); 10 Apr 2024 16:28:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16298 invoked from network); 10 Apr 2024 16:28:14 -0000
Date: Wed, 10 Apr 2024 18:28:13 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Alejandro Colomar <alx@kernel.org>, Sam James <sam@gentoo.org>,
	Joey Hess <id@joeyh.name>, Jonathan Nieder <jrnieder@gmail.com>,
	Andres Freund <andres@anarazel.de>,
	Lasse Collin <lasse.collin@tukaani.org>, xz@tukaani.org
Message-ID: <20240410162812.GA17059@openwall.com>
References: <ZhYEpAFolwefRv7X@debian>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZhYEpAFolwefRv7X@debian>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Analysis on who is Jia Tan, and who he could work for, reading xz.git

On Wed, Apr 10, 2024 at 05:16:52AM +0200, Alejandro Colomar wrote:
> I've been researching xz.git to learn about this malicious actor, and
> who he might have worked for.

As a moderator, I reluctantly let this through out of respect for
Alejandro's time and knowing that many readers will find it interesting.

However:

This is almost off-topic for oss-security and it risks provoking further
speculation and potentially hatred in follow-ups.  Related analyses,
including not only of timezones but also of commit times, were already
posted elsewhere (e.g., a Wired story).  So let's please limit the
follow-ups to (1) corrections of any factual errors or major omissions
(to the extent of being misleading) there might be in Alejandro's
postings and (2) observations that more directly help us identify or
prevent more compromises like this (if any can be made based on this
analysis, which I doubt).  One major omission I'd like to point out is
that timezones can be faked - we have no reliable way to know which of
these, if any, actually correspond to where Jia Tan was.

Note that other recent threads in here about search for code patterns
similar to Jia Tan's and even for PGP keys similar to Jia Tan's are more
relevant to oss-security, because they're aimed to uncover potential
related backdoor code in other projects.  In contrast, identifying who
Jia Tan is or what country/ies they're from doesn't obviously help.  At
best, it may give us guesses on where the presumed targets are, but then
what?  We need to protect the whole ecosystem regardless of who/where
the current attackers are, and we need to develop means to detect such
attacks everywhere, not only at currently likely targets.

Alexander

P.S. Let's also not spam distro security teams with this (CC's dropped).
I'm sure they don't want tickets auto-created for such analyses, like
they would for vulnerability reports.  And I certainly don't want to
spend time removing more ticket auto-replies from our moderation queue.
