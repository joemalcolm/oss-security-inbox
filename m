Received: (qmail 3882 invoked by uid 550); 6 Mar 2026 15:17:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1778 invoked from network); 6 Mar 2026 15:17:03 -0000
Date: Fri, 6 Mar 2026 16:16:49 +0100
From: Solar Designer <solar@openwall.com>
To: Guillem Jover <guillem@debian.org>,
	Ron Ben Yizhak <ron.benyizhak@safebreach.com>,
	Justin Swartz <justin.swartz@risingedge.co.za>,
	bug-inetutils@gnu.org, oss-security@lists.openwall.com,
	simon@josefsson.org, auerswal@unix-ag.uni-kl.de,
	Salvatore Bonaccorso <carnil@debian.org>
Message-ID: <20260306151649.GB16746@openwall.com>
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com> <20260206172730.GA12303@unix-ag.uni-kl.de> <877bso8mhf.fsf@josefsson.org> <20260224011702.27987-1-justin.swartz@risingedge.co.za> <CAB1hGqSJPOQwc8h7g4u4WXjtDSupwkA8HjzEyU2gzbL5uavneg@mail.gmail.com> <aaGJlbbLS7cp0H-i@thunder.hadrons.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aaGJlbbLS7cp0H-i@thunder.hadrons.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2026-28372: Telnetd Vulnerability Report

Hi Guillem and Salvatore,

On Fri, Feb 27, 2026 at 01:09:57PM +0100, Guillem Jover wrote:
> On Tue, 2026-02-24 at 11:57:34 +0200, Ron Ben Yizhak wrote:
> > I’d like to ensure we follow the standard CVE process here. Standard
> > practice dictates that a CVE is issued per individual fix. Generally, once
> > a fix is merged and released, it is assigned its own CVE. Even if that fix
> > is later bypassed, the original merge stands as a unique event in the
> > codebase, meaning we should issue two separate CVEs rather than grouping
> > them.
> 
> Salvatore Bonaccorso from the Debian Security Team got a CVE assigned
> for this, see <https://www.cve.org/CVERecord?id=CVE-2026-28372>. I'll
> update the Debian packaging on the next upload to point to that.

The CVE description says:

"telnetd in GNU inetutils through 2.7 allows privilege escalation that
can be exploited by abusing systemd service credentials support added to
the login(1) implementation of util-linux in release 2.40. This is
related to client control over the CREDENTIALS_DIRECTORY environment
variable, and requires an unprivileged local user to create a
login.noauth file."

So is this CVE only for the attack vector reported by Ron Ben Yizhak,
and not also for the other attack vector and more general issue reported
by Justin Swartz?

If so, are you going to assign a second CVE for the more general issue?

I am not convinced "the standard CVE process" is exactly as Ron Ben
Yizhak describes it above, but I don't mind doing things in this way.

It sometimes happens that a fix is released as being for a certain CVE,
and then a second CVE has to be assigned for the "incomplete fix", where
the incompleteness of the first fix is the new vulnerability.  But with
no CVE assigned yet, we didn't have to do it this way.  We could have
one CVE for the set of issues, and not treat "the original merge" as
fixing any CVE at all.

But again, I don't mind, and I understand that we also need to enable
researchers to find and report such issues during work hours, which
means making employers happy with credits and CVEs.  It isn't wrong to
have separate CVEs, so we may.

Just need to clarify.

Alexander
