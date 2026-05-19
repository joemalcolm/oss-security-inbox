Received: (qmail 24072 invoked by uid 550); 19 May 2026 10:03:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24042 invoked from network); 19 May 2026 10:03:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=NyfYRbPDObpYww5H0xCd60lpbeNE3uoxVv7oK1Xu8mg=; b=WApqKy00Xy38Nzb96f2pqFnkYM
	V2ykz8+MT3uC7a2pyS4CEwuCy6D0FUFo6z88cIIKAUgDIatqmaVVzYgM1FiGWSIk+DmfM8pEpOrEm
	fRsfUh120xuKuhmhgac5JMfOSMRh2vI247n7N9Qt1C+6isz1+hk5CiW3pSp6M/bTVn32zh4iXqidC
	x3K74tpBNZXWEc9ryjcWIMigbJ9TxN5ggtCO418ADhqpGuHBXLpjxlARS/EmOe2nakHxWXJkEz3bW
	BWPa1JboqqMMA5m/g39Z3Ry7kUASl+NH0yaXYA5nzLt4dL1WMHLA2F/8n8cb1T8t/YMFVJdzRC9Ka
	Ycwac0mw==;
Date: Tue, 19 May 2026 11:03:12 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <agw1YBkrV6kcsdYr@definition.pseudorandom.co.uk>
References: <20260518220116.170677b2@riseup.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20260518220116.170677b2@riseup.net>
X-Debian-User: smcv
Subject: Re: [oss-security] On the issue of MIME handlers that execute
 arbitrary code (e.g. Wine)

On Mon, 18 May 2026 at 22:01:16 -0400, Aaron Rainbolt wrote:
>Of these two, org.freedesktop.portal.OpenURI.OpenFile is probably more
>problematic. This is because access to the OpenURI portal seems to be
>implicitly allowed by Flatpak.

Expanding on what Flatpak intends to allow here:

The general design in Flatpak is that communicating with D-Bus peers 
that own a name of the form org.freedesktop.portal.(anything) is always 
allowed, and nearly everything else is not allowed by default. The idea 
is that when services like xdg-desktop-portal own a 
org.freedesktop.portal.* name, that's an opt-in to taking responsibility 
for doing whatever mediation and prompting is necessary, whereas for 
other arbitrary services (like for example org.freedesktop.PackageKit) 
the assumption is that the service is not suitable for use by arbitrary 
sandboxed apps unless explicitly allowed.

(There are a few other hard-coded exceptions for things like the special 
org.freedesktop.DBus interface implemented by the message bus itself, 
which is allowed or denied at a much finer granularity because it's so 
fundamental to how D-Bus is used.)

The org.freedesktop.portal.* special case is about the bus names that are 
owned, not a specific interface/method. The fact that the method call is 
org.freedesktop.portal.OpenURI.OpenFile is actually irrelevant to 
whether Flatpak allows it, even though it happens to follow the same 
naming convention as bus names; what matters is that it's implemented by 
the xdg-desktop-portal process, and that process owns the bus name 
org.freedesktop.portal.Desktop, so the parameters that Flatpak passes 
to xdg-dbus-proxy result in communication being allowed.

Other org.freedesktop.portal.* names can be seen in the NAME column in 
systemd's `busctl --user`, for example. On a GNOME system, examples of 
other portal services include org.freedesktop.portal.IBus and 
org.freedesktop.portal.Tracker, which are narrower, more-restricted 
versions of the ibus and localsearch (formerly Tracker) interfaces. The 
authors of those services are responsible for making them safe.

For xdg-desktop-portal specifically, I believe there is work being done 
on an "entitlements" mechanism so that in future, some (all?) 
xdg-desktop-portal interfaces will refuse to process requests from 
sandboxed apps that do not have the appropriate "entitlement", similar 
to the way Android permissions work - for example apps that don't have 
the "screenshot" entitlement might not be allowed to take screenshots, 
even with user consent. I don't know the finer details of that work, 
though. It will presumably need a backward-compatibility mechanism where 
older apps are assumed to have entitlements for most of the 
functionality that was traditionally always available, otherwise that 
would be a major functional regression.

As far as I know, the entitlements mechanism is being done at the portal 
level rather than the D-Bus level: the D-Bus message gets delivered to 
the portal either way, but the portal chooses whether to take the 
requested action (possibly after prompting the user) or reject the 
request. This is analogous to the way modern D-Bus system bus services 
are usually designed, with the D-Bus message delivered to the service 
unconditionally, and the service deciding whether to obey or reject it 
(normally by querying polkit).

>If all applications followed the xdg-mime manpage's advice to never
>execute code when opening a file, this wouldn't be that big of a
>problem. This is where Wine comes in; it ships a desktop file that
>registers Wine as a MIME handler for 'application/x-ms-dos-executable',
>'application/x-msi', and 'application/x-bat'.

Note that not all packaged versions of Wine do this: for example in 
Debian, this MIME handler was disabled in 2013 in response to 
<https://bugs.debian.org/327262>.

>Unfortunately, I was able to find another program
>with an unsafe handler registered just while writing this email (which
>I intend on reporting privately once I've sent this). So while it seems
>like these kind of handlers aren't super common, they aren't that hard
>to find if you dig around for a while.

CVE-2023-26314 (<https://bugs.debian.org/972146>) in Debian's packaging 
of the Mono runtime is another example that was already public with a 
CVE ID issued. I believe that specific vulnerability was specific to 
Debian (and Debian derivatives that inherited it, like Ubuntu), but the 
general "shape" of the problem could affect any distro, and it was 
discussed (briefly) in the thread starting at 
<https://www.openwall.com/lists/oss-security/2023/01/05/1>.

>* We're working on a sandboxing system (really a glorified
>  systemd-nspawn frontend) that allows each sandbox to be
>  self-sufficient enough to not *need* access to the host's D-Bus
>  daemon. [9] That should prevent any possible way to leverage D-Bus as
>  a sandbox escape mechanism.

This is definitely a trade-off: the more barriers a sandboxing system 
puts up between host and sandbox, the safer it will be, but the less 
well-integrated with the host system it will feel. At one extreme, each 
app could be in its own VM (very safe, very poorly integrated unless 
heroic efforts are undertaken to provide communication between them), 
and at the other extreme, the apps could be effectively un-sandboxed 
(very well integrated, but very much not safe if an app is compromised 
or malicious).

Each app/sandboxing framework needs to choose its own security posture, 
which will determine the extent to which that framework is safe to use 
with a potentially malicious or compromised app. 
More-secure/less-integrated is not *necessarily* always better for the 
overall security of the ecosystem: if an app framework is inconvenient 
to use, the likely result is that most people will use completely 
un-sandboxed apps instead, which could ironically lead to more security 
exposure than if they had been using imperfectly-sandboxed apps.

Any container-based sandboxing mechanism, however well-designed, is also 
going to be susceptible to whatever vulnerabilities are available at the 
Linux syscall interface (which feels especially topical this month!), 
although this can be mitigated by mechanisms like seccomp (as used in 
Flatpak and systemd-nspawn) or AppArmor (as used in Snap).

     smcv
