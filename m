Received: (qmail 7371 invoked by uid 550); 8 Aug 2025 12:22:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28447 invoked from network); 8 Aug 2025 08:51:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:MIME-Version:Content-Type:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:References;
	bh=hmZH5urybXMJRSUx6qeXf0wLLYgA/i0FGS9H8BZ7+Bo=; b=ZR5YV9MUegkXvUBlDm3p868q4M
	qguYWTWAk+m994OwRDqT2K6d7Ey0TlFFNMu9CHA+LtX5cwaWpcbfSEr7GgkRILGQBiR2lqLKFBOu0
	hdHvANAix3vRJ7X5uu5Xjh5vd7fDUe8qIqDQexDxflOaXgRDXPn0VRdpHz/5+S8WtW42mBezIU32Q
	w056bXTZr3ejr5msrAD9W3MIn5uqq60CvXlIepiHWenCFZpcA8JoKdNVMuazP9qXgfAiFVJ1DaQKs
	SvlHzTFULRErSOyDcbOtOCuJTmFF1AAXJQnurRDerU7Ye/P7YsVu3HDt3FV3zdMCicFbdhk9ds8Ss
	o4wORtdA==;
Message-ID: <21fa15dab4be6fd82825e34776e2c2c874681e8b.camel@debian.org>
From: Maytham Alsudany <maytham@debian.org>
To: oss-security@lists.openwall.com
Cc: vincent@vinc17.net
Date: Fri, 08 Aug 2025 16:50:57 +0800
Autocrypt: addr=maytham@debian.org; prefer-encrypt=mutual;
 keydata=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
 O/llXL3gIpWsS7zFy4Pzv
In-Reply-To: <20250804092217.GA962280@qaa.vinc17.org>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-J1Ac106Bk5HVq5t3Lgcs"
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-Debian-User: maytham
Subject: [oss-security] Re: StarDict sends the user's X11 selection to the network

--=-J1Ac106Bk5HVq5t3Lgcs
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Note that this issue is now being identified as CVE-2025-55014.

--
Maytham

--=-J1Ac106Bk5HVq5t3Lgcs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEESl/RzRFQh8wD3DXB1ZeJcgbF8H8FAmiVunEACgkQ1ZeJcgbF
8H8aWhAAuBAcJ24OSClG5eiFMPn8rrjhatbzjRfvtidW/hDulQvaD1K591uEqZiT
1BgifELqL2/MVq5EjJHPd8IiYIcCHxiII1YaKR/1EdMpLrZ06Hxr6IP8cX95WUFj
0dMYFvBV36fGj8goyVcAI04XK/A1L3+LcNy1GvQSwF0k2+pVETNjq5cD18eHw9+N
AWk7DigNDRtM3pHhBo6DJcbZ7I84NMQ0PLR7frYIS0t9A496D8Jfdfchb4o2rU0u
cc4vi5lSB1L0gd25dUuXCxrstYCmGwV25W5VUgaGjgqXaPIo0fptZtaRTFg16VXv
ZoowVZqAOANQsZX7cSz0cy3NpBl/yFTZkHQTcV8N1VGKVuHUiuS9VQT9Uw3I6knh
lgXM3TbYBgX9DXUHOoFGrMxS12DIxAfgBwz3nMIkYGMLFDs8QHtaN7A3D2J27PjJ
ZEAgYAsZZLTlQNDx5Yp+x42d7pqeBnKW37q2gncGvHHx3tyg5L+XtEuhb46HxhYQ
a1xkeRYm7zVfX3Q3cMNgWLXdmNxYMEqzc7a0fcGkRtX26EfprysKm73r4ACEl0Xw
Otl2dd2RwZZTYh3HqeovzonIqOxnqnswC2nqTsMEsroeCRIXa8bZ0ex7d4bPS4bt
0UGEbNzRNwYZncM36PR//AYHIlAdi4fnzbWJ/BwPlfimwgKWJFk=
=T6lH
-----END PGP SIGNATURE-----

--=-J1Ac106Bk5HVq5t3Lgcs--
