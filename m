Received: (qmail 29968 invoked by uid 550); 22 Apr 2024 14:38:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22157 invoked from network); 22 Apr 2024 14:34:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=protonmail3; t=1713796441; x=1714055641;
	bh=saQsA2hE3TZmuYSqgBTY6vRmrYjt6O/YrmoxDHcax9s=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=e/6Dk3BNTy0k5aeMkKy3H4drQnId1+MEgKLqHsIsFS35mAvQ/dq2Xqt38ZZ6lGlcK
	 6xnDZfJU/LQ5F6LSCGhIDuR1tmqJ2dD+DMErIGzYLlJTcJI6NCQn+9qcxfV6TcIu/E
	 fjA1jvwaB2gYJDdZ/S5M17EY3qPe6BLybhhIMFQYzBmNjL69HrzNe8XXdZnaCUBfLp
	 r/9O7zVW/N6kihXS4DIbtXrBa1MEQH/gVOxQ7EKWf0gb9oVVhL93WMsiOgLVYrRXQH
	 w+BZp2UfF0T57OvP2WtyRHCaWppqsPmgeNjABjne3XnrN89pHKZHAeuME5R+8B3sY5
	 Oi5GN2ED4F0uQ==
Date: Mon, 22 Apr 2024 14:33:56 +0000
To: oss-security@lists.openwall.com
From: Jordan Glover <Golden_Miller83@protonmail.ch>
Message-ID: <KN_TQotLatAri5wrOvD-713YsGUE_Slhytf8p8fywmPlELdOZhnceWk_tldcKnaBIBZoJUajwZNkGu6xzj38x6JsQtyMzBpcNwOeHe3fa9E=@protonmail.ch>
In-Reply-To: <20240421200625.GA16869@openwall.com>
References: <20240414190855.GA12716@openwall.com> <354b913bc1c154c1e3a2fc34ed8ed6b0d4641f11.camel@canonical.com> <20240419154435.GA7046@openwall.com> <ZiKo7shztRpgvAIC@remnant.pseudorandom.co.uk> <20240420181211.GA12463@openwall.com> <s7YhmQrnIRbmomFiJi0MJSYAPjcHLyd18qqgj0vxVww8pXjjmpmzh_TKTfQe-aLvqDRRXaVowt__uXBXONKKDA48d1uKDyeEuSiH0yM0uUI=@protonmail.ch> <20240421200625.GA16869@openwall.com>
Feedback-ID: 3367390:user:proton
X-Pm-Message-ID: d70026ac8919d5e4975acbe4f857764941f8dff8
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Linux: Disabling network namespaces

On Sunday, April 21st, 2024 at 10:06 PM, Solar Designer <solar@openwall.com=
> wrote:

> In what exact way would nested namespaces bypass the security design of
> Flatpak? Is this about the kernel's attack surface exposed by
> capabilities in a namespace or something else? I guess capabilities are
> also dropped in the nested namespace?

In flatpak, apps in container communicate with host through portals[1] usin=
g dbus.
Portals identify particular app through unique appid (i.e. "org.mozilla.fir=
efox"
for firefox) and grant some permissions according to that. appid is read fr=
om
/.flatpak-info that exist inside container and is immutable there. If names=
paces
were available inside sandbox then malicious app could leverage mount names=
pace
to mount crafted /.flatpak-info containing arbitrary data and lie to the po=
rtal
about appid - it could tell portal that it's org.mozilla.firefox when it is=
n't.

[1] https://github.com/flatpak/xdg-desktop-portal

Jordan
