Received: (qmail 32594 invoked by uid 550); 7 Apr 2026 20:54:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17635 invoked from network); 7 Apr 2026 20:14:52 -0000
Date: Tue, 7 Apr 2026 22:14:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seltendoof.de;
	s=2023072701; t=1775592883;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=g7jAELfMEoP5A3WqGgazyb4qM6JVeM8+XIjMNhRHBew=;
	b=oY9nQpOR0AgkHPVSqRxupDxjyD74xwPkrFMBdeKVQs01swYyIEcoSYDn3UTt/i/4WXUxnN
	GfFdzVVC8nsU5xMoAKpXU5nJsvnT23g557TCRLFjchnuDcpjRTSEOeQMV3awRb6R6E9c8P
	qpMt69B4rZCwa84axtpw2aS2PjHhWzIV34ktWYf3QYD8s+Fu+4tnZqGYZkUa5TB56ownGr
	YlX00HoL96MAKjkaB4R0x3kOj0FLUG/jXxXCLD9ialAHYK9J2mUxLJ0wbPWlSWZcoLvVxn
	xdbs0XZRuQiOuc4ffyVa5H7YTlIkHULlwP/Tg1Zvkib0V+3ARCOPhh8tgmMn6g==
From: =?UTF-8?Q?Christian_G=C3=B6ttsche?= <cgoettsche@seltendoof.de>
To: oss-security@lists.openwall.com
Message-ID: <fa4662c4-ce58-48ec-85a4-b0272ca9931a@seltendoof.de>
In-Reply-To: <CACmP8U+CbkozUQ1OqxsXMxLgMYvQS85QsWaGtVGBD8BFox34=w@mail.gmail.com>
References: <CACmP8U+CbkozUQ1OqxsXMxLgMYvQS85QsWaGtVGBD8BFox34=w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Correlation-ID: <fa4662c4-ce58-48ec-85a4-b0272ca9931a@seltendoof.de>
Subject: Re: [oss-security] libcap-2.77 (since libcap-2.04) has TOCTOU
 privilege escalation issue

Apr 7, 2026 18:54:22 Andrew G. Morgan <morgan@kernel.org>:

> Hi,
>
> I've just released libcap-2.78 which includes a fix for a TOCTOU issue
> in libcap.
>
> The issue has been allocated the following code: CVE-2026-4878. It is
> the subject of this private bug:
> https://bugzilla.redhat.com/show_bug.cgi?id=3D2447554 and is also
> written up in a github.com advisory which I will publish on Wednesday
> (this week). The github advisory tool characterizes the issue as
> CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I:H/A:H (Severity: Moderate 7 /
> 10).
>
> The fix for pretty much that whole range of libcap releases is this commi=
t:
>
> https://git.kernel.org/pub/scm/libs/libcap/libcap.git/commit/?id=3D286ace=
1259992bd0c5d9016715833f2e148ac596

Hi,

the new code suppports changing the file capabilities of all kinds of files=
 (not just regular)(given that the caller has read permissions).
Is that intended?

Best regards,
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Christian G=C3=B6ttsche


> As the code is publicly available, there is no embargo in place for
> releasing fixes.
>
> Cheers
>
> Andrew
>
> PS I tried a few times to post to the private openwall list about this
> issue 9 days ago, but my email bounced (likely because I couldn't
> effectively follow the mail formatting requirements). I might have
> realized that the emails were bounced if gmail hadn't silently placed
> the bounced replies in my SPAM folder. Sorry about that.

