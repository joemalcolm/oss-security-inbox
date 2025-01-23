Received: (qmail 31963 invoked by uid 550); 23 Jan 2025 12:57:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31938 invoked from network); 23 Jan 2025 12:57:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1737637041; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=b2fG6uYbENW4CQDZ/fW1+lzPtipNcjgqVFdHKKKz78M=;
	b=ivMT6bdw9+nVF59qMUU/LoZBxbiRCNy8rVTBKFv9YUTW9U6g3/AA8kS0aWSRMxrpiA0qmx
	/Hm5Y60VlFcJCV7OfmCDv3AGyPyg+OaUejDrlrkPKmCEu1Ie3EneI299QsttG0OQynCTal
	0yOjAhg6nk+LS5pPTdCGFUQOBnVT6xE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1737637041;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=b2fG6uYbENW4CQDZ/fW1+lzPtipNcjgqVFdHKKKz78M=;
	b=cn+BuCMOKee2V/4rVH8Hr3l+jb+K+jwbgVgwy4F2sKKQiY/tF0FObSiRDa0tdQzJDEutFE
	j6DW84Pcs65NxuBQ==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=lwLrxR3j;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=EtWXCNrT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1737637040; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=b2fG6uYbENW4CQDZ/fW1+lzPtipNcjgqVFdHKKKz78M=;
	b=lwLrxR3jJyYiXb7VyUTciBKDjXSs+SvclOmfVCzdNHzmYuFETolhkLv6Gyg8nrCrPLfZCn
	tFzsPHcLRQkmUViT4H04ygxJRFNT+4AAPWCWSAy4Ief9Le7ZYZBgmXvttqG3e5vfhExkeW
	H3rQwAVtK59fMsn3yA9/qsuOE2t/l7U=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1737637040;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=b2fG6uYbENW4CQDZ/fW1+lzPtipNcjgqVFdHKKKz78M=;
	b=EtWXCNrTAdh2yw3eLcKz32wIHSlGG+ITnJM/NOwfGD2S1fyOoGeRfeX/PlqeChrqAh3eD3
	nipyTw+Kg/Lvm4CQ==
Date: Thu, 23 Jan 2025 13:57:19 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Z5I8r_p6IC8A2ttG@kasco.suse.de>
References: <Z5DF00lM-3Q36mhh@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pOLF89gjfiymb+xd"
Content-Disposition: inline
In-Reply-To: <Z5DF00lM-3Q36mhh@kasco.suse.de>
Subject: Re: [oss-security] issue with stuck Mitre CVE requests

--pOLF89gjfiymb+xd
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 23 Jan 2025 13:57:19 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] issue with stuck Mitre CVE requests

Hi list,

thank you all for your input so far.

It seems this thread somehow reached Mitre and my stuck CVE request got
a CVE assignment by now. The reply also contains some additional
information which I believe will be interesting to share in this thread
as well:

> On Thu, Jan 23, 2025 at 01:14:13AM -0500, cve-request@mitre.org wrote:
>
> If you encounter unexpected behavior with CVE ID requests (e.g., one
> answered and another not answered), then please report this as a
> separate issue by using:
>=20
>    https://cveform.mitre.org
>=20
>    Request type:  Other
>    Type of comment:  Issue
>=20
> "Request type: Other" items are read every day.

Additionally Mitre expressed that they are working on improvements to
prevent such situations in the future.

Best Regards

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

--pOLF89gjfiymb+xd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmeSPK8ACgkQFMQFyXGS
NVN6aA//Vj359kT1Yx7PdqbShNUtvzU1CFOrRHVSHo6E4ZEe8ylhigxCrtABrMjO
QzGjgW0l/l3roibq3n2+0OTzj+2ON6TCF2Kl8KVd1m6sEhqHT/dcqAIjnQ10lQ1P
1CSQ/HeeWdbF4SXTmfKemogVu5rU+C9dduroQN2zW/3FWMb2DD4LByK0FtiExRMZ
6sOFmo0VpZa+Wd34x/FvJ24Hjggxfm1XMOf1q5lipIYAMBXIcd5TfLqd2gZ+3c/y
rEpFcVwzT7DrBugpBgLZmh4TpT1FJIu2LdhR8rtD2Sw8CkpJVzrdqhQQqpPU3ftA
Z+mQMOzZfNz45LfyhSPaoYgeBR10rkve/wwBXpvv7v0708r6vzlwvwHp4RLlpP7m
7TWJYlZGASIudPXpR2sKOqQyioBi+QijdMsVUW9n2CkKO9vsaJR13o0lCeh+8NLq
24rY8ufNluNy7M75+15ww58L/rDst/69e2p78uI9wD02nWourbYbKRGdUIpTAjCA
v1Y2xtuvlRy+xLwDpr4d8IG+v68DMPpB69u+rCIwIIzz8aYO4jX6Ja7TnL9V/dCZ
KeGdh2oS9c0d2QEnXPyOltWnX0SQxgEbgcTq94rqueVxCGy4GGwsrjv3IEua7HJn
nCk6UauO/dnz9Z6ULEQWVrmoiNsc28rnMiQdUPdb6UpYzBcGcVU=
=rREg
-----END PGP SIGNATURE-----

--pOLF89gjfiymb+xd--
