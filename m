Received: (qmail 12212 invoked by uid 550); 12 May 2022 05:28:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12194 invoked from network); 12 May 2022 05:28:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1652333308; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=F1pyO3wlwKiEqq7I8F9YVRYXsizHaWy/zazXp5zN6MM=;
	b=KS6BKaCQt6tAhU7uGIzWDdMHmz31YaIR++1sH5jcXzIq3l+trTvO19spyNGQa2S72fP/8K
	+O8mRJgQ0d7fbJdRkQu8rCQDz1wBm9p0smwB294rByowH79pqtPPiVXgYeF70GPbnbapnx
	rw+M3y69fSLl4/OZngA5d36deVNNHzA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1652333308;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=F1pyO3wlwKiEqq7I8F9YVRYXsizHaWy/zazXp5zN6MM=;
	b=R6Y79JO0RKLLQHEzpy7849G48mBH/2lv1jdG9a3cEXMRREz91QncTiWr8fvpq5o9delCgD
	YoddnUOsiLMx7IBg==
Date: Thu, 12 May 2022 15:28:23 +1000
From: Aleksa Sarai <asarai@suse.de>
To: security-announce@opencontainers.org, oss-security@lists.openwall.com
Message-ID: <20220512052823.advhiwrcdc6rokme@senku>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k6l2ykz4ccigwy4c"
Content-Disposition: inline
Subject: [oss-security] CVE-2022-29162: runc < 1.1.2 incorrect handling of inheritable
 capabilities in default configuration

--k6l2ykz4ccigwy4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

A security update for runc (v1.1.2) was released to mitigate
CVE-2022-29162, which is a low severity vulnerability related to
mishandling of inheritable capabilities which resulted in an atypical
Linux environment inside containers.

As the inheritable set was a subset of the permitted capabilities (which
are limited) this bug does not affect the container security boundary,
it simply ensures that programs running inside the container do not
inherit capabilities they do not need accidentally. This issue is
similar to CVE-2022-24769 which was found in Docker and containerd.

As this issue was deemed not exploitable, there is no embargo for this
patch and release. Please update as soon as practical.

You can find the new version of runc on our releases page[1] and the
patch fixing the issue is [2].

[1]: https://github.com/opencontainers/runc/releases/tag/v1.1.2
[2]: https://github.com/opencontainers/runc/commit/98fe566c527479195ce3c816=
7136d2a555fe6b65

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--k6l2ykz4ccigwy4c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEXzbGxhtUYBJKdfWmnhiqJn3bjbQFAmJ8mvQACgkQnhiqJn3b
jbTx2A//QiuOlMg+5cautgz1l3gAX41VWo+wa2hxVyhH+LCGDL8oW6LBpno2fCBJ
ltNMAMYai+u0FiRuFoFXreEmqL8OV1R6oThYPuCbpqvGHflXH2SXarpC7KvqTjxV
g95bWsIACEXtiRzPSZEHZdhqFQeV8h7/X4HeggbuNaLpqgJjn3tHCJkh0SHkoGLN
EfpGTarwfbBatEHcRIWnv3lnxcLYu4RnBQJbUBzzCRkK35SVjEMK+L9/NeIVzbV8
jXJ4hN/mszCnK/squXZzEcIq3J84QXrdtwRzjOpqdvqcJIA/+IfI/zu56AsGEAnU
xsgwScM/P+f0rkDqTPcmAdvU5stPTVe1IQgG3WQfVHxobr1bu2Dh1G6NpX7x0+gy
hgK7P5kxtafBRD1rhgZq8z877u4p+XZzfab1ZApUHSYv2RdF4+OmwhtdP52htory
2toYy5dtcxoL/LA2Jo+Oz7CibIjfXzyzrwJWKC0E1OWwKGjojaC0tqW0dGrPWwy4
ZWH/iGcp/4q6b15kEqh5Y+EbWbqonccZqoW604/KhcMQTw2hWv6k/HKp0AHpCovS
ZyLVD0K5BJbUW5SrC3ZfyPU4lCq6xfxuAbRPrTuaGO7z0YMLWNlJkuuIl+VRKIzB
jGuVSw3frWgOaCshZNo1xHHE1ko41YtdOQn8YI+gGA2A5RX/woc=
=BZuq
-----END PGP SIGNATURE-----

--k6l2ykz4ccigwy4c--
