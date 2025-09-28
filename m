Received: (qmail 28421 invoked by uid 550); 28 Sep 2025 14:51:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22360 invoked from network); 28 Sep 2025 14:12:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; s=selector1; bh=gvL6s5DsbE
	abb3JfZRzL3dQrkMuIUHQtV/fW2PkTXBM=; h=date:references:in-reply-to:
	subject:cc:to:from; d=openbsd.org; b=NVq6g+c5bYvtfBY3RxvYHt/RdUNFRrXI2
	OkOEqMiCvyu6vgjRfzHdyaaq3ewfjlE1orudSdAVHJlYVGnn78J6sGi120MGBWnEbcrqOS
	24upl+bdaI40dZk57UE7pqjeXab2djvyrt5bgZcV/Gx67QjNKUmGbLv2zuAH4zuNbdcsok
	g08NEcseLRM8TSwyfKTXDJ2ZprLJ8Tpa9GlYDeMqgo7pEGGinkkAXk37DX3Amaup3+PIHW
	8gchtMa6q/xb3ThIDA3T9pPr3vSpdOyGnsuBP4/B9GkdyM+Ow+1x/yPT04RVTSHsqXB8OP
	UOIbwfixLPmmq+iOZo2P9h7bg61OA==
From: "Theo de Raadt" <deraadt@openbsd.org>
To: Damien Miller <djm@mindrot.org>
cc: "Adiletta, Andrew" <ajadiletta@wpi.edu>,
    Solar Designer <solar@openwall.com>,
    "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
    "openssh@openssh.com" <openssh@openssh.com>,
    "Tol,
    Caner" <mtol@wpi.edu>, "Sunar, Berk" <sunar@wpi.edu>,
    "Doroz,
    Yarkin" <ydoroz@wpi.edu>,
    "Todd C. Miller" <Todd.Miller@courtesan.com>,
    "pgut001@cs.auckland.ac.nz" <pgut001@cs.auckland.ac.nz>
In-reply-to: <c5d66517-f422-1fe7-03a0-d79cf4af1fbf@mindrot.org>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org> <20250923032113.GA14348@openwall.com> < BL1PR01MB772308134BF946DF07159A05C11CA%BL1PR01MB7723.prod.exchangelabs.com@mailhub.eait.uq.edu.au> <c5d66517-f422-1fe7-03a0-d79cf4af1fbf@mindrot.org>
Comments: In-reply-to Damien Miller <djm@mindrot.org>
   message dated "Wed, 24 Sep 2025 15:32:35 +1000."
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Sep 2025 08:12:26 -0600
Message-ID: <76091.1759068746@cvs.openbsd.org>
Subject: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH

Damien Miller <djm@mindrot.org> wrote:

> On Wed, 24 Sep 2025, Adiletta, Andrew wrote:
>=20
> > Hi Alexander and Team,
> >=20
> > Thank your for the interest in our paper, and we appreciate all the
> > feedback. We wanted to address two points - the OpenSSH CVE, and the
> > comments from the OpenSSH community about the practicality of the attac=
k.=C2=A0
> >=20
> > On CVE-2023-51767 (OpenSSH), we did not submit this CVE. Our team
> > coordinates with vendors / software mantainers before submitting CVEs to
> > make sure there is agreement. The CVE description does seem
> > mischaracterized, as this is not a zero-click type vulnability as the C=
VE
> > suggests, and we would not oppose either a revision or other action. We=
 did
> > work with Todd Miller on a SUDO CVE (CVE-2023-42465), of which we worked
> > with him to release a patch.=C2=A0
> >=20
> > However, on the practicality, I do believe that we did not mischaracter=
ize
> > the attack in the paper, and as Alexander concisely mentioned, we are r=
eally
> > trying to emphasize the issues with simple 0/1 flag logic that leads do=
wn to
> > sensitive execution flows.=20
>=20
> Sure, but my criticism at the time was that your paper claimed in
> the abstract to have successfully attacked OpenSSH to bypass
> authentication but what was actually attacked was a modified version
> of sshd run in a highly unrealistic and synchronised setting.
>=20
> IMO this context matters and doesn't detract from your findings.

Andrew, I think you should answer Damien's comment.

I'm a bit more cynical, and think this is very close to open source
community engagement malpractice -- where you picked projects
specifically to increase readership of your paper, and went through the
effort to construct synthetic justification, and I think you should
consider issuing an official apology and/or official retraction of those
statements about OpenSSH being vulnerable.  There you have it, that's my
opinion on this.



