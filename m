Received: (qmail 20159 invoked by uid 550); 24 Jan 2024 12:45:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5794 invoked from network); 24 Jan 2024 08:17:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1706084342; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TDEneyGYaMvHtZ8qnCZDO2k2bWleWKYxyy5Bxm89I/8=;
	b=FPHkREprb1lkHO4So6875I447pkcQlnfOTPKKY3I2WeZVUuinG4AOKv2ZTkhq0B3Wlz386
	itQo2Nq7xjjppfN26R/TcbAgkUb9KOfL/XhTXlrym5p4UfszNgQRpLQj88yFgQViKtno3M
	sDkMCOesAcMCFq1XFvVxCIN3VaJwU7s=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1706084342;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TDEneyGYaMvHtZ8qnCZDO2k2bWleWKYxyy5Bxm89I/8=;
	b=R0OUHms9ylIA6XJuMWJe44i8gjQOsxsVGe9xDk7QXnuPx1yzfJF6Lr9geU0CC7GBC8oJ07
	lqJG6jLlErHcXXDw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1706084342; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TDEneyGYaMvHtZ8qnCZDO2k2bWleWKYxyy5Bxm89I/8=;
	b=FPHkREprb1lkHO4So6875I447pkcQlnfOTPKKY3I2WeZVUuinG4AOKv2ZTkhq0B3Wlz386
	itQo2Nq7xjjppfN26R/TcbAgkUb9KOfL/XhTXlrym5p4UfszNgQRpLQj88yFgQViKtno3M
	sDkMCOesAcMCFq1XFvVxCIN3VaJwU7s=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1706084342;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TDEneyGYaMvHtZ8qnCZDO2k2bWleWKYxyy5Bxm89I/8=;
	b=R0OUHms9ylIA6XJuMWJe44i8gjQOsxsVGe9xDk7QXnuPx1yzfJF6Lr9geU0CC7GBC8oJ07
	lqJG6jLlErHcXXDw==
Date: Wed, 24 Jan 2024 09:19:00 +0100
From: Johannes Segitz <jsegitz@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <ZbDH9FfiyKDUFv64@suse.com>
References: <Za-XWUEPml2pcATt@kasco.suse.de>
 <20240124084235.360eb42b.hanno@hboeck.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="M93Nv0HPHoIUd0vl"
Content-Disposition: inline
In-Reply-To: <20240124084235.360eb42b.hanno@hboeck.de>
Authentication-Results: smtp-out2.suse.de;
	none
Subject: Re: [oss-security] darkhttpd: timing attack and local leak of HTTP
 basic auth credentials

--M93Nv0HPHoIUd0vl
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 24, 2024 at 08:42:35AM +0100, Hanno B=F6ck wrote:
> I think it would be desirable that Linux distributions start using
> hidepid and mitigate the whole class of bugs like the one mentioned
> above.

I agree with you. Unfortunately this is next to impossible based on my
experience. We can get something like this into "hardened" configurations,
but enabling this in the default configuration will not work as there are
always (important) customers that will not accept it.

I believe we'll have to live with these issues for a long time :(

Johannes
--=20
GPG Key                EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
SUSE Software Solutions Germany GmbH, Frankenstra=DFe 146, 90461 N=FCrnberg=
, Germany
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich (HRB 36809=
, AG N=FCrnberg)

--M93Nv0HPHoIUd0vl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEJQ9D9ffObx6cWU+VvCfdnSzE/WYFAmWwx/QACgkQvCfdnSzE
/WalKxAAmFehuIVcA1ot6ZBZOiiyF7FlpWmHbmc+0arIz2xIc7fHUJLdnbprf+Rz
Wz6crn08Md1T43aSPxOV770vEmD5YShs4sZ+3efeE+Typ1bNdgXlye9PO/OXp65U
m2IoT8rcnilw2+FWbuRlgMBtFD+yQ4G9TDv8VrSqqgZ5TbryH9eJs2bOX1e2/S7i
6KIfiYsxIzAzJkkIf06SPMh+aLqQl5RkAkZY8wa6EkSwuTL5zH9HXV514CeNaWLB
63fxEOfcbVxnQLjRtb9VZq5TYodOrGw2mrpeataISytd7jI35J6kNDIyzyGIZzK9
5xrAyB4+H/zuZJDHRA2RtY3JUdNhFU3qBinjo5x5qq7yBLXxFDbIs26CKrT/fpVK
GnKpKynS7ZM+9SbgB3gPAJMoAnI5tJodCQo/vAjBIKoKAZyQ7CamaRGSbE4RzBaz
P7ZOui1kCmPlnKK+wM561vSY4z3C4HcCUt9RCVKMfmXMwnm80QEF9nbLVH9Q2msf
2q/e4BLAvwe/JRxAqfByjwAVp8+bcTo93epQ/aNIC5Y9H70vGTxOSMDG45KpmL31
aPW0gGMH1Rb3oOqal3NKYVj5TAeFHqlObBwuwpksUswACYCHG9V+J3JE/XrM5o7F
Y2xgCV+koDVWUdBE271aV/LC731swv2vbr+vuVZ08bqEvcwyVUE=
=WtvG
-----END PGP SIGNATURE-----

--M93Nv0HPHoIUd0vl--
