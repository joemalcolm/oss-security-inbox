Received: (qmail 20073 invoked by uid 550); 26 Oct 2022 15:27:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5406 invoked from network); 26 Oct 2022 15:17:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hardenedbsd.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QCzgKBVdrz8jVLWjrKSCHJaD4yul+E2SLE919cT7H3w=;
        b=iYuTfAzwd1FtsK+BZohTmq1ZvmMsaroXlkPagXEKlZ0M06Kv0YxwoM5AuchW4yxla/
         lyqdOF4SMFh4yU81hvy/VKehJ74dqHwM+70nBY3wsG72ltX32RbSUE2GSWCe8qN3/clK
         TLOH4IBtDPBpHZeqfWisebncsWe7IqpoHQiDIq/n7Vvqgmw80f4IGY8XD8JLaqS2BmJE
         2ohqFjnDfhxVDqu8ssW2xi4lJJx+PsDWVLfW+ptcB5h3K7QXl5HxHnSkXAJTjYi7wFGd
         s1npxA3e01Akn7Dj2SHK9uJrrauq6IzIvDUD/DNKyWfJe+UI3xY4AsUvk+C6N/4lEydF
         nV0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QCzgKBVdrz8jVLWjrKSCHJaD4yul+E2SLE919cT7H3w=;
        b=ZhlAfhl/gCJn0HSH7wsH7s3EiB2OHlXGXc2qbdEu+9U7BJWqUxX4koanGrPJUO4PrA
         BKFI4ov1kB+Mte4poR/P/LzW+OLbCHdS7oS8zHrEtYbwFcG8PpBAncQkUFTy+ImqVrNo
         n1SOOBWJMwsKZoRwTl4RIiLinkbqhQUHuzXNiR12KSliV/NwPRvnnfJhHLnMPHdEjw7B
         JcWxgtPm2uzYgWx0ipuR8SIWZVX6VLY0kSXFmFWjzqz9WqVJFfsuKMketEJoU4rcpnO9
         nuseXtlhZfby36wps8wwVQrcxE31MmxcHGX0DNMWDVnTMQIKLri7NV5qGhQIQvdjD2ZC
         paWA==
X-Gm-Message-State: ACrzQf1599CF/xfylrCyiRMw0w5AHrvko1MDtGB/MwG0+HPNWIBJzkMZ
	N40OAiIhk1N5HQOrgoxdQQtm7YweBpzh3sQ3OEYhSUHQ4597zVC4mIaRpAf3pz7jKOvcBNjnhXa
	UeifKRIiTwswzvXNjpQzhaRyOwp46vAzrHpRHaea27faOF4fRPLwFVLJl3ARh8iXEpFwsmuR8hq
	+eOVH0M/12Z24Y7x0=
X-Google-Smtp-Source: AMsMyM7F/pri88o9bBndKxiykKuzi4m6niQUwfIPhTVkGMt0RcVZ3KIPl3TvSvL63tkia4JbwAOtPg==
X-Received: by 2002:a05:6214:768:b0:4b3:cb4e:2d1d with SMTP id f8-20020a056214076800b004b3cb4e2d1dmr37675375qvz.50.1666797458944;
        Wed, 26 Oct 2022 08:17:38 -0700 (PDT)
Date: Wed, 26 Oct 2022 11:17:37 -0400
From: Shawn Webb <shawn.webb@hardenedbsd.org>
To: oss-security@lists.openwall.com
Cc: openssl-announce@openssl.org, openssl-users@openssl.org,
	openssl-project@openssl.org
Message-ID: <20221026151737.rtmp5eatjf5uqgnb@mutt-hbsd>
X-Operating-System: FreeBSD mutt-hbsd 14.0-CURRENT-HBSD FreeBSD
 14.0-CURRENT-HBSD 
X-PGP-Key: https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/blob/master/Shawn_Webb/03A4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc
References: <db0d3f4e-ea16-83f0-2a2c-8186f42af180@openssl.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ldoforgxgjbeq7vz"
Content-Disposition: inline
In-Reply-To: <db0d3f4e-ea16-83f0-2a2c-8186f42af180@openssl.org>
Subject: Re: [oss-security] Forthcoming OpenSSL Releases

--ldoforgxgjbeq7vz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 25, 2022 at 02:54:15PM +0200, Ing. Martin Koci, MBA wrote:
> Hello,
>=20
> The OpenSSL project team would like to announce the forthcoming release of
> OpenSSL version 3.0.7.
>=20
> This release will be made available on Tuesday 1st November 2022 between
> 1300-1700 UTC.
>=20
> OpenSSL 3.0.7 is a security-fix release. The highest severity issue fixed=
 in
> this release is CRITICAL:

Hey there,

I don't see anything on the CERT Vince site. Is there any way we could
coordinate a response via CERT?

Thanks,

--=20
Shawn Webb
Cofounder / Security Engineer
HardenedBSD

https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/raw/master/Shawn_Webb/03A=
4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc

--ldoforgxgjbeq7vz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEA6TL67gupaZ9nzhT/y5nonf44foFAmNZT4sACgkQ/y5nonf4
4foStw//ZMX4CtAuElni/LemmFVX5ZhoOtS0e3dkiI7kJ/uIA7KC0LNoD6bt1eOv
6UNXH1YtS79h6D/kk4VkYIxj1MYOtcDSMTBJ0bD8ETUpCSHguFyaZDyvKvk5j4zq
VV0vdolyhB8VuPdn3cwzURcN1Vsa88dOSNElSy9OXLpyOHAmIqSyNIIFGzzd5g3c
E/CeaOUcnSI9wQj9lLsmXzh/DA0Cf4eo7eYtDaWb5CsH1ajpvh/LXPNYeuF3OMIj
5ddwVHr3Xjgw22B4M0RiyUWPY/hUPPR4cffb96UaHRyTqIYSEYoNsSW7pLa2BPok
dGenH551Pi7H9WPfoSWP/AdoRhmaGgM3Jdb+/K8W/DmsnUTMClVt5QjerjxKbEoL
16z4t2oxGIFqDPYAREOpte8COeR903XkBgX9+LhSn0keE1zjQALfgWDt+iDZ768o
cfA3wH2MRuflp/JzBt94+9X/NGGYQgeuK92nGRcU1GposVQHYjeUbqG3gsnDnWwO
Qce4APyoQbQATC7sinjFF3+9l60om4mwrJsaLYp3/wETkgLQZgfjUX9URYkDqqPk
ZvZ/Go45ale9in6lRmXCLYaBA40fxnjdYOSW0yezLm55iMwMVGypGqKWAcZK5Rpg
QcPbqR5UDFryNQnf2ZJnXrTJ9mnRHadAkuKrk9Yqw9J1AM697uY=
=kQCQ
-----END PGP SIGNATURE-----

--ldoforgxgjbeq7vz--
