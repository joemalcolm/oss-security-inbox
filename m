Received: (qmail 7638 invoked by uid 550); 8 Apr 2026 15:47:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26540 invoked from network); 8 Apr 2026 13:19:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775654332;
	bh=r+5EOFbG47czBwXMT9p45ftJIliwq6SXBZzVkTIYhHo=;
	h=References:In-Reply-To:From:Date:Subject:To:From;
	b=ZPK0ozsTZBcxSMF4ZYxhLyd8Z1eQd7Rfk7XLS+KMWRwx5jhjzbkqOG6AkqFvtBXyD
	 oaj9e3hK3pMGC5Nt+xiGj9Fz605xq7TF2WKFKqQ5CuaRfjdU8NOb8vHCVWZDHfbTFj
	 8zYsCK/LPKzDMpcf2dkg5oUSfZup5J3QNFLDRWSyWy1hLx2JQpBZDc+aPPlNmAiFNO
	 zfMZos3aQzLN0H8g1SApVl2W0F9t8Gjo+yy0g0Suw1VuNSy3Ilvfdzjb/KBT+Pgyu/
	 64EYQ6IznqkG01UJyM+FhdiIRpcjfRDDPvkD3ifDNHYjXtWHMW8xkVlH1efS3XfPcP
	 7q7+QbuVcLnRw==
X-Gm-Message-State: AOJu0YzRG2R80eWLVPcL89Hdlx2uP7pNenGoQoQGGQO96YXAGfluMG6p
	r/4AbWjoODkZYk7qtnTkBIwL5qKzDc1YG1RGm9K7cDyPIts10gmGgoOljTjvItjD84QVQCYMMxK
	SJskqrBzcbaFLsdTDyoEl6BNizAzocak=
X-Received: by 2002:a05:6a00:369a:b0:82a:79d7:cf6 with SMTP id
 d2e1a72fcca58-82d0da2e035mr20424641b3a.2.1775654331640; Wed, 08 Apr 2026
 06:18:51 -0700 (PDT)
MIME-Version: 1.0
References: <CACmP8U+CbkozUQ1OqxsXMxLgMYvQS85QsWaGtVGBD8BFox34=w@mail.gmail.com>
In-Reply-To: <CACmP8U+CbkozUQ1OqxsXMxLgMYvQS85QsWaGtVGBD8BFox34=w@mail.gmail.com>
From: "Andrew G. Morgan" <morgan@kernel.org>
Date: Wed, 8 Apr 2026 06:18:40 -0700
X-Gmail-Original-Message-ID: <CACmP8ULZ1i=c3zLhT65xWk2h3v6Cc+=e_1oCO=Abm1cJ6JqFUA@mail.gmail.com>
X-Gm-Features: AQROBzDgw2oo2nxXJhrtuAiNyCLCUn7XeK_HiO8PvLl1Z3a9aGptAnvzzCdengs
Message-ID: <CACmP8ULZ1i=c3zLhT65xWk2h3v6Cc+=e_1oCO=Abm1cJ6JqFUA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: libcap-2.77 (since libcap-2.04) has TOCTOU privilege escalation issue

As promised, the advisory (
https://github.com/AndrewGMorgan/libcap_mirror/security/advisories/GHSA-f78=
v-p5hx-m7hh
) and release notes (
https://sites.google.com/site/fullycapable/release-notes-for-libcap?#h.x4zn=
8j3lss6r
) have been updated. I now consider this issue fully public.

FWIW Paul Ivanov tells me he had to fish my last message out of his
Spam folder, so I guess this follow up may have a similar fate.

Cheers

Andrew

On Mon, Apr 6, 2026 at 8:22=E2=80=AFPM Andrew G. Morgan <morgan@kernel.org>=
 wrote:
>
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
>
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
