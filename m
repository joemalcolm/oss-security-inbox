Received: (qmail 1188 invoked by uid 550); 19 May 2026 23:59:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24159 invoked from network); 19 May 2026 23:31:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779233459; x=1779838259; darn=lists.openwall.com;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=tFntEcp1M/jDe1vOBsuZr360lwpBZg1Z0cjVbowCpyg=;
        b=Y3gZBmAZIdb+IIyCi2zVmSZoksZavNOglVFBtp+cHDZGLhSt/E7Bi4C6cJAYWdkmNW
         d1wJpVlWkajCBf2Y/Ef4dNselBPuWCdCDFujmroBLEzy50LtmczlNlrQuf6lNdYxcNBq
         sDSlWMhU3y5gFr06STNhF9XI5IBPBiuk/7qFvyVL0g/FDyfCPOL8HzLcDhCqlgiBtOkZ
         OXTEYaBz3Nua8eho9ALhrfgPQK4wlTw+60Ow1SyfZZ5GeiCPTKLFEud3FOTe0wigpYxX
         VbTrg+uwT9HKIrEfdHTkW3HP9gXqe08qp0YBHe9UDR63Aw6Hf3OkvWX+T05vuNZvAUbp
         dKBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779233459; x=1779838259;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tFntEcp1M/jDe1vOBsuZr360lwpBZg1Z0cjVbowCpyg=;
        b=THUzpOBPJd6HUuLkSZifOLr7CgtdSjPyDJvQhyF9GDo3EnIPCYvmJfZ1rXYYFebYXY
         c3p3kXvHjiAw53e3OuF3sSaWQ6Qrm5cAZtgWuGcE4lhX81qHheIkpcgUUmwgrsNnAl+P
         sLNjEp+xlYhNXUa9AzPJffuDlcQTRL2VZLtmdtxyB1o0A2f698AJivrYlds2sezttt2D
         T1JX89RjVagJow/RNh9ko8vwyTtLJWxoX4zSGX3RcCOxIh0M0rS2dqk1R5k4NbSOfVVY
         +F/SPWLCRBmvzGeSoVTEl+hTct+RR/nPZgStXo38QZfSAO3XvTQJbgueptDJXiYGc8kV
         +t/A==
X-Gm-Message-State: AOJu0Yx8uUNUNuwCQ/eR+wkNpzMRF0i2ZynKnysm4CL6Wa+jX+WRznPn
	ywacTOxCmOZZJrgld5xY+gwteYn7g3Lgm5a0YzwmyqeMv4ILJsNPoqZk
X-Gm-Gg: Acq92OGw/DRKcivTHyl7Mj6vMHj+3zKMve+FX9ScgMhGdykDJ2sJ821SNbMP2yzFTun
	wCc3pL0YcyInAKp0kUEsK38CnG9qCjP7/gc2JlRv1uaYT/28gM+R5iWUt6Fymntn8ruF5nmdyrP
	UVmnUI3PrpJDscIOvTUEiaMU8jEfUTA8d3WBZqxIy2PufyUqWaYifWnnYLkRZr0/41ER8dbmkAN
	6W7etdxBSlkXeLUFjQ1zX1jMeK9VJ6YNmzjWciMzZvInIacMUACowh7wfoi5m1ETK5aMm3Kbe+o
	ySE5OwF8rXG8huVps+hulNEvzBGvO2huWWw7UmOKbDjV9XahYvi7p0vRwgB181GdP1zW5DOd4dX
	jK90EYnwb24FL5soIIoFtvucPEMSw0ksyBdSrL/cMz8Pd15BtXH3fJaBQ4Q5fMi2V/OZj2n8c2o
	G83/DR89wXDjct1Va7qLmCzF45qugZlu/B8Ym+59i8EVf5tfcq9Q==
X-Received: by 2002:a05:6820:83d4:20b0:696:1daf:3e97 with SMTP id 006d021491bc7-69c9436e648mr4956689eaf.2.1779233458354;
        Tue, 19 May 2026 16:30:58 -0700 (PDT)
