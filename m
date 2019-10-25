X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1692" "Friday" "25" "October" "2019" "20:52:02" "+0200" "Julien Lepiller" "security@lepiller.eu" "<20191025205144.231de493@sybil.lepiller.eu>" "43" "Re: [oss-security] Formal verification of open source software" "^Date:" nil nil "10" "2019102518:52:02" "[oss-security] Formal verification of open source software" (number mark "        security@lep Oct 25   43/1692  " thread-indent "\"Re: [oss-security] Formal verification of open source software\"\n") "<CAGUWgD-Dhg-ORKcT5=rV5Dpz=6J0DAaOOHA5SaZ=HMPfvuZBmw@mail.gmail.com>" ("<CAGUWgD_5HCt1T7ck4ai1=8Tn4L5nnGDiEvGdTdt_jMTD0ziK=A@mail.gmail.com>" "<20191025141540.10b322fe@computer>" "<CAGUWgD-Dhg-ORKcT5=rV5Dpz=6J0DAaOOHA5SaZ=HMPfvuZBmw@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Formal verification of open source software" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1825 invoked by uid 550); 25 Oct 2019 18:59:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32079 invoked from network); 25 Oct 2019 18:52:18 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=lepiller.eu; h=date:from
	:to:subject:message-id:in-reply-to:references:mime-version
	:content-type:content-transfer-encoding; s=dkim; bh=eiBDMe5jAxw8
	lFyItHV3vTl8GBA=; b=YgMRDj3n0guXSYD4/jTVSQ+5f5Pww12wo7LwA48O7owL
	2IzxhUzPcd+UzH3xL3rpJodxPz1ag/csZY0J8TjPzjczmQ4YP/Y8EaO4GQBO+MWR
	zwjooIdKxRR3udGZr1GBj2rGuL/WpCh8rVN5X+odACUS3Crb4I4hqNcVe3lBp552
	izYCadyOFt/MOY5mgPPsKFWhtDUg+ieT3DLqZzdFPxlM8sc+m1mUcxBnQrtSDbyr
	aVpyDv43C117J+ZETfwZua8c7zSkaSnwn4br+SXHC0cMok5FnoW7Of8SLrxDkk8o
	VoX4kjfT8jh/ESOo19MEMMyXOxW0aw4NbH5CTueY0g==
Message-ID: <20191025205144.231de493@sybil.lepiller.eu>
In-Reply-To: <CAGUWgD-Dhg-ORKcT5=rV5Dpz=6J0DAaOOHA5SaZ=HMPfvuZBmw@mail.gmail.com>
References: <CAGUWgD_5HCt1T7ck4ai1=8Tn4L5nnGDiEvGdTdt_jMTD0ziK=A@mail.gmail.com>
	<20191025141540.10b322fe@computer>
	<CAGUWgD-Dhg-ORKcT5=rV5Dpz=6J0DAaOOHA5SaZ=HMPfvuZBmw@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-unknown-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 25 Oct 2019 20:52:02 +0200
From: Julien Lepiller <security@lepiller.eu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Formal verification of open source software
To: oss-security@lists.openwall.com

Le Fri, 25 Oct 2019 18:37:44 +0300,
Georgi Guninski <gguninski@gmail.com> a =C3=A9crit :

> On Fri, Oct 25, 2019 at 3:17 PM Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
> >
> >
> > There's been a lot of work in the crypto community in this
> > direction. Most of it is code under OSS licenses:
> >=20=20
>=20
> Thanks for the links.
>=20
> Are there known bugs in formally verified software or hardware?

Hi, I think it's my first time writing to the list :)

CompCert is not FOSS, but it's a verified compiler. This paper:
https://www.cs.utah.edu/~regehr/papers/pldi11-preprint.pdf
tried to find bugs in multiple C compilers. Here is what they say about
CompCert:

"The striking thing about our CompCert results is that the middle-
 end bugs we found in all other compilers are absent. As of early 2011,
 the under-development version of CompCert is the only compiler we
 have tested for which Csmith cannot find wrong-code errors. This is
 not for lack of trying: we have devoted about six CPU-years to the
 task. The apparent unbreakability of CompCert supports a strong
 argument that developing compiler optimizations within a proof
 framework, where safety checks are explicit and machine-checked,
 has tangible benefits for compiler users"

(they have found a few bugs in unverified parts of the compiler,
though)

So there is a real impact of formal methods on program correctness. I
don't know much about other verified software, so I'll be happy to read
anything about bugs in them.

>=20
> Is there any software which comes with monetary warranty?
>=20
> Are loops sizes in C code serious problem for verification?
> (something like infinity in math. IIRC Coq have problem with this).
