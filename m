Received: (qmail 31989 invoked by uid 550); 16 May 2026 18:17:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30536 invoked from network); 16 May 2026 15:09:18 -0000
Date: Sat, 16 May 2026 17:09:08 +0200
From: "Bernhard R. Link" <brl+oss@mail.brlink.eu>
To: oss-security@lists.openwall.com
Message-ID: <agiIlGxE-XCWbpVp@client.brlink.eu>
References: <20260516150545.7570323b@hboeck.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260516150545.7570323b@hboeck.de>
Subject: Re: [oss-security] Recent Kernel exploits, attack surface reduction,
 example IPSEC

* Hanno Böck <hanno@hboeck.de> [260516 15:07]:
> However, there's a broader point here: I think it's common these
> days that Linux distributions install most or all kernel modules by
> default, and loading them happens automatically. Which, in many cases,
> means people are potentially affected by security flaws in features
> they never use.
> "Attack surface reduction" is widely considered to be a good security
> principle, and I wonder if we can do better here.
>
> To pick the example of IPSEC, i wonder if it wouldn't be better to
> have, e.g., a separate "linux-modules-ipsec" package that isn't
> installed by default. People who use and need IPSEC will likely know
> that they need it, and can install it separately.
>
> I'm aware this doesn't come for free, and will add increased
> complexity to kernel packaging. [...]

The packaging complexity would likely not be that much of a problem,
the overhead in packaging metadata would add some more cost (also
consider that deciding which packages to install easily gets into
the 2^package number complexity). But the biggest disadvantage would
be the missing granularity (you don't wont to make a package for
every single module) and the hassle is something is missing
(installing a missing module to have network again without network...).

To decrease the attack vector, restricting the second part would be
much easier: restricting what can be auto-loaded. A module that you
need root permissions to load is harmless for priviledge escalation,
whether installed or not.

Security wise, supporting allow-lists instead of only deny-lists
would make it easier for systems where you know beforehand what you
want (I guess many server systems might end up in there). Of course
you can just load everything and disable module loading, but then
you'll need a restart whenever what you load needs to be changed.

But that would only work for tighly managed systems, nothing easily
applicable to general systems. There you always have to find a
balance between ease of use and security. Security is worthless if
users cannot use it. (After all, the most secure system is switched
off, filles with epoxy, encased in cement and resting on the ground
of the sea).

Where the perfect balance is depends a lot on the individual though.
One easy way to do that is for example security levels to define
different sets of defaults. Distributions could for example
categorize kernel modules about how likely an average user of them
would need each one and then allow to configure a module security
level that limits how uncommon a module gets autoloaded without
an admin allowlisting it.

That would likely need a lot of tooling, though...


	Bernhard R. Link
