Received: (qmail 1024 invoked by uid 550); 15 Jun 2025 01:54:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31817 invoked from network); 15 Jun 2025 01:54:10 -0000
Date: Sun, 15 Jun 2025 03:54:05 +0200
From: Solar Designer <solar@openwall.com>
To: Zbigniew =?utf-8?Q?J=C4=99drzejewski-Szmek?= <zbyszek@in.waw.pl>
Cc: oss-security@lists.openwall.com,
	Qualys Security Advisory <qsa@qualys.com>
Message-ID: <20250615015405.GA29260@openwall.com>
References: <20250529171556.GA9260@localhost.localdomain> <20250606012027.GA31670@openwall.com> <aEfZkqA92Jxx0SBW@kawka3.in.waw.pl>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aEfZkqA92Jxx0SBW@kawka3.in.waw.pl>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Local information disclosure in apport and systemd-coredump

Hi,

Regarding the missing patch:

On Tue, Jun 10, 2025 at 07:06:58AM +0000, Zbigniew Jędrzejewski-Szmek wrote:
> On Fri, Jun 06, 2025 at 03:20:27AM +0200, Solar Designer wrote:
> > In your message to linux-distros, you shared these two patches:
> > 
> > 0001-coredump-get-rid-of-_META_MANDATORY_MAX.patch
> > 0003-coredump-also-stop-forwarding-non-dumpable-processes.patch
> > 
> > So it looks like you omitted patch number 2.  Yet to me that omitted
> > patch would have been the most important part of the fix.  Was this
> > omission inadvertent, or am I missing some reason to skip that patch?
> 
> Hmmm, the mail I see here in my mail folder has the middle patch too
> (Message-ID: <aDRxuOl3_j0infhz@kawka3.in.waw.pl>). I'm not subscribed
> to linux-distros so I didn't see the message as it was received on
> the mailing list.
> 
> > I think it's these 3 commits (as they appear in the main branch, and I
> > see equivalent ones are also in v257-stable and v256-stable):
> > commit 8fc7b2a211eb13ef1a94250b28e1c79cab8bdcb9
> > commit 0c49e0049b7665bb7769a13ef346fef92e1ad4d6
> > commit 49f1f2d4a7612bbed5211a73d11d6a94fbe3bb69
> 
> Yep, that's correct.
> 
> As you can see, we made a bunch of follow-up later on. But those
> three patches are enough to resolve the issue.

Thank you!

I tried investigating what may have happened, and while I do now suspect
it was incorrect processing on the list server, I couldn't identify a
specific cause nor confirm this guess based on the logs.  Re-encrypting
a MIME message is unfortunately non-trivial.

Alexander
