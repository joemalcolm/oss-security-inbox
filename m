Received: (qmail 28376 invoked by uid 550); 28 Sep 2025 15:39:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26566 invoked from network); 28 Sep 2025 15:31:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; s=selector1; bh=0XcBkQZFR8
	12DM3ajEsLjYAJBPOAAu1RrEcxoVx2aLo=; h=date:references:in-reply-to:
	subject:cc:to:from; d=openbsd.org; b=YPGQVl8CzEKgL1MHML4X8AOPaAaKm4V9h
	U/opBxG6wrgyFgwFbIh7lfs9KHBUPWMkJPzpwAwrEAhNTML5rvwQR+jknRs98Uwk52whb8
	/UnyhSz5DCw5UOr63Iy2WUGLNdXP2Y73wdHRKulve9evSYbkoD+LlpEKfjktzKYvc+cDfN
	BaeON3MYYoJYTA9QKrlqFiEj9WcbBAfLuBgjiRAU7bJEzlF/+oT4rBG92V8v402fLLKvE/
	t+NU4s8H5HK/FFQTjIRORqa19mRcUYn3h+wd3zR5hlyTxZ620BWzt/PxsaFkmNz4iVXpAT
	ZJ/53vd6RcKkyb5YsEAwwxgqOcbwg==
From: "Theo de Raadt" <deraadt@openbsd.org>
To: "Adiletta, Andrew" <ajadiletta@wpi.edu>
cc: Damien Miller <djm@mindrot.org>, Solar Designer <solar@openwall.com>,
    "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
    "openssh@openssh.com" <openssh@openssh.com>,
    "Tol,
    Caner" <mtol@wpi.edu>, "Sunar, Berk" <sunar@wpi.edu>,
    "Doroz,
    Yarkin" <ydoroz@wpi.edu>,
    "Todd C. Miller" <Todd.Miller@courtesan.com>,
    "pgut001@cs.auckland.ac.nz" <pgut001@cs.auckland.ac.nz>
In-reply-to: <BL1PR01MB772375CA93AF5608280A224FC118A@BL1PR01MB7723.prod.exchangelabs.com>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org> <20250923032113.GA14348@openwall.com> < BL1PR01MB772308134BF946DF07159A05C11CA%BL1PR01MB7723.prod.exchangelabs.com@mailhub.eait.uq.edu.au> <c5d66517-f422-1fe7-03a0-d79cf4af1fbf@mindrot.org> <76091.1759068746@cvs.openbsd.org> <BL1PR01MB772375CA93AF5608280A224FC118A@BL1PR01MB7723.prod.exchangelabs.com>
Comments: In-reply-to "Adiletta, Andrew" <ajadiletta@wpi.edu>
   message dated "Sun, 28 Sep 2025 15:22:43 -0000."
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Sep 2025 09:30:38 -0600
Message-ID: <13391.1759073438@cvs.openbsd.org>
Subject: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH

Adiletta, Andrew <ajadiletta@wpi.edu> wrote:

> As far as SSH is concerned there are ways to handle synchronization (we o=
utline them
> in the paper). The POC concept we present in the paper should be acceptab=
le to anybody
> who is fluent in the Rowhammer/microarch attack literature.

I disagree.  I believe your simulation is fake.=20

> There are numerous results
> where the target is slowed down to solve synchronization. We don=E2=80=99=
t brush aside or hide
> the synchronization issue in the paper but discuss it explicitly.

Then why don't you produce exactly such a synchronization without any sourc=
e code
changes, in any actual distribution build system??

It's not that you brush or hide; it is that you overplay the seriousness by
providing an entirely synthetic example.

Unless your document is amended, non-astute readers in the future will
read this as "serious OpenSSH problem" instead of "entirely synthetic
and fake demonstration".

I think you made a mistake choosing OpenSSH as a demonstration target
for reputational benefit, that hand-waving about realistic attacks when
you didn't execute one, and I'm calling you out for what is effectively
academic malpractice.
