Received: (qmail 17491 invoked by uid 550); 29 Nov 2024 10:04:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17470 invoked from network); 29 Nov 2024 10:04:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1732874637; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NdznJec32HlDnElI0k5vhpyPcOi0M5y+mh9Ovbo5hKw=;
	b=iA5TNEdFsEt9ab+PXGDldkJzxdsl0no3WRBZAZmFhH6qwevg4t0yQOeBRsU+oV0/gjvlKJ
	vdYIr6WkCl+5BL/DKkvkCBEoAnne/wPvsJ9pu9GCnqJ3wqhFKSU5LxmBb4ktavlvzGU0Xn
	RlV93blOiGSJijkQkhx9zGiovaYtdJY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1732874637;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NdznJec32HlDnElI0k5vhpyPcOi0M5y+mh9Ovbo5hKw=;
	b=+KYnrGgDUxgyux/xvRFkRbxWDlARpWjreEU4IhgN6ZhSHK/hzYXxpS+7mJVYUCLONDO34T
	wDUqPP7No1VIUiCg==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1732874636; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NdznJec32HlDnElI0k5vhpyPcOi0M5y+mh9Ovbo5hKw=;
	b=rAjcKGgZ+Tj6+5R2rm+XnXiWOBloqdRsYMSqXIUZ55xSP+fRDiDEvhrcOO5+u3RXtFgptC
	HYZSu2hhOWzXcBXVKa+Xy2t/VjwGa9MIwkkWaXKDBak+nw6Uz6ZiXmtcskEDjD8e9WSF7O
	Y7SFoZFAv0/Ar3IE7FYxVOdZkzeVy6A=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1732874636;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NdznJec32HlDnElI0k5vhpyPcOi0M5y+mh9Ovbo5hKw=;
	b=xKOBbeHj6n9AFos2d2RqYhRPDQVBnIeXp36yvFDS2hE4pIOh2eSGTwMtlmXGIHxYU2Gncd
	Xt/9IGHyjGzXsiAg==
Date: Fri, 29 Nov 2024 11:03:53 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Z0mRi_ODyP4F8LrX@kasco.suse.de>
References: <Z0g4nBTW-VFYm4cu@kasco.suse.de>
 <Z0hejwSEFfhScLbR@remnant.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oS8QHH0k8oxi119c"
Content-Disposition: inline
In-Reply-To: <Z0hejwSEFfhScLbR@remnant.pseudorandom.co.uk>
Subject: Re: [oss-security] tuned: local root exploit in D-Bus method
 instance_create and other issues in tuned >= 2.23 (CVE-2024-52336,
 CVE-2024-52337)

--oS8QHH0k8oxi119c
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 Nov 2024 11:03:53 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] tuned: local root exploit in D-Bus method
 instance_create and other issues in tuned >= 2.23 (CVE-2024-52336,
 CVE-2024-52337)

Hello Simon,
=20
On Thu, Nov 28, 2024 at 12:14:07PM +0000, Simon McVittie wrote:
> This should be easily resolvable if the authors of tuned want to do so,
> without needing to resort to relying on hard-to-predict cookie values.
> Clients of the D-Bus system bus can identify other clients of the system
> bus, by calling the GetConnectionCredentials method on the message bus
> itself (this is how polkit works).
[...]
> (Behind the scenes, this is implemented by the message bus using
> SO_PEERCRED, SO_PEERSEC, etc. on each client connection, or the closest
> available equivalent of SO_PEERCRED on various non-Linux OSs.)

thanks for the hint! Relying on D-Bus and kernel features is surely the
cleanest way to implement this.

Cheers

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--oS8QHH0k8oxi119c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmdJkYsACgkQFMQFyXGS
NVN8+A//V9eQ25KoHeL7CWluqg15FgKCiEb1edBwar0cBkDx7BffLmhm8tWRc+r/
msYywqS00XukRGsGb8SNkD1fCAJHjhQ8LeQbfINl1zgQUTdWnI4jIts1/tZO2tCR
aQFlEheFLwEmJxeZ/zJiQmD3F+GQLAHheiTpdH+u5mWTljVEHA2Z/JEsDfzgnVTJ
Pe9p+q8E3iNdbvk3dE8MrYdS6VB7A8bSVY+DvAvzzXLEAOtHpOObAQ9Nu53RTE0b
146N0CJlAdxIIjqtv0GYmDEDH4hPFYGKMbsjNsRDdPMrApCiwX8FD6MJwB65WK1+
iiNCWX/QnNwEfasqueHXb8NCk6pWPsQXPOTMEmVeTIq1+fnsL6cKyzu5v35Pq/HM
9N6M6UyMxuV1A7SQN2cSEnRwkqfRKPMMRsfsYgKDdmUFhTbTaCTnzWtLKzOJz/6e
GyJezainJzsE8LZlHkaEaKLWVLADN+sDzv2ycqaFbyt6+5lKW0RwocnPQeDRZBOP
BpcDWmZDEufE93XBNQVd6ySFb+NhxZ00WK5Ph0gmvBSuyKEL9PvEDva6vCIH9O5C
0Gks/K1H6McjAY12GDDhDNM7OIe/i9VU24oCB/vZUQr38n0DUe4bu/DqbExzzT6x
HuuYHMO7mLOMwmywmicFp3mK2GFGgQxhuDDWDmjB8n+rVmsf93A=
=l6UD
-----END PGP SIGNATURE-----

--oS8QHH0k8oxi119c--
