Received: (qmail 13558 invoked by uid 550); 10 Jun 2025 14:41:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7309 invoked from network); 10 Jun 2025 07:07:09 -0000
Date: Tue, 10 Jun 2025 07:06:58 +0000
From: Zbigniew =?utf-8?Q?J=C4=99drzejewski-Szmek?= <zbyszek@in.waw.pl>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com,
	Qualys Security Advisory <qsa@qualys.com>
Message-ID: <aEfZkqA92Jxx0SBW@kawka3.in.waw.pl>
References: <20250529171556.GA9260@localhost.localdomain>
 <20250606012027.GA31670@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250606012027.GA31670@openwall.com>
Subject: Re: [oss-security] Local information disclosure in apport and
 systemd-coredump

Hi Alexander,

On Fri, Jun 06, 2025 at 03:20:27AM +0200, Solar Designer wrote:
> In your message to linux-distros, you shared these two patches:
> 
> 0001-coredump-get-rid-of-_META_MANDATORY_MAX.patch
> 0003-coredump-also-stop-forwarding-non-dumpable-processes.patch
> 
> So it looks like you omitted patch number 2.  Yet to me that omitted
> patch would have been the most important part of the fix.  Was this
> omission inadvertent, or am I missing some reason to skip that patch?

Hmmm, the mail I see here in my mail folder has the middle patch too
(Message-ID: <aDRxuOl3_j0infhz@kawka3.in.waw.pl>). I'm not subscribed
to linux-distros so I didn't see the message as it was received on
the mailing list.

> I think it's these 3 commits (as they appear in the main branch, and I
> see equivalent ones are also in v257-stable and v256-stable):
> commit 8fc7b2a211eb13ef1a94250b28e1c79cab8bdcb9
> commit 0c49e0049b7665bb7769a13ef346fef92e1ad4d6
> commit 49f1f2d4a7612bbed5211a73d11d6a94fbe3bb69

Yep, that's correct.

As you can see, we made a bunch of follow-up later on. But those
three patches are enough to resolve the issue.

Zbyszek
