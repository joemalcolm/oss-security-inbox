Received: (qmail 23565 invoked by uid 550); 2 Apr 2026 17:13:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22501 invoked from network); 2 Apr 2026 17:13:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=dwheeler.com; s=selector2; h=To:References:Message-Id:
	Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:
	Content-Type; bh=UcmGlfOgYrvsvIDvit10Gjnt+OuNXuzMnfLphsUlBpw=; b=S0fAboPKL4o0
	/yINLUtbT8aAc8xGQZ3YrAYN2GzEqja5wPadcPUKFtJ5cj3HmHfryOJHwrIb8OSYt/9CBQyMoZ8Gw
	epZgIaI8zlV7TAD8r459YrQEBh5Yw7pvCYh/rtvbNp+V6nReWNN+0PXqU4Mel2UeOE6qg2uRh26kU
	STtcF9hiTWm+t6nzMrJDNFyZvyqgg769Cj5CZDiVVKfS15m74bZJjW4LeyWyHFUGW8aQfTa3Uksyl
	jsiYo+90t8Lns8GzqCCN9y2Zpdt8DiCBteCUMADzma/vJdXmus+fkoCIcLbiOG3xx3ZPZXlpdpbp/
	prB7TP6slkfUKlRz/pWmYg==;
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51.11.4\))
From: "David A. Wheeler" <dwheeler@dwheeler.com>
In-Reply-To: <aczNMPPQfRFBWOBy@256bit.org>
Date: Thu, 2 Apr 2026 13:12:58 -0400
Cc: Demi Marie Obenour <demiobenour@gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <A958E069-337B-452C-972B-2833B01835C1@dwheeler.com>
References: <aco9Ai89pj+OQ0YS@256bit.org>
 <e1cbe881-2d13-442f-8977-39baaad84ec8@gmail.com>
 <acvvA2uP7s/aGD9q@256bit.org>
 <712E645E-3EDB-4D8B-916F-C3B4320E4DB0@dwheeler.com>
 <aczNMPPQfRFBWOBy@256bit.org>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3776.700.51.11.4)
Subject: Re: [oss-security] [vim-security] Vim tabpanel modeline escape
 affects Vim < 9.2.0272



> On Apr 1, 2026, at 3:45=E2=80=AFAM, Christian Brabandt <cb@256bit.org> wr=
ote:
>=20
>=20
> On Di, 31 M=C3=A4r 2026, David A. Wheeler wrote:
>=20
>> Until that's fixed, vim users should edit ~/.vimrc to add:
>> set noshowmode
>=20
> I guess you mean :set nomodeline

Yes, nomodeline, sorry for the error. You *can* say ":set" but it's
conventional to omit the colon prefix.

I did find this gem in vim ":help modeline":

> Still, there is always a small risk that a modeline causes trouble.  E.g.,
> when some joker sets 'textwidth' to 5 all your lines are wrapped unexpect=
edly.
> So disable modelines before editing untrusted text.

If vim just has a weird display, instead of executing programs, I guess
it's arguable that this isn't "insecure by default". But this at least teet=
ers close to it.
When people use a text editor, they're not trying to think
through trust boundary issues & exactly where the file originally came from.
Presuming people will add special options to use vim on a file is asking to=
o much.

At the very least, its implementation has been shown to be brittle,
and it's documented that you shouldn't be using this on files you can't
totally trust.

I think it's best to disable this functionality for now.
Perhaps it should be disabled by default until it has a better
self-protection mechanism. The default should only allow specific fields
with specific permitted value ranges, so that attackers can't mess with peo=
ple.
A 'textwidth' of 5, set without user approval, sounds like a bad idea.
Tabs are pretty much only a few valid values; I doubt "250" is a reasonable=
 one.

If someone really wants the existing modeline behavior, an "insecure modeli=
ne" option
would make sense, but I bet most users would not enable it.

--- David A. Wheeler

