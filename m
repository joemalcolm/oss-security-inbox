Received: (qmail 9898 invoked by uid 550); 5 Feb 2024 13:06:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9880 invoked from network); 5 Feb 2024 13:06:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1707138542; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4gb98hX1QxTpV/uf63iR/DaOr50I1SRvJJqS6PXnHy0=;
	b=qszdP0jnCZA0ORm58WldFEjE9xbblmLskYalkvkaXIEclHeE912r1N2Pxl3+kPXqyCe6Ph
	VnY3BBzilsVZTfwgiQWxsHYMiIUF007vly9jbM2kKH442Hh/dyjHJSeGlrlExuIgZs8L6s
	kvjlKPbCqR150QPW6e69FmtiCed4QEo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1707138542;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4gb98hX1QxTpV/uf63iR/DaOr50I1SRvJJqS6PXnHy0=;
	b=RGkzaiM18zritxtx7wRhb8VTeOJ3wWlWLaswf2yeOg8c211RCYUa5vFR7A/wNouf3VCXGL
	SdBFQQunDnewsRDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1707138542; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4gb98hX1QxTpV/uf63iR/DaOr50I1SRvJJqS6PXnHy0=;
	b=qszdP0jnCZA0ORm58WldFEjE9xbblmLskYalkvkaXIEclHeE912r1N2Pxl3+kPXqyCe6Ph
	VnY3BBzilsVZTfwgiQWxsHYMiIUF007vly9jbM2kKH442Hh/dyjHJSeGlrlExuIgZs8L6s
	kvjlKPbCqR150QPW6e69FmtiCed4QEo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1707138542;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4gb98hX1QxTpV/uf63iR/DaOr50I1SRvJJqS6PXnHy0=;
	b=RGkzaiM18zritxtx7wRhb8VTeOJ3wWlWLaswf2yeOg8c211RCYUa5vFR7A/wNouf3VCXGL
	SdBFQQunDnewsRDg==
Date: Mon, 5 Feb 2024 14:08:59 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <ZcDd7XcP6h_P8JRj@kasco.suse.de>
References: <Za-XWUEPml2pcATt@kasco.suse.de>
 <20240124084235.360eb42b.hanno@hboeck.de>
 <20240202181244.GA10788@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZLR+80zZltx7aZ1C"
Content-Disposition: inline
In-Reply-To: <20240202181244.GA10788@openwall.com>
Authentication-Results: smtp-out1.suse.de;
	none
Subject: Re: [oss-security] systemd and other system services
 (in)compatibility with Linux procfs hidepid (was: darkhttpd: timing attack
 and local leak of HTTP basic auth credentials)

--ZLR+80zZltx7aZ1C
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Date: Mon, 5 Feb 2024 14:08:59 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd and other system services
 (in)compatibility with Linux procfs hidepid (was: darkhttpd: timing attack
 and local leak of HTTP basic auth credentials)

Hello,

On Fri, Feb 02, 2024 at 07:12:44PM +0100, Solar Designer wrote:
> Since I'm adding to a thread started with Matthias' security review of
> darkhttpd, I'd like to say that I'm impressed by his consistent effort
> to review code that few others look at and the consistently high quality
> of his findings and write-ups.  Thank you, Matthias!  Also, thank you
> SUSE for (apparently) enabling Matthias to spend time on this.

thanks a lot for the recognition!

In the face of the codebase of a complete Linux distribution there are
limits to what our team can do, but we try to invest our resources
efficiently and hope to contribute back to the community this way.
Getting feedback like this for sure motivates us to continue on this
path.

Best Regards

Matthias

--ZLR+80zZltx7aZ1C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmXA3ewACgkQFMQFyXGS
NVMGDA/9G48LX1n8eatbkWJlTR8bofdkd0eR4aS0pa0qPFINtaXJ+iL3Fg4peHWr
O+LXHLZVmDSpsJaZgiqAI2KrrTtb1Dj+9/q9euzrq21PpOD5ZXLvevIbkEzBcD/C
vfX4V7blgF06bavEpnSzrMoikuUQY7SlzsRlKllelfNzNupUH0jNEuIPW/T3H1ie
PtAkOH8A2qkG+2ZLn878ucqVLbvGUMhll1RbGHYzVjU8QNvOTZWzbdqxOH9qxcTD
mgN2x2pyES5cC5ezWT6pMf85XNzhOb4a5TWmkAEltE7m4KyJ8CUhyQAN/utOmfx3
Mm7xqi+2Iypq1FGRxIMAP5py+BIDPNBrl2N72/GIx+UigaNHMquM1ksnMFvGB7dD
BKaDh7vixMArRXf/4ndS1hG0eqRj0pik0G0dNXtahd3797OdHjTEpkL0XcnVY3Ud
aJj8mHtLDMeQosttMxsZiY92xgOApNSkvxrcFc2kesNY7JfrwxxiCPAnpEKSQJNR
cYlAX4KHbKHsF23UC1sbrAL291dnuwf+CGjLi+Ai8FD4Gs5bf574U/DO0MZxb/RM
8Bk/ODzjhXhaBDJic/WM0QTgNwqjTw5pjF8DI+OVrMAikUilJwM/vfS7+YXarLYY
HBdjtuSIvwWTlYrcPPWL82u9QPpQMcZlY7zfqtca2OZ0sowijAA=
=Gvij
-----END PGP SIGNATURE-----

--ZLR+80zZltx7aZ1C--
