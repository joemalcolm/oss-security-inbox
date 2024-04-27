Received: (qmail 3506 invoked by uid 550); 27 Apr 2024 13:28:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17683 invoked from network); 27 Apr 2024 11:51:26 -0000
Date: Sat, 27 Apr 2024 13:51:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=archlinux.org;
	s=dkim-rsa; t=1714218677;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PC+4uCPmN6dKRWKmPCNzB+oFFEwvh2bfF/qsdPolpFA=;
	b=E7Cre0Z9IH5PH+eNw+dx2y2W8otQSkSVnNM9m7JzdJW2jwFJ1tg7N9Nx5xkxWpZSBNMsek
	IaXVq47UNbSGig/JRcKGwwFk+5zxtfgscbz4JbMEUNQ7jaaGTB9czAJG/5ibRqZ1kIXYZv
	agm66PrNDttR6/jv9BLSR642aeSgiXIJRZmBV5BfJi0kJotbki2+bJ5JkR2hdEetxbIdqq
	21nMpAqTfMXVANtuKO4RPYJcv7fyI+Tmdu9Y1NXmJ7dAwYKq6v4bgpQtNQz1513C9jNTH+
	HfvDWMfWQ2FXMKPAmLA+NrYVijLMV5WoeXyAfHlRUoGEgQSwMhL+7/xaGV8kR4arJD3PaD
	+h66uhwTgfJHbRPzh9Yovja35J+UpQ2/TbFy8b715ypGSksRPQhNb5qNzhwxfVUeBafmsd
	UjVkEMzdrh9ELSsfUFJAyzlKLOhnCkzrN+l20IK3xz1ohGLIDrgSAUtAqutYKU2M8/Pkem
	WdZPvikfxdu8mFAJ/feaJ8NyoON8ZhDS3ZdEeepRrOoFXTAGrnIjfzZGCiiIeLMU6/VS18
	WN70JTUOA/9zYATpzaEPYWQYGLwCxmAN2qZz5XzOeiEukbBKOOD1SRpFOuI9EfZ+tj9jE/
	frjrqK0U1z92kSLfWV7SSVsV7WRyvR4RO3y64gxiRsWmQNAig4Swc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=archlinux.org;
	s=dkim-ed25519; t=1714218677;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PC+4uCPmN6dKRWKmPCNzB+oFFEwvh2bfF/qsdPolpFA=;
	b=zAbaRu0U2BhKctew68zK0dj0pDPc79vscHOeiBv2PpNLAua0YEPSod8AJZc7aOD3oZzbS+
	3HPDNEvwoHNraFCA==
Authentication-Results: mail.archlinux.org;
	auth=pass smtp.auth=foxboron smtp.mailfrom=foxboron@archlinux.org
From: Morten Linderud <foxboron@archlinux.org>
To: oss-security@lists.openwall.com
Message-ID: <htyn4vrm5ien7cq2ih7v32u4b4aiwnzj23hhuihw3mu7lutygp@q4prnbjdy4xt>
References: <20240426135217.a103ce0c-a775-4a49-ae2c-94dfd64f6695@korelogic.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o457n5odmthnoq2k"
Content-Disposition: inline
In-Reply-To: <20240426135217.a103ce0c-a775-4a49-ae2c-94dfd64f6695@korelogic.com>
Subject: Re: [oss-security] Update on the distro-backdoor-scanner effort

--o457n5odmthnoq2k
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 26, 2024 at 02:06:16PM -0600, Hank Leininger wrote:
>
>     - ~11k EndeavourOS/Arch packages

Please just write Arch packages. There is no upstream collaboration from
Endeavour on those 11k packages.

--=20
Morten Linderud
PGP: 9C02FF419FECBE16

--o457n5odmthnoq2k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEwQA0ZnZjToDJQPuenAL/QZ/svhYFAmYs5pEACgkQnAL/QZ/s
vhawBQ/8DSLUcIXJlCqFHd9hDK1mNj+uUmNemsgXPQTo0UqxnzryME7+slxnQhmq
XtGuiIA/Rl+Dvv7C+qTNJlHVZMOQOL+5maCgiR48uyBG7D5u9GJ2eYYbeTrjbY/L
d4XqcEhZsUkoSWlLw81++toEfpj8kE2oSIlWYdMJ7GkdPHZOTRL++i0u17FBfv9M
5e5qppb2GZFfTuvhyNPfi/Ymp3CvLxkQ8yGSTPNAW0keqxkDPSsepou/lEXZjBsH
KvDnEtA1lhszCzBqA8Qw/tbn942GaQP8n6L6i3KhNSLaBcEb1K3CgqFlzFFPH0N2
coM0fZbKYXZYhNfU94tHLV2nLuKB0cy8AD7KOGPuZnZ/2NQepyzA4cxnJuohdDi9
o0uV6zbOjbCab87Xu8hR/r+MgsK+79nNiMFjkez5UQwz5sxvqm0ELb7X1/5q/pVz
IaNF5YREUcVIibVFDLwVbKe9viKycELgAcb3veYrUzTSaQDKlsJs2+6IXNoW5JY4
UJq76MpVbvFLstG56gqeM0G9LiOqF/ewDS5ScgN8RF2GBxHPpYYRawqYvDoLKGA+
GlSGHNAjT3b7X1qggQJPVKqA6hTYsjCFAIEAAfgNRDb+TYdP0sMn1ErPySHdZQ8W
JoJiUXHfnTook+lFxJqkpWTU6ivzVz9MfsbuxEebIJ1t00hnXyo=
=i12v
-----END PGP SIGNATURE-----

--o457n5odmthnoq2k--
