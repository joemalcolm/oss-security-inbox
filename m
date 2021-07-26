X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1449" "Monday" "26" "July" "2021" "12:21:04" "-0400" "Santiago Torres" "torresariass@gmail.com" nil "38" "Re: [oss-security] Potential symlink attack in python3 __pycache__" nil nil nil "7" nil nil (number mark "U       torresariass Jul 26   38/1449  " thread-indent "\"Re: [oss-security] Potential symlink attack in python3 __pycache__\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Potential symlink attack in python3 __pycache__" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19876 invoked by uid 550); 26 Jul 2021 16:23:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19468 invoked from network); 26 Jul 2021 16:21:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=pjRWQMSTbhFZrOM4yVG0NMw+Mcr/DgvYBKcfuZPPbrQ=;
        b=IrZdsFO0lBAqoKqQIVF1l0GQOyQDmi7ZJRrP1wZWqmbp99HNpTBBIzOaE8rRZykNi+
         EPtFz8T2TbRGKnWEScyJkp2AnucpTqGYi+YXsFzMJ6Rc+fJ+f7dnEl8ll7uZix05Bggn
         6t3HHZbVz+4S740Advp6mjVjwVdMhNFJyBXnVGh4L9f5QwOJRyXz9xzaooxL7GK5O33G
         39vj/95uM0nmed348GLewcOYMlZdmgAUeHrDZDIvRkJnm9GhMlahqQX5/B3cC7t0iDqn
         70tRonILlKTrLMH/aPe+SoGMK5PMIqs+CzYfeRv9HF7HP6VgbRUO+1sroL16V+HmXgz/
         qZAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=pjRWQMSTbhFZrOM4yVG0NMw+Mcr/DgvYBKcfuZPPbrQ=;
        b=LvCr1ZwIrQZYqK7UECspOpoHj+E/ygWvMWTykNK0qZ0w/vVTwwyEmZYWC2E2WzXbiy
         SnhhdTebGXA3PdKlkFcK+T3GptRXSpz6vlTV4HXsXxgh4sek+W8ZgTlv+sLTFqdJKDIK
         7m6ut/oasA4dDK2XoRU8D+YtA2DINjCrWD4ii4TtZyBMLsRaZgnHikEX8FMH6+RE0FCN
         mXQrHzRSc6TuVVjvEau5f4QqNG5XvoYnYwgA8+jSlBgytYfZ23PfrqQIKPe9jFpaLSkv
         SK8cLJrhALQSzN40jPj22FXNssomrGBLg+gotUP4gBnbkJCPN01OQPkDjwwqVePZ2zfN
         zwiA==
X-Gm-Message-State: AOAM532xZt7/dVhwtzyXLdhLET6Knp7DpJ5VB8R7WWLxNT6+hocickuw
	b1RESJgNKYnQ6EODaIpDKmqiOvN05LFByA==
X-Google-Smtp-Source: ABdhPJwjh+zcuEMA7DaY9pLzJNt1bfh2CnHDQvrpZ3QkiBrtwT/wcIivOi+2m4rrX4HG/ZfPF6blSA==
X-Received: by 2002:a05:620a:172a:: with SMTP id az42mr17864143qkb.3.1627316466609;
        Mon, 26 Jul 2021 09:21:06 -0700 (PDT)
Date: Mon, 26 Jul 2021 12:21:04 -0400
From: Santiago Torres <torresariass@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <YP7g8GUPcY+UJpg8@LykOS.localdomain>
References: <CAGUWgD_tV+cJjM_=TDrcNBhpcZOFm+JR2+Jv1tnpaSeXtM8EfQ@mail.gmail.com>
 <a373710a137a096ee8a530d960481a05566c1bae.camel@orlitzky.com>
 <CAGUWgD_G65OBZcMXhErz14E+-6MncSHwr9ZZvogDQOMvaDWaHA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Yon1sK176kCk2qyY"
Content-Disposition: inline
In-Reply-To: <CAGUWgD_G65OBZcMXhErz14E+-6MncSHwr9ZZvogDQOMvaDWaHA@mail.gmail.com>
Subject: Re: [oss-security] Potential symlink attack in python3 __pycache__

--Yon1sK176kCk2qyY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 26, 2021 at 06:59:30PM +0300, Georgi Guninski wrote:
> thanks.
> python3 shell is still vulnerable from modules in the current
> directory, but some of them like |sys| and |os| can't be spoofed.

Is this a consequence of sys/os being special exceptions, or the fact
that they are (if my memory doesn't fail me) a bunch of bindings to C
so's?=20

Thanks,
-Santiago

--Yon1sK176kCk2qyY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEkDurc2QOttZVM+/zRo8SLOgWIpUFAmD+4PAACgkQRo8SLOgW
IpUlxA/9HpP+OmojDj5cV2gAuw3fdOZwPfV+b1EScUJ7jSxUzARGW2oO7BNrNEZx
anZpi52uZQzinczGwgAvFCGwsPu5f61xQ91/VozSx12noifdae/8HqeTATkwR23O
d/PZer0c2VocpGltULmUzwDxlOxMP+Swqq2Zne9SAxQCQ0NQzIwNH68mphR2pRVi
wYXKKNu7ng8/FREjZqO9us5MV4FB4asa9qn+ikcajce1lFpa6UPmCY3UkOxEPyRG
kQOQ9PjCEQkbdB1/dAbMzvENGPttsx57A4XIV/P5iBGiep7aVaZf909OsHllsuAm
nVlPsl41Ym/LdpSFz2M2hLZNaOwJppTQOoP/II+M41vqjcxv9uSZrJwnoAkfhSoI
/KS8pAhDC3MP8Cy5HTGkRMd5XB8V6GOaymMTI0IeEYKEe6MPVVay5iqkfsSxd+RF
ZwZdUbL85yB3l5b61U/sUf7CMFWqnVJwZq+0tBY9HQCHTI9fmrguwAlciJS6qp4W
hFTDZLwhet4KlJeSpyzUSHhZb5BGIf0u8+8Kgya0m2yZjvalADvFcyEYWfVRr5ro
z8jh/RCxTQISaAdZgyiH3nP369MxRplUMhjxKSuzDMnfm/+hu7Sbh+vFozjXqVvp
hVilDjGrU9KPe7q8j82PLsxvWDT7Jr87cqghfB5NGxp0R5IhniY=
=g8je
-----END PGP SIGNATURE-----

--Yon1sK176kCk2qyY--
