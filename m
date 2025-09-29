Received: (qmail 27685 invoked by uid 550); 29 Sep 2025 14:20:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1539 invoked from network); 29 Sep 2025 04:10:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; s=selector1; bh=ioDgnFrar5
	leFRvxcv2t+KinAIdfbB6BBINoEGPUCWw=; h=date:references:in-reply-to:
	subject:cc:to:from; d=openbsd.org; b=71jgvrOcA1cfh5B5zcBNAI3lwwi5EuPVj
	12pKfmpYmI0wwYIZRygRp1taeuaQg98vnXbhAOSVb9y/Qs8Ei/B5eOvIJ2gvVgX3ERp02i
	cYhpXVYYFAR193paNAzuR6/OuoyOXkXDB2v/bmYgxDN1t4cQ6ioOVOQVWvlcO4lUv0cO14
	xw03RU+5reh40siVun/YgGHgANUdgMEM5o1aeidkRK2uYY/wO5WgXBPm2a+jMgRmbC9abU
	jFbrtxcskc1j2fH/WDHHuMyDCTYtklLRvKRAh/fk2Kmpu3dN8ZiOyG6ZWIJoEc6O4lyZkg
	nzZNytHCDp2F02R3EZQljla/rpd9A==
From: "Theo de Raadt" <deraadt@openbsd.org>
To: Peter Gutmann <pgut001@cs.auckland.ac.nz>
cc: Damien Miller <djm@mindrot.org>,
    "Adiletta,
    Andrew" <ajadiletta@wpi.edu>,
    Solar Designer <solar@openwall.com>,
    "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
    "openssh@openssh.com" <openssh@openssh.com>,
    "Tol,
    Caner" <mtol@wpi.edu>, "Sunar, Berk" <sunar@wpi.edu>,
    "Doroz,
    Yarkin" <ydoroz@wpi.edu>,
    "Todd C. Miller" <Todd.Miller@courtesan.com>
In-reply-to: <ME0P300MB07138B071567B325B2498105EE1BA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org> <20250923032113.GA14348@openwall.com> < BL1PR01MB772308134BF946DF07159A05C11CA%BL1PR01MB7723.prod.exchangelabs.com@mailhub.eait.uq.edu.au> <c5d66517-f422-1fe7-03a0-d79cf4af1fbf@mindrot.org> <76091.1759068746@cvs.openbsd.org> < BL1PR01MB772375CA93AF5608280A224FC118A%BL1PR01MB7723.prod.exchangelabs.com@mailhub.eait.uq.edu.au> <9c5ab4b0-4ddb-ca3d-85e2-d47f058f7f73@mindrot.org> <ME0P300MB07138B071567B325B2498105EE1BA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
Comments: In-reply-to Peter Gutmann <pgut001@cs.auckland.ac.nz>
   message dated "Mon, 29 Sep 2025 03:57:52 -0000."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <58294.1759119005.1@cvs.openbsd.org>
Date: Sun, 28 Sep 2025 22:10:05 -0600
Message-ID: <69192.1759119005@cvs.openbsd.org>
Subject: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH

Peter Gutmann <pgut001@cs.auckland.ac.nz> wrote:

> The general feeling was that it's best just to grin and bear it, you're going
> to get them at some point no matter what you do.

This is about two things:

1. a false claim of succesfull exploitation of OpenSSH in a paper.
2. a false claim based upon that paper lands in a CVE.

You are only talking about point 2.  We are talking about point 1 also.

We don't need to grin and bear either, but especially point 1.