Date: Tue, 19 May 2026 19:30:42 -0400
From: Aaron Rainbolt <arraybolt3@gmail.com>
To: Simon McVittie <smcv@debian.org>
Cc: oss-security@lists.openwall.com, arraybolt3@riseup.net
Message-ID: <20260519193042.3feb8374@gmail.com>
In-Reply-To: <agw1YBkrV6kcsdYr@definition.pseudorandom.co.uk>
References: <20260518220116.170677b2@riseup.net>
	<agw1YBkrV6kcsdYr@definition.pseudorandom.co.uk>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/q/2+r_KEhShDNJM7r85zfYb";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Subject: Re: [oss-security] On the issue of MIME handlers that execute
 arbitrary code (e.g. Wine)

--Sig_/q/2+r_KEhShDNJM7r85zfYb
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

(Hmm, seems the address I sent the original email from got dropped.
Adding it back via CC...)

On Tue, 19 May 2026 11:03:12 +0100
Simon McVittie <smcv@debian.org> wrote:

> On Mon, 18 May 2026 at 22:01:16 -0400, Aaron Rainbolt wrote:
> >Of these two, org.freedesktop.portal.OpenURI.OpenFile is probably
> >more problematic. This is because access to the OpenURI portal seems
> >to be implicitly allowed by Flatpak.=20=20
>=20
> Expanding on what Flatpak intends to allow here:
>=20
> The general design in Flatpak is that communicating with D-Bus peers=20
> that own a name of the form org.freedesktop.portal.(anything) is
> always allowed, and nearly everything else is not allowed by default.
> The idea is that when services like xdg-desktop-portal own a=20
> org.freedesktop.portal.* name, that's an opt-in to taking
> responsibility for doing whatever mediation and prompting is
> necessary, whereas for other arbitrary services (like for example
> org.freedesktop.PackageKit) the assumption is that the service is not
> suitable for use by arbitrary sandboxed apps unless explicitly
> allowed.
>=20
> (There are a few other hard-coded exceptions for things like the
> special org.freedesktop.DBus interface implemented by the message bus
> itself, which is allowed or denied at a much finer granularity
> because it's so fundamental to how D-Bus is used.)
>=20
> The org.freedesktop.portal.* special case is about the bus names that
> are owned, not a specific interface/method. The fact that the method
> call is org.freedesktop.portal.OpenURI.OpenFile is actually
> irrelevant to whether Flatpak allows it, even though it happens to
> follow the same naming convention as bus names; what matters is that
> it's implemented by the xdg-desktop-portal process, and that process
> owns the bus name org.freedesktop.portal.Desktop, so the parameters
> that Flatpak passes to xdg-dbus-proxy result in communication being
> allowed.
>=20
> Other org.freedesktop.portal.* names can be seen in the NAME column
> in systemd's `busctl --user`, for example. On a GNOME system,
> examples of other portal services include org.freedesktop.portal.IBus
> and org.freedesktop.portal.Tracker, which are narrower,
> more-restricted versions of the ibus and localsearch (formerly
> Tracker) interfaces. The authors of those services are responsible
> for making them safe.
>=20
> For xdg-desktop-portal specifically, I believe there is work being
> done on an "entitlements" mechanism so that in future, some (all?)=20
> xdg-desktop-portal interfaces will refuse to process requests from=20
> sandboxed apps that do not have the appropriate "entitlement",
> similar to the way Android permissions work - for example apps that
> don't have the "screenshot" entitlement might not be allowed to take
> screenshots, even with user consent. I don't know the finer details
> of that work, though. It will presumably need a
> backward-compatibility mechanism where older apps are assumed to have
> entitlements for most of the functionality that was traditionally
> always available, otherwise that would be a major functional
> regression.
>=20
> As far as I know, the entitlements mechanism is being done at the
> portal level rather than the D-Bus level: the D-Bus message gets
> delivered to the portal either way, but the portal chooses whether to
> take the requested action (possibly after prompting the user) or
> reject the request. This is analogous to the way modern D-Bus system
> bus services are usually designed, with the D-Bus message delivered
> to the service unconditionally, and the service deciding whether to
> obey or reject it (normally by querying polkit).

Thanks for the extra info, this is good to know.

> >If all applications followed the xdg-mime manpage's advice to never
> >execute code when opening a file, this wouldn't be that big of a
> >problem. This is where Wine comes in; it ships a desktop file that
> >registers Wine as a MIME handler for
> >'application/x-ms-dos-executable', 'application/x-msi', and
> >'application/x-bat'.=20=20
>=20
> Note that not all packaged versions of Wine do this: for example in=20
> Debian, this MIME handler was disabled in 2013 in response to=20
> <https://bugs.debian.org/327262>.

Good. Unfortunately, convincing upstream to follow suit is proving to
be a challenge...

> >Unfortunately, I was able to find another program
> >with an unsafe handler registered just while writing this email
> >(which I intend on reporting privately once I've sent this). So
> >while it seems like these kind of handlers aren't super common, they
> >aren't that hard to find if you dig around for a while.=20=20
>=20
> CVE-2023-26314 (<https://bugs.debian.org/972146>) in Debian's
> packaging of the Mono runtime is another example that was already
> public with a CVE ID issued. I believe that specific vulnerability
> was specific to Debian (and Debian derivatives that inherited it,
> like Ubuntu), but the general "shape" of the problem could affect any
> distro, and it was discussed (briefly) in the thread starting at=20
> <https://www.openwall.com/lists/oss-security/2023/01/05/1>.

Thanks for the pointer. That's pretty similar to the "other program" I
found.

> >* We're working on a sandboxing system (really a glorified
> >  systemd-nspawn frontend) that allows each sandbox to be
> >  self-sufficient enough to not *need* access to the host's D-Bus
> >  daemon. [9] That should prevent any possible way to leverage D-Bus
> > as a sandbox escape mechanism.=20=20
>=20
> This is definitely a trade-off: the more barriers a sandboxing system=20
> puts up between host and sandbox, the safer it will be, but the less=20
> well-integrated with the host system it will feel. At one extreme,
> each app could be in its own VM (very safe, very poorly integrated
> unless heroic efforts are undertaken to provide communication between
> them), and at the other extreme, the apps could be effectively
> un-sandboxed (very well integrated, but very much not safe if an app
> is compromised or malicious).

Sure, this isn't meant to replace Flatpak, I just thought it might be
useful to mention here. (Funny enough, one of the end goals of the
project is to allow using VMs rather than namespace containers.)

> Each app/sandboxing framework needs to choose its own security
> posture, which will determine the extent to which that framework is
> safe to use with a potentially malicious or compromised app.=20
> More-secure/less-integrated is not *necessarily* always better for
> the overall security of the ecosystem: if an app framework is
> inconvenient to use, the likely result is that most people will use
> completely un-sandboxed apps instead, which could ironically lead to
> more security exposure than if they had been using
> imperfectly-sandboxed apps.
>=20
> Any container-based sandboxing mechanism, however well-designed, is
> also going to be susceptible to whatever vulnerabilities are
> available at the Linux syscall interface (which feels especially
> topical this month!), although this can be mitigated by mechanisms
> like seccomp (as used in Flatpak and systemd-nspawn) or AppArmor (as
> used in Snap).

Indeed, that is a risk that is on our radar.

I wonder if it would be worth proposing a change to whatever system
component handles opening files (probably something in Glib, or
xdg-utils, haven't researched that deeply yet), so that handlers cannot
be registered for certain "dangerous" file types (i.e. ELF/PE/Mach-O
executables, scripts in various languages, etc.)? The only real
downside I can see to that is the inability to text editors to
register themselves as handlers for script MIME types, and in those
instances, the editor can register itself as the handler for another
applicable, more generic MIME type (i.e. text/plain), then change its
behavior based on the more detailed MIME type of the file after it
opens it.

--
Aaron

--Sig_/q/2+r_KEhShDNJM7r85zfYb
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQS8QsiCjFi4DcDBX+Q5rdye4jrrCAUCagzyrAAKCRA5rdye4jrr
CLP9AP9CVhxJu51gp/QWIKJdT4DiRB1pP1Jrmky3GUpo5r3H+QD/ZCdBawlV3wdX
Nmab9VH5RFe82msha8Jj2bWu2MemMQg=
=2Y/W
-----END PGP SIGNATURE-----

--Sig_/q/2+r_KEhShDNJM7r85zfYb--
