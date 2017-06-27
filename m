X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2567" "Tuesday" "27" "June" "2017" "15:52:49" "-0700" "Euan Kemp" "euan.kemp@coreos.com" "<13697db2-497e-e64a-5a6f-e66100e2dc22@coreos.com>" "61" "Re: [oss-security] CoreOS membership to linux-distros" "^Date:" nil nil "6" "2017062722:52:49" "[oss-security] CoreOS membership to linux-distros" (number mark "        euan.kemp@co Jun 27   61/2567  " thread-indent "\"Re: [oss-security] CoreOS membership to linux-distros\"\n") "<CANO=Ty1Py6iabbmct=ic55=sNRaRdUxDnucZjftb=B==56NzCw@mail.gmail.com>" ("<e2ec939c-1fa5-8619-7771-d68ee2bff13c@coreos.com>" "<CANO=Ty1Py6iabbmct=ic55=sNRaRdUxDnucZjftb=B==56NzCw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9303 invoked by uid 550); 27 Jun 2017 23:09:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26321 invoked from network); 27 Jun 2017 22:53:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coreos.com; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to;
        bh=Kxsd8e+cY1G0GHofnVQ06CHfQwPM7swLrodKxTh7HwA=;
        b=I7lLUunHNtwNhCi/9QjZB+0GnStvYE7gl1lFjBdySpjj8TB4Hu3GHuA1S78RwM4puf
         uO9yTFMavSweqhimI+3/GUY4MaElmQlmaeZ2a8UgihozdwcfI2ll/6PUPnfz70pURhPr
         x0rXNhar1zZ/EK0go8X0Tf04PBRV5BtknRju4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=Kxsd8e+cY1G0GHofnVQ06CHfQwPM7swLrodKxTh7HwA=;
        b=RvqjdBjx1FMg20TY2LOn/rl0gqNLPO/1cgE0Qfk9R65gJbzRxBT5FT/jt2h9U/DwT9
         jXCi2IPD7Epq7NNT7f+QLvcpdmOi46QeLSniK9ZP1Q2svZCKRCsw1l9y75VS1JF+KVwA
         SB8L3o9artLTc5eYI7p5HYv6YccEku+qkFULR+nYbMMLi0xKLukKxzp5mP+eCvhwqWi+
         iZCPi6bh5PuOKiFC+8b1E/497t7u9OTvtmzuDMjWGtnyWPSk1ra/Q8PtbCozSx4h3Iz1
         j0CH2msOSye+UGtsJpNEwrxuqlN6KbJyYFqklIdTdIxXXuXcFbxuZzIpGzwXKM6ve9sG
         Dd7g==
X-Gm-Message-State: AKS2vOybbZ13EnHoaPhGWzUBUrXXHopY0yc8R/7Nah73PzBZf21xjUbV
	ErMILRljowSIhvKIuHQxww==
X-Received: by 10.99.174.67 with SMTP id e3mr7321212pgp.75.1498603972234;
        Tue, 27 Jun 2017 15:52:52 -0700 (PDT)
References: <e2ec939c-1fa5-8619-7771-d68ee2bff13c@coreos.com>
 <CANO=Ty1Py6iabbmct=ic55=sNRaRdUxDnucZjftb=B==56NzCw@mail.gmail.com>
Message-ID: <13697db2-497e-e64a-5a6f-e66100e2dc22@coreos.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <CANO=Ty1Py6iabbmct=ic55=sNRaRdUxDnucZjftb=B==56NzCw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="RsdpIuq7pdt76SuisfauCHm2BJFUDmN2E"
Date: Tue, 27 Jun 2017 15:52:49 -0700
From: Euan Kemp <euan.kemp@coreos.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CoreOS membership to linux-distros
To: oss-security@lists.openwall.com

--RsdpIuq7pdt76SuisfauCHm2BJFUDmN2E
Content-Type: multipart/mixed; boundary="NTShGArndVprV35b3j11WuuGmlwo8ajxu";
 protected-headers="v1"
From: Euan Kemp <euan.kemp@coreos.com>
To: oss-security@lists.openwall.com
Message-ID: <13697db2-497e-e64a-5a6f-e66100e2dc22@coreos.com>
Subject: Re: [oss-security] CoreOS membership to linux-distros
References: <e2ec939c-1fa5-8619-7771-d68ee2bff13c@coreos.com>
 <CANO=Ty1Py6iabbmct=ic55=sNRaRdUxDnucZjftb=B==56NzCw@mail.gmail.com>
In-Reply-To: <CANO=Ty1Py6iabbmct=ic55=sNRaRdUxDnucZjftb=B==56NzCw@mail.gmail.com>

--NTShGArndVprV35b3j11WuuGmlwo8ajxu
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 06/27/2017 03:13 PM, Kurt Seifried wrote:
> My main question would be what expertise do you have in helping with
> security issues, e.g. kernel/glibc/other engineering talent? Or do you
> simply need this as a consumer of such data (e.g. so you can get containe=
rs
> ready to respin for embargoed issues, and to be clear, I'm not opposed to
> this type of consumption if it's in the public interest, you won't break
> embargoes, etc.).

To clarify your example, we're primarily concerned with preparing
updates for our distribution's kernel and userland, not for containers.

We'd be happy to help when we're able to, but our intent is mainly
consumption for the security of our users.
We'll, of course, respect embargoes.

- Euan


--NTShGArndVprV35b3j11WuuGmlwo8ajxu--

--RsdpIuq7pdt76SuisfauCHm2BJFUDmN2E
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIyBAEBCAAcBQJZUuHBFRxldWFuLmtlbXBAY29yZW9zLmNvbQAKCRAwQW9VXxgM
zNyZEACjEW6w8VLWlSEl/3XAzGLNbsHacUkXVO0AsosOi7Ppfz1EOSq6R2qafBWc
Dj7e8EfaAA7lIUs3GTK7Zw17PQNZriOaQIy34ZwiG8vopH0efGfGJe/E8XwN27qc
KMj1t7Yhh2iD2xwBliO1T6CPjGEnUC1iQtJV3iU6CcK9vLMqtF57LvV+nl6ozNkr
rxN/iMHHHWtZfGOQUh7x8M/f2b63xl8fvlpDNewgKVaTV5gPbPUbxXhpODO4fwyW
VV/5m5fkDyldPURWubgi4FxplI+sbA4oWr/Q6FHCt0kBlyOuVw3UAuzmVRiAP8bW
UVCWIt8Tej+qQk5cUd9LjqgUZEclBNVgjRHi1dkH+abiSB4tGGtOlQWnFgEMYFvL
A3zKINTpoYVAyhm+DP1WU7v6G2sqQV7fw7ey4Bs92tLPmU0J49+GF2RgDzP75BTS
66RUTol5tZIOTnSEXGO8cVHbGwr5ZHqqWOkP/3ovl6+miSqIqMSfLq9cV3IvrokD
6DKhWj8bq05MmV57JiUvFNaIRwgpouMwlKpDEuDcKc/yym269/CK1PYy69m+utNN
v2xvJAcWtp5w7XVgD79cO9V+ch51zEqlMOkL4u7zoZUwdwwbcNpnhSwWhjfySRls
miCpmtvMVCGnhIpHzcHAdPcw0VTzXdq/8LyyDkIlJ4tg5/RoiA==
=Qp+A
-----END PGP SIGNATURE-----

--RsdpIuq7pdt76SuisfauCHm2BJFUDmN2E--
