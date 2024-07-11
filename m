Received: (qmail 7431 invoked by uid 550); 11 Jul 2024 12:39:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26337 invoked from network); 11 Jul 2024 07:08:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=corsac.net; s=2021;
	t=1720681600; bh=PawgDtHUKSKBR8Shbr7TW4MGPa08nxpDvlS9HZDrnYc=;
	h=Subject:From:To:Date:In-Reply-To:References:From;
	b=lG+lIhnmJ7203pl7c2QihyuIkoiv9tgtQMDes7J4+9pQPanSvHamgXgAhiVP/8L2i
	 on679CFX592Gm6KeHK8K9+TE3xUbVQsAOL5+Q0XcGnXQO6ClQo/heZUf2VoQpIKfAk
	 X/0OQZk8XdznDfX9nwBHRbR2NSc7De/SL+eORhuc14nnYWYyNgt+k2ZZiqSY7BWOq7
	 3QMaOteokVdzwcKxL4rWbloLVDuSywTG5aBPuVNDLtIiUWyF9CaV/8KKDLBjOBHYMd
	 iQyIkbAGVGjwjuQKX2waimErdQMu0+6s4XhCI+wW46DJSZygljO1g8LN98OuZsYKm8
	 M8XkFQ0fDWECg==
Message-ID: <3a3e9afa77884b05733a5cdfc3eaa65defa45fa4.camel@corsac.net>
From: Yves-Alexis Perez <corsac@corsac.net>
To: oss-security@lists.openwall.com
Date: Thu, 11 Jul 2024 09:07:57 +0200
In-Reply-To: <bda1ece8-8302-4a04-9f16-c78b51b0dbb2@analygence.com>
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
	 <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org>
	 <bda1ece8-8302-4a04-9f16-c78b51b0dbb2@analygence.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-1 
MIME-Version: 1.0
Subject: Re: [oss-security] ASLRn't is still alive and well on x86 kernels,
 despite CVE-2024-26621 patch

On Wed, 2024-07-10 at 17:39 -0400, Will Dormann wrote:
> Linux 6.9.7 was released in June2024, and the patches for CVE-2024-26621=
=20
> went in months before that.=C2=A0 This behavior matches my 3rd bullet poi=
nt=20
> above, so I think everything is as expected here.=C2=A0 ("... will random=
ize=20
> the load address of large libraries loaded by 32-bit apps.")

Right.
>=20
> If you want to see the lack of randomization, try the test with an x86=20
> kernel, not amd64.

I don't have one at hand unfortunately, but I'll try setting up a VM or
something just to be sure. Thanks.

I think there are not a lof of *modern* IA-32 installations, especially on
=E2=80=9Cgeneric=E2=80=9D distributions, but there might still be some in n=
etwork appliances
or something.

I guess setting vm.mmap_rnd_bits (or CONFIG_ARCH_MMAP_RND_BITS) to 16 at le=
ast
helps on those platforms (like they did on Ubuntu) but I wonder if a fix (o=
r a
revert) in the kernel would be better (do we really need the alignment perfs
on IA-32 kernels?)

Regards,
--=20
Yves-Alexis
