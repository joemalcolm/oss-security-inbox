Received: (qmail 20461 invoked by uid 550); 19 Oct 2023 18:00:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18181 invoked from network); 19 Oct 2023 17:17:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sambull.org; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm1; t=1697735830; x=1697822230; bh=ZV
	PhjbI3fQXFs1zzrtFmMrFIvBnVG7WdidPHPkbEctU=; b=iSo6UIRYHgrFscnkLQ
	DVp4PEXu+MgP2MsEjOxc5aXjfMtvdK83EHJs5sflaJYX6a5ONJ18zrnfB8maW3eX
	Dp0ExITJ+WlKWyh3v7JSrz8JsqMC0+bsKWwxkdjOHdJJX8rDoSTFqc0aj6+kvJAh
	Sa8iqyxBobaqCZYLX4BOGlys+kyQq/Fws+0HsVWhQnFBw4S8rsDF10J0AP9/C2tI
	wI+CYVff222Ah3uu5PtYq5k1codmVdLoQ3KbB8M96P+8d3FHhx1qfpvjQmnr3RAL
	E63xD7vW+RNgE/xMLn75VRHwonGRsiMphRueDVMOYfin9CnMloDopidtJfMGYGM5
	MabA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1697735830; x=1697822230; bh=ZVPhjbI3fQXFs
	1zzrtFmMrFIvBnVG7WdidPHPkbEctU=; b=KaHczolljD5oaASCcB70LWPjS1tlu
	h9sp5A5X33ZJKB0sQMWmmsfx67LNpI92dlJ338qDN1zNN/FiXM2+PCBZYozzdfd5
	qEiUpNpA4MrQdJTEnV2BX58z6rPPA8QpH4DIv10EKSEipsrn8q624RSgNW6pWA8X
	lBz0ig2VSL00gb1rmpum8263/LFcYhj8MG8BfJM6ZYgJxk1IAr6vKzk2okPxE9Qn
	hoCKxyIKQgMukodYLMALWQYxZVqQUH8W7R1p/V7kdECNSdpGFHjldYvqFxgZORdA
	J/G8WRtEmqab5JT7xgQoKvB/AFl53pN0PUUYHcVe6La8xkEq4Vs3s4dNg==
X-ME-Sender: <xms:lmQxZaHUj-gbSn2aIqIWwgwbFuU6Ucu9WFVYf0t-8PgUr4aOvgNG6Q>
    <xme:lmQxZbVKqChImao8o-Frkzx5wKBw77cNnT1UWXf5bFnUGn3tDvS-NDH0NByd_Rdsf
    KxwU6g659Sr8A>
X-ME-Received: <xmr:lmQxZULFAk9rV_pqGP2gO2tLEqkYjKrNuODng1YwLYImaOweuLVioW2L_KXOd67xUU3iV-MCFsXXsEYA09MU-_VI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrjeeigddutdelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefkuffhvfffjghftggfggesghdtre
    ertderjeenucfhrhhomhepufgrmhcuuehulhhluceolehmudellehisehsrghmsghulhhl
    rdhorhhgqeenucggtffrrghtthgvrhhnpeekfeethfejgeehhfegieffgfdugfdvgfduje
    dtheefhffgudeiveejjeehgfduvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
    mhepmhgrihhlfhhrohhmpeelmhduleelihesshgrmhgsuhhllhdrohhrgh
X-ME-Proxy: <xmx:lmQxZUG1InvSL_OrGpR8n1kfteCszq405KY2cB87M0BnQEYq0iE74g>
    <xmx:lmQxZQVXz07A4BVchvEHgwrEJHKaRMRSX9RVwKe-YLChVLryIOD6jQ>
    <xmx:lmQxZXMn-eWaL_Dn0QB5w9ekJu14rWsf8wD7BFvMSnkEwt1AtVambQ>
    <xmx:lmQxZZeItpB1A94SFhDeJqAMiS0fJJuR-5Izf5ZtURcij7u1E8SZzg>
Feedback-ID: ie6294588:Fastmail
Message-ID: <7c9b118c6c5280ae9331628449449f0ac1a32b17.camel@sambull.org>
From: Sam Bull <9m199i@sambull.org>
To: oss-security@lists.openwall.com
Date: Thu, 19 Oct 2023 18:17:00 +0100
In-Reply-To: <20231019164504.3Q5r4%steffen@sdaoden.eu>
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
	 <bb8d7948-912c-0c96-6a7e-2f05a4cabfd0@tnetconsulting.net>
	 <d85658c838a1338c829cee30fb9c344688a2a470.camel@sambull.org>
	 <20231019164504.3Q5r4%steffen@sdaoden.eu>
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-P0nLhteeDQcTQSTJzMUh"
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you
 anytime

--=-P0nLhteeDQcTQSTJzMUh
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2023-10-19 at 18:45 +0200, Steffen Nurpmeso wrote:
> Sam Bull wrote in
>  <d85658c838a1338c829cee30fb9c344688a2a470.camel@sambull.org>:
>  |On Wed, 2023-10-18 at 13:25 -0500, Grant Taylor wrote:
>  |> I think that this is more a problem with X11 security than it is a=20
>  |> problem specific to Mozilla / Firefox.
>  |
>  |Also a problem with shell security. If you paste something with line \
>  |breaks into bash, it
>  |executes them. If you paste the same into fish, it doesn't (it'll displ=
ay \
>  |the multi-line
>  |input and expect you to hit the enter key to execute it as a command).
>=20
> That is plain not true

OK, the behaviour on my terminal is completely different depending solely o=
n which shell I
use:

   s@s-laptop ~> bash
   s@s-laptop:~$ That is plain not true, but depends on the "bracketed past=
e" mode

   Command 'That' not found, did you mean:

     command 'phat' from deb phat-utils (1.5-3build2)
     command 'chat' from deb ppp (2.4.7-2+4.1ubuntu5.1)
     command 'jhat' from deb openjdk-8-jdk-headless (8u382-ga-1~20.04.1)

   Try: sudo apt install <deb name>

   s@s-laptop:~$ of readline which in turn depends on the terminal (emulato=
r) and
   bash: syntax error near unexpected token `('
   s@s-laptop:~$ likely even upon the ncurses library.
   likely: command not found
   s@s-laptop:~$ See bash(1) (Readline Variables, enable-bracketed-paste, d=
efault
   bash: syntax error near unexpected token `('
   s@s-laptop:~$ on).  Btw Mr. Dickey (ncurses, xterm, vile, etc) has an
   bash: syntax error near unexpected token `)'

   s@s-laptop:~$ fish
   s@s-laptop ~> That is plain not true, but depends on the "bracketed past=
e" mode
                 of readline which in turn depends on the terminal (emulato=
r) and
                 likely even upon the ncurses library.
                 See bash(1) (Readline Variables, enable-bracketed-paste, d=
efault
                 on).  Btw Mr. Dickey (ncurses, xterm, vile, etc) has an
                 informative page on this:


> That observation may be outdated. At least my bash 5.2.15 on Debian

Yes, I'm on an older release still, so maybe it has been fixed in the past =
3 or so years.

--=-P0nLhteeDQcTQSTJzMUh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQS7LDpjuw7VQ6ct5tdf6SjNlibOKwUCZTFkjAAKCRBf6SjNlibO
K4w+AKCejQiUAVEE9XM12ovsNcMdcKIv5QCbBq5mekaErb856pI26Tyi/i9L5VE=
=NpA+
-----END PGP SIGNATURE-----

--=-P0nLhteeDQcTQSTJzMUh--

