Received: (qmail 16233 invoked by uid 550); 27 Jan 2025 16:13:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 4008 invoked from network); 27 Jan 2025 08:13:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1737965609; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pNLw4nrltAVTQrqH03PEGtELzkjLQr1pfHpCULVAmFI=;
	b=QOUv2qx+6pP8JaB757LkH0XQKB7ZtiPGca6VvNzk2CDScgO1HohETPmoM1dZmPXixvnfFv
	ZDkGeX4bI7dbV0vxDBEM7X+0EnpG+a8B9MoGFMOIQleuZ0OWRigqfDEQnfgSXCulAtQGWR
	qj63t3QCgQyv16q7+wUTKSHnLpyPAyg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1737965609;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pNLw4nrltAVTQrqH03PEGtELzkjLQr1pfHpCULVAmFI=;
	b=Dt4gKp1w+bVnnr7PuWJYJm2BaHAkoLLPc7APiVt+YZAHkZT+Oc5vGD85929Hb9BGhgIZY4
	F0fx7M86q3+kI8CA==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1737965609; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pNLw4nrltAVTQrqH03PEGtELzkjLQr1pfHpCULVAmFI=;
	b=QOUv2qx+6pP8JaB757LkH0XQKB7ZtiPGca6VvNzk2CDScgO1HohETPmoM1dZmPXixvnfFv
	ZDkGeX4bI7dbV0vxDBEM7X+0EnpG+a8B9MoGFMOIQleuZ0OWRigqfDEQnfgSXCulAtQGWR
	qj63t3QCgQyv16q7+wUTKSHnLpyPAyg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1737965609;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pNLw4nrltAVTQrqH03PEGtELzkjLQr1pfHpCULVAmFI=;
	b=Dt4gKp1w+bVnnr7PuWJYJm2BaHAkoLLPc7APiVt+YZAHkZT+Oc5vGD85929Hb9BGhgIZY4
	F0fx7M86q3+kI8CA==
Date: Mon, 27 Jan 2025 09:13:28 +0100
From: Johannes Segitz <jsegitz@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Z5dAKLJ-Lm6i5LyM@suse.com>
References: <Z5DF00lM-3Q36mhh@kasco.suse.de>
 <2025012206-remember-glare-da7d@gregkh>
 <Z5D-Io-ch6YXKAAn@imap.suse.de>
 <Z5Q9VKUg_v3MBrmh@aeon>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k4b4r9tlX2+LA7rd"
Content-Disposition: inline
In-Reply-To: <Z5Q9VKUg_v3MBrmh@aeon>
Subject: Re: [oss-security] issue with stuck Mitre CVE requests

--k4b4r9tlX2+LA7rd
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 25, 2025 at 01:24:36AM +0000, Mark Esler wrote:
> On Wed, Jan 22, 2025 at 03:18:10PM +0100, Johannes Segitz wrote:
> > We're not empowered to do this. We are a CNA for code that we own (e.g.
> > zypper), but not for arbitrary open source projects.
>=20
> The text of SUSE's scope [0] is similar to Canonical's [1]. We
> understand "All Canonical issues (including Ubuntu Linux) only" as
> including all software we distribute. It does not require us to be the
> author of that code.

Interesting. I'll reach out to MITRE to clarify this and will report back
(might take a while, I'll be away for some weeks starting tomorrow). When I
was introduced to this > 10 years ago I was told not to allocate for
anything for which we're not clearly upstream.

Johannes
--=20
GPG Key                EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
SUSE Software Solutions Germany GmbH, Frankenstra=DFe 146, 90461 N=FCrnberg=
, Germany
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich (HRB 36809=
, AG N=FCrnberg)

--k4b4r9tlX2+LA7rd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEJQ9D9ffObx6cWU+VvCfdnSzE/WYFAmeXQCgACgkQvCfdnSzE
/Was/xAAiTae2hhXYxT2iPhy2N+7KwtofK6WuOsmmJYvXbrgpZnVPR/7qYJL0niH
dn4Fgz9M4M+6UxwzyzurnYTpkSPqST8QxQWyG5SFTNORXisQi//zseQsedsNeOTY
q2Cqk/KfpG7UaF1xTWQR8BtEknbZu/0Ox7EAPPRmQUIy5zS8cMpa9CyzIYw1rskm
HZm+Z0rRSQVYvxe1dcPwvtcPCSNmEvZMDzDq/0n1ke392PxE8mPUoVZrKRdjUXb8
7WQK4ng3Ih5h1wF1CGGz5ySi8THe5f97UHqRhZjvdGUipmNgSt3t5MkAZRm5l+il
zUEkrZ0G+V2r74RloMhxKvLm1l29QB2che5T/lBuou1DmHc+n8u3z+nFp7KS5KRe
Ms4xKV6dK7zageCQ6S8+80O7swZwLyIWVgVbDMNm0rkpEx4zFVQbkH5RTal5GKjc
10QJNU2Wnqf0p23nc8k9g96WTtSTJJXQpjBPWnMoggUx/unJPa8WHZf8VLce3Pqk
bKZcPHxhr0EM5As32pq+Xz9zINwitssQr/RZOfkU+xm541QujVrGOvCyWCLJTP7u
Ds0AQHyAqcTlfxr1BfnnCmJ7YGWEd/Kscvq7WQj9km7TH27r9c9PVyzBucRtGjUn
y1cLfCEsNK6vWyfqpvPggPXMN1Q0uFdIFjSjuLVP8TFT4THe0kI=
=M6Qz
-----END PGP SIGNATURE-----

--k4b4r9tlX2+LA7rd--
