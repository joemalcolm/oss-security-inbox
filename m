X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3037" "Friday" "19" "March" "2021" "10:43:11" "-0400" "Brad Spengler" "spender@grsecurity.net" nil "74" "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       spender@grse Mar 19   74/3037  " thread-indent "\"Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27883 invoked by uid 550); 19 Mar 2021 17:35:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5269 invoked from network); 19 Mar 2021 14:43:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=grsecurity.net;
	s=mail; t=1616164991;
	bh=nL2LQuizxqIAIUgJkVdBROF/0O+EeTJAMkj7AyCuRyc=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=ued9cDbLwVoThao/sYf6LPla6YBsrrAZOlvdeqrHUDx1OcvWW+d8/BUzlPVa+Gyx/
	 m4rvkHlKpFJnifI2tCabCdGDrbZ2qLkIE7D6Vm0oGilWfy2V7wraIvUh7rRAwYvZh/
	 7JjhzL4nZLUrXRydjj8CLzrv1mlxeBhuAablucyY=
Date: Fri, 19 Mar 2021 10:43:11 -0400
From: Brad Spengler <spender@grsecurity.net>
To: oss-security@lists.openwall.com
Message-ID: <20210319144311.GA22152@grsecurity.net>
References: <CAKx+4-pR3JScgA-PJFSwkAw6B8xiXYWFtVD6rEYp2wnJjyCogw@mail.gmail.com>
 <YFNCtWmsYrtYQeEJ@kroah.com>
 <YFOLo/QrlgIrFotJ@wopr>
 <YFOc8bhUAKOgjfVS@sashalap>
 <20210318192136.GA6178@openwall.com>
 <YFSyTOoNtyrQvrH3@sashalap>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bp/iNruPH9dso1Pn"
Content-Disposition: inline
In-Reply-To: <YFSyTOoNtyrQvrH3@sashalap>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Sasha,

I'm sorry, but I can't let this email demonstrating a complete lack of
self-awareness go without comment.

> I suppose we can't *require* them, but it's a matter of curtesy, right?
> They already have that information, and instead of making a bunch of
> other people do the same job they could just share the information to
> begin with.

I'm seriously baffled that you could type those words out with a straight
face.  As we know happens often, including with the recent iSCSI
vulnerabilities, upstream has intentionally omitted CVE information
from kernel commit messages -- in other words:
"they already have the information, and instead of making a bunch of
other people do the same job they could just share the information to
begin with."

Do none of you understand at all that the problems that exist are entirely
of your own creation?  Neither you nor Greg ever come to this list with
announcements of your own.  That you have to endure a tiny fraction of what
the rest of the world is inflicted with from your intentional actions --
sorry, you are not the victims here, and it's completely ridiculous to
paint yourselves as one.

Greg started his tirade yesterday with a false assumption that the stable
kernels had already fixed the one issue August of last year.  That was not
true (stable kernels < 5.7 were all missing the fix).  Then he claimed SuSE
didn't bother to backport the fix.  That was not true:
https://github.com/SUSE/kernel/commit/b93bddd7ae24aa8ebe48d13dcff4011a34861=
482

If you guys want to complain about bad information, leaving it out of usele=
ss
snarky replies would be a good start.

> Exactly, they already must have this information, which is where some of
> the frustration around these notifications comes from: it reads as
> nothing more than a lip service.

You're assuming too much -- it's quite clearly someone new at RH doing these
recent advisories.

Thanks,
-Brad

--bp/iNruPH9dso1Pn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJgVLh4AAoJEETRwPglJf5JZusP/2LvkgfE0+heUCEgxwSn1TGy
acU1sxlMXBDBvLgjsPcNA4X/CNkiFXn1MZCzL3Inde3v51XKRjk3zt/BAQFDgRdY
KFMQbs5aNiUTx78knrs44TxWdmnrBRwWX5s8H30hLICSwxqoXhrem0DYQhiA4v2F
JAxDXsC0oyKrUO4RnZKmnwwsse/mu/qRS6qWr9ASHQIIBQ/5G69SNDOashymADc9
kNQoCaKkvIoM9lGCn18eC93/EAU4HgRstpE/CNpvF7lIaCcl61+IxDjv6mUdduk3
NhVh5sCOuRO4Z4IQrYhrEu2lCYGMk7pWaXCo3SSuVirY5tupADj1cf4kud+UjdSJ
VRIWzID+pOg+FbdRLLLcH532o51Ny6+TuELt3AX44tcedOL6uqmpg/r2NzcNDLxt
WWJb0yEwBXZmSEhgCJe+8JtBNksb6Vge1k2lZe4nnvcQg/QoMhpCoEjfy6w+6627
VLXFAYf5s2ZMSj2j0dsX1YbLgFmGQfmZ0g9BwJSt0Kev+Qb8vs+6aRlFmeaYfsWK
ZqUJsarHT9I33I8dWPyl8pIH5Hj7JvteJt2bXC/phlnjGwxLY3fbVxuzJxH0I2Ft
rUuLk8jHnwVp/ej7aUDBPhf4e5LazA0uvru3WxPxeu1QO/XMs+1DiT9ZdIxJk/kg
vyLwfakj1PdBxED7xiOP
=h7Qa
-----END PGP SIGNATURE-----

--bp/iNruPH9dso1Pn--
