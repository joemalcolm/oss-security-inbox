Received: (qmail 5139 invoked by uid 550); 22 Dec 2022 18:05:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23580 invoked from network); 22 Dec 2022 15:05:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hardenedbsd.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=P3D3A6TYeQJcHn7qvVb530WSbVpa7FCWzP8L+H1C8dY=;
        b=JYk5p92sZOapPmoTwf71f/j6TqH+5+fuvfkT5/hcLihmUMZs1iKUB407d9RM0x+Gme
         uZRlLRXfI5uR39jjykFperFiTTlAc1OUbf5rlBUtn/x1Myn3T4Nl/GBeNkjpVFT/82zX
         fExtZIH1/pa+1VoejAdR2fuOLquAdsxdpfnW5ZkazbX5aXiDQMmKukwm97+M4XL8IUsU
         OyAqQxfuObUEHbUHCbcXysQ9Ok+1yHFPBV5L3kJs7nbfNrFxOZyNiLmx/MHGGWQw17xr
         IGFTLeEw6Kph8BLZUqv2GlSrwU1M0RTJ/6OLpXJB1vBER/Qs+Xrs7BDmKItMF/N1TjB7
         1OKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P3D3A6TYeQJcHn7qvVb530WSbVpa7FCWzP8L+H1C8dY=;
        b=qt5EeqNPI07M7lJ7N8YP6io8JF5FwHrDl2g+jq2hn1Se5PXwZHHBK9yb+CJCLI+Pp3
         Vp5N4svroU9KSnZTFQNvQE5EVu6qDBm9BywYWzqnd1W55vOvAg1YQYWly44Y5jUKp6Cj
         sZLtiBTR1Zl2iICo9MuY1mJmpcNb808rMbDv3FpFNiexelv6WRI4D1lTJ7gTa8jbN0Qt
         XPSBfXWa9T3RUJrFay6zNoOX+NLDXlakfW+DfKNpZlYerUKu7EFDJPC+6NlukKYJviCk
         t86rb2p+/Ao8fJG4JjOhjsldOjdDdAv/HHiuAZ5DJsnLu/EGka4/+Hw/ligJScy0kW0U
         WQ/Q==
X-Gm-Message-State: AFqh2kob25iTMXp6WCLA7JcWNVr8FLb+ZzqyERJl+yjyPrvrxWqWvPUa
	j9yKUPiSpr1ywGxOKyPwupg8s8kb25XREX77nW18UBxkW7Ac25rqPSpoNsViRweM4QITDVm8YsC
	WQ//xnt4001cduyCWzXdbjuOLkpzxiOGkZ/ba/J5Ga3vFoVlucSpFwMCQKKTnycDRQpkKYTSgMX
	hT/8MwPpDmBMKFnhmpMg==
X-Google-Smtp-Source: AMrXdXujoiE3W29FzyQ/s7RDZZpE9qto9PAUi0h3f8QG86Ba9FfgrWS6uH7nYE9aF9slVMvWC82R3A==
X-Received: by 2002:a05:622a:2518:b0:3a9:8cc6:d4b2 with SMTP id cm24-20020a05622a251800b003a98cc6d4b2mr15028105qtb.5.1671721489559;
        Thu, 22 Dec 2022 07:04:49 -0800 (PST)
Date: Thu, 22 Dec 2022 10:04:48 -0500
From: Shawn Webb <shawn.webb@hardenedbsd.org>
To: oss-security@lists.openwall.com
Message-ID: <20221222150448.5wyrhot7ikhp75j7@mutt-hbsd>
X-Operating-System: FreeBSD mutt-hbsd 14.0-CURRENT-HBSD FreeBSD
 14.0-CURRENT-HBSD 
X-PGP-Key: https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/blob/master/Shawn_Webb/03A4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc
References: <CACT4Y+aqb9V=WO0gsN1DgqimrjHiY3x+KvKGiz7b95jh9gubhw@mail.gmail.com>
 <20221222144445.i6z7fifqily6uej5@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nabxe5hgz7oj6odq"
Content-Disposition: inline
In-Reply-To: <20221222144445.i6z7fifqily6uej5@jwilk.net>
Subject: Re: [oss-security] [Linux] /proc/pid/stat parsing bugs

--nabxe5hgz7oj6odq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 22, 2022 at 03:44:45PM +0100, Jakub Wilk wrote:
> sudo was bitten by this back in the day (CVE-2017-1000367):
> https://www.openwall.com/lists/oss-security/2017/05/30/16

I remember performing local privesc's against poorly-written cronjobs
that ran as root and parsed things in procfs. One bug was in a C
application that had a format string bug when parsing data from
procfs data.

Something akin to this (in C-like pseudo code):

```
fp =3D fopen("/some/logfile/here", "w+");
procfs_fp =3D fopen("/proc/pid/something")
fprintf(fp, something_read_from_procfs_fp);
```

Name your application "%n" or a shared object "%n" and you'll have a
fun time. (Of course, replace with actual format string exploit).

Process hollowing by abusing /proc/pid/maps and /proc/pid/mem was a
fun tactic back in the early 2000's.

We knew way back then the dangers of VFS-based wizardry. Did we lose
that knowledge somehow?

--=20
Shawn Webb
Cofounder / Security Engineer
HardenedBSD

https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/raw/master/Shawn_Webb/03A=
4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc

--nabxe5hgz7oj6odq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEA6TL67gupaZ9nzhT/y5nonf44foFAmOkcgkACgkQ/y5nonf4
4fqH9w/9FJInXz9vEqhbJ6B5PZdNsImiP0+gX5eo/9B2LHMgWukXXSc/NWBTFgnM
4iVOuByd5fZHooJRUuzDv0cC6juND16ZHmO5mpP0HclzZeV8hx5CzK/vZMWDQhWO
MSSlnKBPNVdKvlk4RTK/Eb7cdj5MAK4Unnw0LZt9cNKpKRxRGye/TlRJPEErzwt+
/Wpn/noURvAomoAS8N3Dn1SdWBeVprHZC/hcPcQYZ5a4FImHUPqz1FBm1CzOagun
/a60mdhNbVRnHCSMVnBYKZd1m5RX/6VzlPnuz9AejsP91V1FcpNxHkkZE0oieJMB
CNMliuzvZ2Gc3QRAcIXA7cCi69paAEx/GK2cnFmJW3zt9ED4HFmfRCXfnHs9Q7BL
t4RDEJgxgf/mFS4YjwRpeyZgy6gtlreZ3OJY3Uj66tDLBtzgC1qj4Dx1YyX6baOx
czimwbnY1Izuj1srV8qzBi4Tp6fLmOfYxxAh3vPj55Lx52KLD/OgWA5m5pY7QDd7
TYSgPVDWzk+zkzeJLZkvmbOyFf+ly/tKoQU8XIiCigSdIATOt1FfIGaOHwl+QQc/
i315a+eCwDv6od5tO5KL45jkBcsbdyW+zyCoU37jcaHwiGY9WGdT/xehmf+Bc4Oi
KK2ZhA8VSL9UUlUqHKXPCnB9jt67lNtf+ChhD37bCvIniGmNs1U=
=ysZk
-----END PGP SIGNATURE-----

--nabxe5hgz7oj6odq--
