Received: (qmail 14137 invoked by uid 550); 29 Sep 2023 13:16:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14114 invoked from network); 29 Sep 2023 13:16:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1695993382; bh=N2K8nHH4FebXjJXmyUpANvJXYhDy5DMXQTI8NuLD3W4=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=GVWbj5Eoi+I9auM4crtk7jXVuyBO069tfQkd73ZSKK9FBq02tiYVlj0DfG6SskE+A
	 MVevO90FccqHhPYhtmyBm7I3qOi8N8MZ14nSlTYhLBDG30OpaD2+9SYqvlXP6S0iRu
	 PMYr8wIm/bw0OKVdEGE0vSLWEGY8HNCA0MRfHGT8=
Message-ID: <22398fb96f04bf431b3ed0e4778e1cfcd64046ea.camel@orlitzky.com>
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Date: Fri, 29 Sep 2023 09:16:21 -0400
In-Reply-To: <ZRXlPoozp5n+cWv1@itl-email>
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
	 <ZRXlPoozp5n+cWv1@itl-email>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 
MIME-Version: 1.0
Subject: Re: [oss-security] CVE-2023-5217: Heap buffer overflow in vp8
 encoding in libvpx

On Thu, 2023-09-28 at 16:42 -0400, Demi Marie Obenour wrote:
>=20
> How long will it take for corporations to accept that writing media
> codecs in C, C++, or any other memory-unsafe language is a fundamentally
> bad idea, and that it is better to rewrite the codecs in a safe language
> (such as Wuffs or Rust) than to try to secure the existing ones?

How long will it take for rust to quit changing the language,
standardize itself, and enforce some notion of API/ABI stability? The
thing we've already had with C and C++ for decades? As a result of the
language's instability (and their attempt to hide it with a "package
manager"), every rust package wants to install a gigabyte of bundled
dependencies that are all pinned to old versions.

Software engineering is a fractal. Memory safety inside a language is
obviously desirable, but not if other design choices force everyone to
go back to bundled libraries and static linking. The state of rust is
that it's fun to write, but awful to use. If you want me to switch from
C to another language, then projects written in that language can't be
a nightmare to distribute and maintain.

The situation is identical to how, ten years ago, we were going to
rewrite everything in Haskell. Haskell has the same pro/con list as
rust. But they never figured it out either. Every new release broke a
ton of code, and so version constraints became so tight that you
couldn't install more than a few programs at once without bundling. The
resulting treadmill was never-ending. Once "this is cool!" wore off,
everyone was left with "this is a waste of time."

Maybe someone at $corporation has figured out that rust is wasting
their time.

