Received: (qmail 25982 invoked by uid 550); 23 Apr 2024 16:14:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25958 invoked from network); 23 Apr 2024 16:14:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Cc:Content-ID:Content-Description;
	bh=/i7LJwUjC/wBJFLaPZeCzZoJa+g+D2grjjzda66Pimk=; b=Ncpyo3GEKHnaiw4tTorU37jKfT
	on6Aj7IsfzeGsXLQLr+h6aAJzsWeFzoME94s2YbRvxDL3ebZ/MUoUo9iEMmLrg5/3LOaDUkWk58Re
	gUMnXTe0fPJ9wotwQ9vM6frLzxILFHaGLbjXc2rvlr9UQzE7Jfowj9kduM30kHvc1g+BS0HDmzIxE
	uquse2K91ruQBiJh5fHsIPR0uhpqzzAiDsNTA6xMctTvdcxeXRWrfOWtCKVYSmhsDTojo2qYqvKzZ
	/72UrtVhw9wPgknpHcvDYObKKIdbEPzJymFglUgUtRpglDWuxNbidBGJeb0su0RlH0zNnv9tnVp4p
	3ESK9M/A==;
Date: Tue, 23 Apr 2024 17:13:50 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZifePjN07o_wqYIC@remnant.pseudorandom.co.uk>
References: <20240414190855.GA12716@openwall.com>
 <354b913bc1c154c1e3a2fc34ed8ed6b0d4641f11.camel@canonical.com>
 <20240419154435.GA7046@openwall.com>
 <ZiKo7shztRpgvAIC@remnant.pseudorandom.co.uk>
 <20240420181211.GA12463@openwall.com>
 <s7YhmQrnIRbmomFiJi0MJSYAPjcHLyd18qqgj0vxVww8pXjjmpmzh_TKTfQe-aLvqDRRXaVowt__uXBXONKKDA48d1uKDyeEuSiH0yM0uUI=@protonmail.ch>
 <20240421200625.GA16869@openwall.com>
 <KN_TQotLatAri5wrOvD-713YsGUE_Slhytf8p8fywmPlELdOZhnceWk_tldcKnaBIBZoJUajwZNkGu6xzj38x6JsQtyMzBpcNwOeHe3fa9E=@protonmail.ch>
 <ZibgVYyI4hQZl1xP@itl-email>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZibgVYyI4hQZl1xP@itl-email>
X-Debian-User: smcv
Subject: Re: [oss-security] Linux: Disabling network namespaces

On Mon, 22 Apr 2024 at 18:10:27 -0400, Demi Marie Obenour wrote:
> Why is the appid read from /.flatpak-info, instead of having the flatpak
> process that spawned the container pass the info to the dbus proxy along
> with the FD used to communicate with the container?

I didn't design this mechanism, so I can't say anything authoritative
about the motivations of its initial designer.

(I would appreciate it if this thread can avoid being derailed into asking
me "why can't you just?" about design decisions that were already made,
by people who weren't me.)

Some factors that may have been relevant:

D-Bus is not the only AF_UNIX-based protocol that can be used by sandboxed
apps to communicate with peers outside the sandbox: some others (subject
to suitable --socket and --filesystem permissions) include X11, Wayland,
PulseAudio, Pipewire, or in principle anything that exposes an AF_UNIX
socket in a well-known location. D-Bus is the only one of these that
currently uses a proxy.

The fact that a D-Bus proxy is necessary is not ideal, and ideally the
message bus would be able to do the firewall-like filtering of messages
itself (subject to Someone™ having enough time to design and implement
that, of course). If the design of Flatpak's interactions with portals
via D-Bus "baked in" an assumption that there will always be a trusted
proxy in the middle, which could be asked for more information about the
connection, then that would prevent us from being able to replace the
proxy with a suitably enhanced message bus at some point in the future.

There is already no D-Bus proxy used if the app has been given direct
access to the session bus - which makes that particular app effectively
non-sandboxed and part of the trusted computing base, so it would be
Very Bad for such an app to be compromised or malicious, but it's still
desirable to be able to query the identity of those apps in the same
way we would for an app that has been effectively sandboxed.

As discussed in this thread, creating new namespaces is a relatively
scary attack surface to be giving to the sort of semi-trusted apps that
you would typically want to sandbox with Flatpak, so even if the integrity
of /.flatpak-info wasn't being used as a security property, we would
probably still want to deny that ability to most Flatpak apps anyway
(on the same basis that Flatpak already uses seccomp to prevent various
more obscure or large-attack-surface syscalls by most sandboxed apps,
for example denying ptrace unless the app has --allow=devel, even though
in principle allowing ptrace "should" be safe).

    smcv
