Received: (qmail 32389 invoked by uid 550); 21 Apr 2024 12:31:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32365 invoked from network); 21 Apr 2024 12:31:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=M60aLlnsCl9DpJScufvTgDSBWEUnyh+6BHVr132hxz4=; b=sLraIaukQ61Us6cxnNJe8+f176
	+idkVuZFIsvWjV8Qojv4h7BT2EXDlsndrjlFqGpdS703VU2k3OLNH65eLWXtblTg86DLbfAybdoeV
	nMV32A+URwQi85TGmN/DhgnNvIa6ET1LqSoeThcSawkt68rYAoV/s7WKyNFwkGL5L0m/sZp78AjpG
	QiCvOCubbxPclM3ItpkLBrzkdvpsxS5ob2SgWf+jtkqG2lQGJXMYfxMa6R8eHry3zoypQGuqgtcLC
	X0QvXtRuE6KEW/EVo3YLRSU0U+iOErKDOK2NoNSMbdhRJKqRpKhzdXM9svuOemz8RSscY9fqNJpGu
	am8J51Kw==;
Date: Sun, 21 Apr 2024 13:30:49 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZiUG-cMNJgFl-zCO@remnant.pseudorandom.co.uk>
References: <20240414190855.GA12716@openwall.com>
 <354b913bc1c154c1e3a2fc34ed8ed6b0d4641f11.camel@canonical.com>
 <20240419154435.GA7046@openwall.com>
 <ZiKo7shztRpgvAIC@remnant.pseudorandom.co.uk>
 <20240420181211.GA12463@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240420181211.GA12463@openwall.com>
X-Debian-User: smcv
Subject: Re: [oss-security] Linux: Disabling network namespaces

On Sat, 20 Apr 2024 at 20:12:11 +0200, Solar Designer wrote:
> So with my idea/proposal, someone using these tools on a
> desktop system would need to set the max depth to 1.  That would leave
> the kernel's full attack surface exposed on the host system, but not to
> sandboxed programs because those would run with capabilities already
> relinquished (per what you write above) and would not be able to regain
> them by creating a nested namespace.

I believe that's all correct. If someone prototypes this, a way to verify
it would be, minimally:

    $ ip addr ls
    (should show all your IP addresses)
    $ bwrap --dev-bind / / -- ip addr ls
    (same output)
    $ bwrap --dev-bind / / --unshare-net -- ip addr ls
    (should show only lo with 127.0.0.1 and ::1)

or for a "whole stack" version with Flatpak, install any random Flatpak
app such as org.gnome.Recipes and do:

    $ flatpak run --unshare=network org.gnome.Recipes

      # or to explore the sandbox environment interactively
    $ flatpak run --command=bash --unshare=network org.gnome.Recipes

For simplicity, the use of bwrap shown above is not a security boundary:
it doesn't make any attempt to restrict access to the host filesystem
like e.g. Flatpak does. bwrap command-lines that implement a meaningful
security boundary, while still providing useful functionality, are much
longer than that!

> Sounds like a worthwhile feature?

I'm not sure. As with most security designs, it depends on your security
model.

To protect a trusted user from their own sandboxed apps, it should be
unnecessary/redundant for Flatpak users, because Flatpak already doesn't
let apps inherit CAP_NET_ADMIN or create new user namespaces - but it
could be useful for other sandboxed app frameworks, or as a second line
of defence against Flatpak not providing the boundary that it aims to.

To protect the OS and other users from a malicious or compromised
user account using kernel vulnerabilities to elevate privileges, it's
insufficient - if that's your security model then there isn't going to be
any substitute for either trusting the kernel to make CAP_NET_ADMIN in a
non-init user namespace be safe, or trusting a component like bwrap to
impose restrictions that its caller is not allowed to bypass.

Of course, any time we say things like "trusting a component to impose
restrictions that its caller is not allowed to bypass", we get into
the same territory as setuid/setgid/setcap, in terms of needing to
prevent LD_PRELOAD, LD_LIBRARY_PATH and similar ways to influence the
trusted component's behaviour from the outside - which is likely to be
impossible if the kernel isn't helping to defang those aspects of the
execution environment by flagging the process as AT_SECURE, either in
core kernel code or in an LSM like AppArmor.

I believe the kernel maintainers' position is that CAP_NET_ADMIN in
a non-init userns is meant to be safe for untrusted code to have, so
auditing and if necessary hardening the kernel's use of CAP_NET_ADMIN
might well be better-received upstream than trying to limit which parts
of user-space can obtain it.

    smcv
