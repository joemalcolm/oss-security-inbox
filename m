Received: (qmail 25907 invoked by uid 550); 20 Apr 2024 23:14:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23952 invoked from network); 20 Apr 2024 21:33:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=protonmail3; t=1713648791; x=1713907991;
	bh=6MqTYQ1zrYNnPdZ4DPx1N6j6lBx3Ol0GA4yu4+KjiJg=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=bs+xorWpLGbFvEJgcV8zSr6ckOlVlrUkMI1SYG+hh7RwDXzQvyrJSGslZ++vpxv0Z
	 /a5ys5IfQB6SGsRLs+krAd1XwZEILktn5hqietZltfE+3w66kzJE5dGspHos2APb8e
	 Ix845mIXIEHaSEM7DbdsU6jSF6w4QneiFhkeA2+6CIt5ddmCVqX+Icn7bqHv7Wgwy0
	 qnE4e3wARrgMJJq08vB9lxLZq8v7qiY8kksFchV/we6uc5dggq2tnROkQCasdYKOGC
	 gGRR+7MqAwRtWRX8Tx+rGJOIe3EN3m1LwzRrW3cE5qAYO/pWGylQS5qH04gNxEj2Aw
	 dD1YBI4bxBsXg==
Date: Sat, 20 Apr 2024 21:33:07 +0000
To: oss-security@lists.openwall.com
From: Jordan Glover <Golden_Miller83@protonmail.ch>
Message-ID: <s7YhmQrnIRbmomFiJi0MJSYAPjcHLyd18qqgj0vxVww8pXjjmpmzh_TKTfQe-aLvqDRRXaVowt__uXBXONKKDA48d1uKDyeEuSiH0yM0uUI=@protonmail.ch>
In-Reply-To: <20240420181211.GA12463@openwall.com>
References: <20240414190855.GA12716@openwall.com> <354b913bc1c154c1e3a2fc34ed8ed6b0d4641f11.camel@canonical.com> <20240419154435.GA7046@openwall.com> <ZiKo7shztRpgvAIC@remnant.pseudorandom.co.uk> <20240420181211.GA12463@openwall.com>
Feedback-ID: 3367390:user:proton
X-Pm-Message-ID: 4471ccd77db12253d58275cf6e3d3dff190ec7a0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Linux: Disabling network namespaces

On Saturday, April 20th, 2024 at 8:12 PM, Solar Designer <solar@openwall.co=
m> wrote:

> Does bubblewrap maybe already relinquish also the ability to create
> nested namespaces, which it probably could do with seccomp? I guess not
> as that would break its usage to sandbox programs like Firefox that also
> create a namespace for their own sandbox. With namespace creation still
> allowed but capabilities ineffective, I guess such programs maybe could
> still work if they don't need to configure networking in the sandbox.

bubblwrap has --disable-userns option which prevents creation of nested nam=
espaces (from manpage):

       --disable-userns
Prevent the process in the sandbox from creating further user namespaces, s=
o that it cannot rearrange the filesystem namespace or do other more comple=
x namespace modification. This is currently implemented by setting the user=
.max_user_namespaces sysctl to 1, and then entering a nested user namespace=
 which is unable to raise that limit in the outer namespace. This option re=
quires --unshare-user, and doesn't work in the setuid version of bubblewrap.

Flatpak uses this (or seccomp filter) to block nested namespaces as this ca=
n bypass security its design. For this reason firefox own sandbox doesn't u=
se namespaces in flatpak, see https://bugzilla.mozilla.org/show_bug.cgi?id=
=3D1756236

Jordan
