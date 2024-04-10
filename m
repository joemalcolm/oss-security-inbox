Received: (qmail 15424 invoked by uid 550); 10 Apr 2024 16:36:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15987 invoked from network); 10 Apr 2024 16:33:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chrisdown.name; s=google; t=1712766779; x=1713371579; darn=lists.openwall.com;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lqkBvR3I5hgHraLycLM4r5GWwdZIbqt/jSBmg7ne4mk=;
        b=Em1nGqIJJb1tVhsW13e4RFOf4lPi7ZF2RVfiwTdUh3e2LgXbdoEMr25G5LuovcEVMs
         +P5DifDs5I6vdHhkXsoNqoKyW2AVu5Aym18201z5+NJaTQLgFERIu0RjHDoF5cEXn41d
         d7xcZftHsPFFE5TyowmYKqQ//6xBNqFUyhN1Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712766779; x=1713371579;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lqkBvR3I5hgHraLycLM4r5GWwdZIbqt/jSBmg7ne4mk=;
        b=pQi0kyaWTYpRkce2luAXnwW118kAZnSBXcrm7svUTJSP9gLaJNTvxrOaYeNnJQ/ZbI
         VNWYS3S+D7oqZD98rGdoDXuNpSt3pxOdCa6CSIErQKxc1qcOAgVXnB9cYdHTwsiTwQEy
         vIq2yo0bBukzsjJYfdFvRI7Fy6GRUElXDpjWxzJ8NpJ/1RHUNJU96XMtD6A9Jepr0Hn6
         oOHIp8x1WAYk9jMD+ZFt0yNrBGEh99WK8d8l32PW6xofzJmZFsywdyT2f7ygyjYit70r
         IEj+iPObzHncndKEKLk6Yhewj1JtZnXIglBE9Wu35qlMNczQaN1OMljqMGbhnR+GpT+X
         hKrw==
X-Gm-Message-State: AOJu0YyXakryNtXP9XibJ8Od9/9Rff4R30pH4U3TN8/ZA4gVCNOaV/wf
	Uc1FEezCITQE4DBTr6b+GD9ZyOOemscUDLaPFS3o8vIgOj9/rML9MIlhpvpgyftvUoYzfVWHnPt
	5
X-Google-Smtp-Source: AGHT+IHmROOCH2L36nyyhPNALbBeAbNdEJPNGKKHH4Vc8d/2ejLoWXnPpCUPu7Zt7itAnKK4YIVqVA==
X-Received: by 2002:a05:651c:1a2b:b0:2d6:c726:ee64 with SMTP id by43-20020a05651c1a2b00b002d6c726ee64mr2847667ljb.13.1712766779260;
        Wed, 10 Apr 2024 09:32:59 -0700 (PDT)
Date: Wed, 10 Apr 2024 17:32:57 +0100
From: Chris Down <chris@chrisdown.name>
To: oss-security@lists.openwall.com
Cc: Sam James <sam@gentoo.org>, Joey Hess <id@joeyh.name>,
	Jonathan Nieder <jrnieder@gmail.com>,
	Andres Freund <andres@anarazel.de>,
	Lasse Collin <lasse.collin@tukaani.org>, xz@tukaani.org,
	secalert@redhat.com, team@security.debian.org
Message-ID: <Zha_OdW_Qqwv3AMT@chrisdown.name>
References: <ZhYEpAFolwefRv7X@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IFpGWOnnGUS/yi/K"
Content-Disposition: inline
In-Reply-To: <ZhYEpAFolwefRv7X@debian>
User-Agent: Mutt/2.2.13 (00d56288) (2024-03-09)
Subject: Re: [oss-security] Analysis on who is Jia Tan, and who he could work
 for, reading xz.git

--IFpGWOnnGUS/yi/K
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I do not think that oss-security is a good location for an identity witch h=
unt,=20
this feels like the wrong place.

Anyway, none of those timestamps are validated, they just come from git. An=
y=20
even slightly competent security agency is going to have obscured them, so=
=20
analysis of them likely just directly plays into their hands.

Slightly more difficult (although of course not impossible) to obscure is t=
he=20
actual time of work based on time of receipt by other parties, but I certai=
nly=20
wouldn't do analysis on unverified timezones.

--IFpGWOnnGUS/yi/K
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAEBCgB9FiEECEkprPvCOwsaJqhB340hthYRgHAFAmYWvzlfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDA4
NDkyOUFDRkJDMjNCMEIxQTI2QTg0MURGOEQyMUI2MTYxMTgwNzAACgkQ340hthYR
gHDomhAArjj8JGiT3wTTg/w7vvPznMcEjEXp92fYjrOKWFY8U+KTiEsZUFqsOFYG
fOiHOqaEJVGc2YcDmdg1uJJGCitxeiemnc2Gxq0O6C2SVeSfRZE1RVz+zB7pJ9hn
Ar9cfGGzYom7h/E9yqKV15Zi0jMidVmmejvPSgo25ulgT8D4AMTWNnxCFM84tbKM
nrigd2i9KcwrttiI31/EWqjoFpp+QB5H2gpZYQV/k5sBJwJm5Dc2Ix/cDEVNw0D+
D5pS7lITHzcxnbPEtn22bsFmqTff8EeZ7zF7UM1pHGBRMCSQD90TL5D13ahPeTn+
cUX/e+6mWTUj7Ry6geqNOFF9xIbmmug5m45h/LGveFOC3HWD+4SCyQbaHJyevssH
25J02xj/LOiaYj+AhviISMjhClGJhRPtq6dLHrA8LBy2YDY+szieQifUap/ej2bd
E6n3hVOpk4UKuvZmarXqdHO3+a39aNI9c7IMNapQ66LSJgHqtpgtsS3WrDpzhMZE
tXjqvF6lv7DQrMnkt4CSUNicsWMzte1CdWPXznbqrCxsHTHWaOWZ0C53hByhdPhq
vr45niy5IQl+V80SsJ/GpIxbISFyogRshp3m9zDYyQuTN2Ar8y7M3V5HAO1BDnDx
axiJ3upJkOI1b9Q6N771Apnz4JbyqQ3NoCDue89heBCea9EgzkA=
=SfjB
-----END PGP SIGNATURE-----

--IFpGWOnnGUS/yi/K--
