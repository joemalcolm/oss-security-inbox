Received: (qmail 30292 invoked by uid 550); 5 Oct 2023 13:57:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27887 invoked from network); 5 Oct 2023 13:54:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hardenedbsd.org; s=google; t=1696514054; x=1697118854; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jwxg2Z0F/AB0mpF1Ds7qFs1ve4rJY3laiv2IXo4SsCI=;
        b=aTOWnbP/3X7ElyNbeVu0dcAR4IvN/ui2moHAraY96JM/1amwebf/0A4MtwQg1BjgRt
         D0YIDn6hsJl6kSFAyygwC9HXBa+MiKpI5iKOQYpNm9t652fWb4CTdaLG+B/rdD3y/x/A
         zPZGfSvsLRaqIXxGAfI0M7hMwreMivliZJzrjgd9+7pUbe7avCM/2IyXJhvstoVKWCfu
         Vc/vGDmq8SlEjOiFrwZSmLyg1qmlYE8KWRJLhd/5wTBj1CHXeUc1W/60PtsP4FtRJt9/
         4eDEeZFgxzY8JUbn9n6EDyjfUwS2y6ED6sFqAjfcoMZoor7H/esvDuGi2VpL7w1BFLpJ
         jAcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696514054; x=1697118854;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jwxg2Z0F/AB0mpF1Ds7qFs1ve4rJY3laiv2IXo4SsCI=;
        b=Irf9DiU5l2qRsnEkY3oMB88Bt3eo0NKmrlJPNfir1QG1E5tyePWyHXiY1Kut0t7X9u
         E9PnH4KULPsjNb9aKx/Vand7R7jrbL5PIyDtvBJ0vs27YSstwfUxzCQ8wf7z0Jq+MQjL
         JRGxCcPVNPJfyxOadtJSJ9NzTLzXdeMKEZybkjdK/y/a4x047Y37nK+0ea9/GzNY2tQ5
         +bQLiX1khzF3pmgk431EIxtGZK3J+XN+sVZ/NmnDVR+yr7eT/w3ppCFyM+R9Tht2aQp8
         X2t3NNNGyXwD2Na41oWMUQdU5VNkH40pjjSS5rGYt/Ek/8W2hjgAwpiV2L2iDAM/mL/z
         KPDw==
X-Gm-Message-State: AOJu0Yw5sOtaDtANTNspL61H2VXJ/4oBlWY7G1w28vuUpBy47OnluTlj
	i7HanGjWdcJb1CMleFl8OmcvwDwaRnvjXQUpdl8hELWTJ9kV2XXYPUvBrsv/FxW5ZrYxryg17Ug
	lV98We1KASUebrenpLzUlhpYtg+1mSDGdcy4bksjTInmkWwoHdIeqvq+hfBrpDNc4vv0AtFpxFw
	OweqjkK7NTy+acNn9fLvJV
X-Google-Smtp-Source: AGHT+IG+6Xza7/tM6LUjpc0cgRQn/ycRxeoVRv+WuPCVu59MuNXT1qqUzDpWaTC6JfI3hnznFcM14A==
X-Received: by 2002:a05:6e02:b46:b0:34d:f0b9:97fd with SMTP id f6-20020a056e020b4600b0034df0b997fdmr6460976ilu.8.1696514053607;
        Thu, 05 Oct 2023 06:54:13 -0700 (PDT)
Date: Thu, 5 Oct 2023 09:54:11 -0400
From: Shawn Webb <shawn.webb@hardenedbsd.org>
To: oss-security@lists.openwall.com
Message-ID: <20231005135411.dw3mfr2zigmx2h5e@mutt-hbsd>
X-Operating-System: FreeBSD mutt-hbsd 15.0-CURRENT-HBSD FreeBSD
 15.0-CURRENT-HBSD 
X-PGP-Key: https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/blob/master/Shawn_Webb/03A4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc
References: <20231005081449.GA20205@unix-ag.uni-kl.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2qzn6w2fdi6k5nxx"
Content-Disposition: inline
In-Reply-To: <20231005081449.GA20205@unix-ag.uni-kl.de>
Subject: Re: [oss-security] There is a curl "severity HIGH security problem"
 pre-announcement on GitHub

--2qzn6w2fdi6k5nxx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 05, 2023 at 10:14:49AM +0200, Erik Auerswald wrote:
> Hi,
>=20
> there is a pre-announcement of a curl security problem with high severity
> that can be found on GitHub:
>=20
>  - https://github.com/curl/curl/discussions
>  - https://github.com/curl/curl/discussions/12026

I wonder if this could also be coordinated through CERT VINCE since
there will be a wider impact than those on the distros mailing list.

Thanks,

--=20
Shawn Webb
Cofounder / Security Engineer
HardenedBSD

https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/raw/master/Shawn_Webb/03A=
4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc

--2qzn6w2fdi6k5nxx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEA6TL67gupaZ9nzhT/y5nonf44foFAmUev/sACgkQ/y5nonf4
4frm0g/+I0dZzh+HoN2Kf0EhRPiqHrnhEmtOGxw6obkNgPZAOreTZMvlK4sDfOtT
rsS2zeEdWWG9lue5jtrrAb4PDri6yhatZ4+66sE+CJJD/YHcgB2O53L4jOVswvSH
+DdjBoaGe3x7im7l4iuHJ8KENBcf1EjXzwsTCVsU11gqIpTOS7A+QPc1olDgQn/9
zCMZM5ZYkR+NvNnSsT5KD2MStAYnnoY1Hod8YuuuYgYGQn56+b2OXN921JaCbGUV
AGH7acEtNWIMgp+y8rPpdKAgzWYMDwYOi4M0GyJhCh6BfqfroQb4qdXXnmLgSBRn
UzTr+qO/Kp/KyFhl9ZRYl9dNuw1PYiyctkCrGBs1mvVWTLMbdsDeelu4lBFuEWzD
EbarAuXtt0vHKm+9H7FLDevGuZI/hIHiX+domHigPomKBzRu55VJR9ukKhh+dOaK
AJBy7kfGNYEctte8GMm9cVmYg6j6JarVjBjUO8TQyXHxd1K6eNUICEcZPxZk9o2U
Pik5R/axMTVGQv1xfIOoPX/bR2MoA2Z+N4uI+PP6N/lUqNlYUj56p4VHTFAzN7SG
t+OgANcupbNxPL5lCjjuXCWFAbw0WBmzGHG2RmOdKJ+JjlophWUW4Nln56bGVFg9
LagV0a1LI6jrkyWGnpvifuK0pwqu/Ei873kTEI7+dOu0EWB6VEQ=
=30xl
-----END PGP SIGNATURE-----

--2qzn6w2fdi6k5nxx--
