Received: (qmail 15512 invoked by uid 550); 22 Jan 2025 10:18:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15474 invoked from network); 22 Jan 2025 10:18:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1737541075; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=HrFRdKggXNmtu29a+kA9icBFTpVreXqTUPt/1eDIP6E=;
	b=NmU7ByQT7nVej7KumQeGdx47eFJg+rXZditv22S2XZncQ4dTVRM9HkXV1chFfD1F7LlQ6t
	BsJR15OwT/Pjv/ymgq0MZxlKaLJWqn70QA/qUVPdswOVekryJE41Swlhw5pSvWQj/Ws6P4
	7rtdk8plqLtfXZrR+pR2Vy7GWrIr8dQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1737541075;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=HrFRdKggXNmtu29a+kA9icBFTpVreXqTUPt/1eDIP6E=;
	b=sHZpsp16n5y8d+OLBlOFVcIJDdSR9+n8xgrdaueiRsGvhxQVxRXu4pSImU7xnxFXOcWT2l
	yUfXiLwEAbL0MfCw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1737541075; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=HrFRdKggXNmtu29a+kA9icBFTpVreXqTUPt/1eDIP6E=;
	b=NmU7ByQT7nVej7KumQeGdx47eFJg+rXZditv22S2XZncQ4dTVRM9HkXV1chFfD1F7LlQ6t
	BsJR15OwT/Pjv/ymgq0MZxlKaLJWqn70QA/qUVPdswOVekryJE41Swlhw5pSvWQj/Ws6P4
	7rtdk8plqLtfXZrR+pR2Vy7GWrIr8dQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1737541075;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=HrFRdKggXNmtu29a+kA9icBFTpVreXqTUPt/1eDIP6E=;
	b=sHZpsp16n5y8d+OLBlOFVcIJDdSR9+n8xgrdaueiRsGvhxQVxRXu4pSImU7xnxFXOcWT2l
	yUfXiLwEAbL0MfCw==
Date: Wed, 22 Jan 2025 11:17:54 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Z5DF00lM-3Q36mhh@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IXwYXjNicbAS3rvv"
Content-Disposition: inline
Subject: [oss-security] issue with stuck Mitre CVE requests

--IXwYXjNicbAS3rvv
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 22 Jan 2025 11:17:54 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: issue with stuck Mitre CVE requests

Hello list,

I am currently experiencing for the second time that a CVE request
submitted via the Mitre web form [1] is not receiving a response. A
similar topic was already shortly discussed in the past [2].

I requested two CVEs on Jan 13. One got assigned within 24 hours, for
the other one I still didn't receive a reply. The same happened to me in
April 2024. Back then, after not receiving a reply for over two weeks,
the CVE has been assigned by Red Hat instead, since Red Hat developers
have been involved in the affected project.

In this instance upstream is not a CNA and it is also not closely
involved with Red Hat. Replying to the automatic CVE request mail from
Mitre does not seem to reach any human being. I don't know of any other
way to get attention from Mitre for this request.

I wonder what is the best way to recover from such a situation without
risking duplicate CVE assignments, or not assigning a CVE at all.

I have a hunch that the issue might have to do with filling out the "PGP
Key" field in the CVE request form, which I did for the one request that
has not been answered, but not for the other, which got assigned right
away.

Thanks

Matthias

[1]: https://cveform.mitre.org/
[2]: https://www.openwall.com/lists/oss-security/2024/08/06/3

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--IXwYXjNicbAS3rvv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmeQxdMACgkQFMQFyXGS
NVN0rQ/9EwdTSqkNT/9iFKE+f7VMQWTPPnKkohp0rxQjRsu/OAPXYKQ20vPBIbEw
MFR5rj8vFw+tmH0xENLstuNIgFxLvY8GVcWisDYlF+M+sP9khKxgfyH39XEvy3Zd
B+BVIDYeWOE4Lb4pEpl8wIHsYgX0qQ0woHNdX8Z6nNLp4UH61QXhvdvRodx6FmZd
GbjEyC2iJ/h3MboatQEW+WSbO1m3c9tZZg5IhSZP8CDegmCj79erq8oKdPAf3UwN
cFwCYW4+kpijVCJRtaF+JvwtycftLJrwvCPGrRf1XvmLi46v5LwKA0UFLJWCWmkT
sRc1NbpFLYOcNYNkyQ2EDxEdWqRnbWDvn/WNb9p2vMj/8Zd6Gcit3Hrh4wqtYWXp
Iv65GTX+8Y6zRPr8ZMezPvjJC0tGdY7mKyA8HVJuYOAVSg+tksTV1i1ItAliPJbX
ousfPtgoHRov7sU7Ik04dCab/kp/9Ul4BLfHgAQdLSt+Dol17AziQRWSQ6bINQWY
IjOloQVfPMdgHz73aYbqRQB88aDupm+vm9NwUIrzMnwRM1m1UNnG5Ah93gxppWTL
MV7mmSMXrkMvYs7XQnDUsMNqaQtxJ0ZqFlAVaVKTmCRGj58hOmulAKQZrn9POYuq
c21A/zGvW3lSCt/JjCOVnld4TvbIBM2HyTRSO2fLkmSVO2SNt70=
=tipa
-----END PGP SIGNATURE-----

--IXwYXjNicbAS3rvv--
