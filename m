Received: (qmail 23818 invoked by uid 550); 9 Oct 2023 11:18:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28206 invoked from network); 9 Oct 2023 10:53:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=webweaving.org;
	s=shared; t=1696848791;
	bh=jTjrEMcrMY91gJAMg9myTIs+7bLuvv8E97qh+K9wcWo=;
	h=From:Subject:Date:References:To:In-Reply-To;
	b=FvK6CBOwdyBCv9ttM6nPJMNbJDkX32TZoNauGQ7RFcDf+0Fe1lsYHxm+S1X/a7DjA
	 jH0VLYc0R8wNTaeAz+OYcxqkMIoua6HOGuDrPhCoZxAqWUMUROPrl/xN6CcAdiefGy
	 zCuA58yf4I/UNwhfej9KDFgN1tAm/yxBFHmoedks=
X-Authentication-Warning: weser.webweaving.org: Host fiber.static.cbizz.nl [185.142.248.117] (may be forged) claimed to be smtpclient.apple
From: Dirk-Willem van Gulik <dirkx@webweaving.org>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.7\))
Date: Mon, 9 Oct 2023 12:52:59 +0200
References: <1061E5A7-416D-4C7A-A2CC-AA3617ACAE13@dwheeler.com>
 <20231008101808.54aa75f7@fabiankeil.de>
 <CADxcaYWJSr58Jt4AurxpvMCk3-K_SvfgExn_jnAZ7wyFWQ8ouQ@mail.gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <CADxcaYWJSr58Jt4AurxpvMCk3-K_SvfgExn_jnAZ7wyFWQ8ouQ@mail.gmail.com>
Message-Id: <3C6BAFEB-A4D8-4691-9C7A-76B36B1BB74D@webweaving.org>
X-Mailer: Apple Mail (2.3731.600.7)
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.4 (weser.webweaving.org [148.251.234.232]); Mon, 09 Oct 2023 12:53:11 +0200 (CEST)
Subject: Re: [oss-security] European Union Cyber Resilience Act (CRA)

On 8 Oct 2023, at 22:56, Jean Luc Picard <atari2600a@gmail.com> wrote:

> 'sharing', they'd likely blow a gasket.  It appears it's too late to bring
> in the real industry experts into the committee meetings but not too late
> to make a meaningful difference.  That said, the community at large needs
> to prepare for a lull in rights & freedoms.  Perhaps if it got to a point

While I am not quite sure what qualifies as a `real=E2=80=99 industry exper=
t :) =E2=80=94 fair to assume that over the last 2 years a very sizeable bo=
dy of such domain experts have enagaged with the European Commission, with =
the members (Shadows) of the European Parliament, with the Council (and at =
the national level - as in effect the council =E2=80=98is=E2=80=99 the cabi=
nets/ministers at country level).

This was not just open source [1,2,3,4] but also the industry [5,6]. In par=
ticular.

If you are in any doubt - check the last page of 6 for the =E2=80=98who=E2=
=80=99 =E2=80=94 that is the entire Who-is-who of Europes technical industr=
y and notice that 5 comes from one of the most powerful industry bodies in =
Europe. And know that the interaction was not just `an email=E2=80=99 or a =
`like=E2=80=99 =E2=80=94 but involved may face to face meetings, in Brussel=
s.

At this point I think it is fair to assume that the policy makers understan=
d the impact the CRA can have on this industry.=20

And that they are (fairly!!, that is their role) trading this impact agains=
t the damage that bad software/security practices of our industry is doing =
to society.  Which is also considerable.

Much like, in the latter half of the previous century, society introduced t=
hings such as safety belts, roll-cages and crumple zones for cars =E2=80=94=
 accepting that it would literally decimate a very large industry; allowing=
 only a few large (combined brand) players to survive. And making cars 10-3=
0% more expensive.

My reading is that part of  =E2=80=98forcing=E2=80=99 the CRA on open sourc=
e is their hope that this will make it cheaper and more `do able=E2=80=99 f=
or SME=E2=80=99s in Europe to implement the CRA. I.e. move the =E2=80=98cos=
t=E2=80=99 of CRA compliance `upstream=E2=80=99 =E2=80=94 away from the dow=
nstream*. And, perhaps, their hope is that the open-source is soo crucial t=
o the industry - that industry will simply fund this**, ***.

Obviously it is galling that open source (say, at the ASF),  is usually NOT=
 the one patching & fixing late - au contraire) =E2=80=94 but we are part o=
f this industry & often the foundation of it all.

Also note that the CRA is the `light=E2=80=99 one, impact wise.=20

The real sizzler for the industry (and not so much for Open Source)  is the=
 Product Liability Directive =E2=80=94 that introduces `strict liability[7].

With kind regards,

Dw=20


1: https://news.apache.org/foundation/entry/save-open-source-the-impending-=
tragedy-of-the-cyber-resilience-act
2: https://eclipse-foundation.blog/2023/02/23/cyber-resilience-act-good-int=
entions-and-unintended-consequences/ (and a lot of others)
3: https://blog.sonatype.com/eu-cyber-resilience-act-good-for-software-supp=
ly-chain-security-bad-for-open-source
4: https://www.linuxfoundation.org/blog/understanding-the-cyber-resilience-=
act
5: https://www.vda.de/dam/jcr:888e90b1-84dc-4660-a266-f246a141112f/VDA%20Br=
ief%20position%20FOSS_EN.pdf?mode=3Dview
6: https://cdn.digitaleurope.org/uploads/2023/09/DIGITALEUROPE_Building-a-s=
trong-foundation-for-the-CRA_key-considerations-for-trilogues.pdf
7: Using the USA term for this; `when a defendant is fully liable for the e=
ffects of its product regardless of what the expected/intended when putting=
 it on the market=E2=80=99

*: Ignoring the rather large issue that, like `trust not being transitive=
=E2=80=99 =E2=80=94 notified bodies/certification authorities generally do =
not allow such/look at the final step.
**: And there is this assumption; based on the high 100=E2=80=99s if not mi=
d 1000=E2=80=99s of millions put into open source foundations by big-tech -=
 that they are already funded well enough as it is.
***: my personal expectation is the opposite; the two or three main players=
 in this industry may well fund this only for their own clouds & and simply=
 tell the punters that you must run on platform X or Y in their cloud in or=
der to be compliant.=
