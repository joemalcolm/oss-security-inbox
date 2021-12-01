X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1955" "Wednesday" "1" "December" "2021" "09:06:33" "+0100" "Johannes Segitz" "jsegitz@suse.de" "<20211201080633.GF4037@suse.com>" "45" "Re: [oss-security] IMA gadgets" "^Date:" nil nil "12" "2021120108:06:33" "[oss-security] IMA gadgets" (number mark "        jsegitz@suse Dec  1   45/1955  " thread-indent "\"Re: [oss-security] IMA gadgets\"\n") "<87wnkp8kmj.fsf@oldenburg.str.redhat.com>" ("<87wnkp8kmj.fsf@oldenburg.str.redhat.com>") nil nil nil nil nil nil nil "Re: [oss-security] IMA gadgets" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25903 invoked by uid 550); 1 Dec 2021 11:23:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1892 invoked from network); 1 Dec 2021 08:06:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1638345994; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=55F+Ypl+qwWyiQzZtyvxK0THqhmu3a9cUS/PkdgwAEg=;
	b=AmMt7nOQbJ9wXiEgWRU4IGUogr63pEKTEU/LIvTcvrrS89PFxKGJpGo1Xk1Wx1lGOTBqww
	VLSY0aKyfswmn8DRSPV4ghBw3fXgMBiTVWRGvYR4DqS6shdbYscTTFUuU/S4U3FR70B/Ow
	iDae+d8UXfqj2e0V2fcnC05m7ZdwkLM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1638345994;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=55F+Ypl+qwWyiQzZtyvxK0THqhmu3a9cUS/PkdgwAEg=;
	b=EpsNQQ7/uOgYRPLyCiC0a6Mm5s9IDCxmpEqvWlvNDLkFncpv9tQv42gB30rHVLIuxbngm7
	nzu/S1D6tjNUJ2BA==
Message-ID: <20211201080633.GF4037@suse.com>
References: <87wnkp8kmj.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kqOsKy60S4p104jH"
Content-Disposition: inline
In-Reply-To: <87wnkp8kmj.fsf@oldenburg.str.redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Wed, 1 Dec 2021 09:06:33 +0100
From: Johannes Segitz <jsegitz@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] IMA gadgets
To: oss-security@lists.openwall.com

--kqOsKy60S4p104jH
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 30, 2021 at 09:16:20PM +0100, Florian Weimer wrote:
> So in short, I don't really see how IMA signatures shipped as part of
> all distribution packages, on all files, can provide value beyond that
> of the hash that the already contain.

It provides "the customer is happy" value. From a security POV it doesn't
help much (on a normal Linux system, can be different if you really strip
it down). But AMSI also doesn't help and people are still keen on enabling
it, despite bypasses being available all the time. Same will happen for
IMA.

Johannes
--=20
GPG Key                EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
SUSE Software Solutions Germany GmbH, Maxfeldstr. 5, 90409 Nuernberg
Gesch=E4ftsf=FChrer: Ivo Totev (HRB 36809, AG N=FCrnberg)

--kqOsKy60S4p104jH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEJQ9D9ffObx6cWU+VvCfdnSzE/WYFAmGnLQgACgkQvCfdnSzE
/Wbmzw/+Om67mQ0dWxjHpROdXlzOGcEo3irMG5gYZ3hZSykizrrcqP6fyAwTs/lk
X2sY1NUQaDAWQB5t339rFkylbxC1H63DvDBTzmbKhCLxs4o8ssq3Avl/zpmPO7z2
6eyLCBHsKj3Mqnn01qKlXOxhifPD+UF3Rb2lgI2wlWu9nWsxt/AyglvSkwPioR/h
wm/rdz5F12Ja5gSWqFDbeKQLb0OHDhLbU5MxjOnFrh+G/8Y4JQhgsIrBrANA4r5O
Ff7eSPIMv+/TjdOwUy/0CuKWPYfaambFr38MCi5t8oB2Vaz1uNSirV9T7TRcIzIA
vT/R9fJl1/MqywIYF6QHx5M8p0IeTuRk13/HaCIxKiJx+Snnvt2r4BDtqrCZfuAq
QWJcXrcpGGJYrKR25W5BTXI0Q7fn7lm68Ic4DN57XfPMkug9DuZBfOnDnIRWyrr0
ObNDp3+DZ3kEZ//KbcKCb2r1RMsehAYN6I9d5bxa8wYprnTeGrwftgGa74OWgHgn
C5tGoRQR3om23+GUdIt7Z4uG+kvIi0thQ5Ol/eDEyVSpDsGExIvDN5GZ1fZsw7XV
QBHrpSgVA8buK6LcGNBTzMGxzi+HoqbbMzsEEL1owoWf94j2UdXsSNMFamlPAZMR
+2iJ2hSZbBX0z2zlEaQw7Eb8lOkE0TCxF9edhmxtNT+vueuCvXg=
=tc0v
-----END PGP SIGNATURE-----

--kqOsKy60S4p104jH--
