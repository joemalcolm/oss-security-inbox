X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2276" "Monday" "1" "November" "2021" "17:51:08" "-0400" "Santiago Torres" "torresariass@gmail.com" nil "58" "Re: [oss-security] Trojan Source Attacks" nil nil nil "11" nil nil (number mark "U       torresariass Nov  1   58/2276  " thread-indent "\"Re: [oss-security] Trojan Source Attacks\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Trojan Source Attacks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1401 invoked by uid 550); 2 Nov 2021 06:22:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3813 invoked from network); 1 Nov 2021 21:51:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=02uPk4gV+S7vbvf/2PGqD5SHulM+AXG2pheF+Ox9fZE=;
        b=KW2neQl47m5L5b9h6AmAcpDoA9woxLheWIdC3HavpYO5Ff7/DrUlaPbdIVvalC7/O/
         /fcwqAwLWVHPflglnDg3VpcrKtr+RtALy178hlrqweVLImI+V7kL2/iXNCTLUMuRkF24
         7RwLsEawn6ZKPj+cKICKg04KCcs454IbqoI+iENFYFGPSJNEUIavbpHXIz7/GazqHwuP
         Tq93e6DpRTQyuqXAXKeKiwuVEsQawO0Nu6o+8Pp2uHARgMJN0fjSOx3A2CFRxOVqInUU
         bDbUPBTd/muLjBfkv/me4Lpq8l5yDB6lwYLF1rutx5RKMR9V/PJkfPcyCMSI9+mstuZK
         aAHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=02uPk4gV+S7vbvf/2PGqD5SHulM+AXG2pheF+Ox9fZE=;
        b=2DR9NtKss6qJ/ZNaw56Y4flmAnrptuG9+kh+VvsBJIZexkyuKsEAFNtQZL00EydNEE
         tcg5scXC72NrUkSjANAPMeNzNi+s3cN6SSGD94UbZrhcS+51W2e3z7WK78qwRN+SR2oo
         F6BcPfYVUyibQVug9k/cfJcv5KL5sJ/NZPL9bW319CFRDshPrZYIyaB7J/aboztPZkho
         3VrPQ5lT78GII4TodGy/JcoIgz9n4KcVpwXqIKg8uMPNDs1UkehOrCSSS1sUOcJRz2Uy
         cPd6ZvD7hagRUkUQ4PpDhDUuPX5uEi/plsUyQ+ES/rzrljmJ0T8gaKc39evOPtHw7XPm
         djNA==
X-Gm-Message-State: AOAM530jvB8npvUVITZ7lUjFr8PxrDBTooYMWmccYgcIUW65+uvdkRFf
	zfCX+ZxoB9l1DHJroAGWdXWP2cq1rTpdLQ==
X-Google-Smtp-Source: ABdhPJybdtROsj6F2GlN/sfAiMlepUVwnZy6FfcDJuc/12CFsRMq1myb4rw7ojhGnzUbW2LGRT9RgA==
X-Received: by 2002:ac8:4702:: with SMTP id f2mr33258656qtp.50.1635803470722;
        Mon, 01 Nov 2021 14:51:10 -0700 (PDT)
Date: Mon, 1 Nov 2021 17:51:08 -0400
From: Santiago Torres <torresariass@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <YYBhTMCXrf9TPicd@LykOS.localdomain>
References: <c2d12374-0ed6-d6d4-60ea-799934b6f173@cl.cam.ac.uk>
 <3n67pqq3-9ro6-p138-npo0-n4314s77638n@vanv.qr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="A+KLhKwJCEwqYxBl"
Content-Disposition: inline
In-Reply-To: <3n67pqq3-9ro6-p138-npo0-n4314s77638n@vanv.qr>
Subject: Re: [oss-security] Trojan Source Attacks

--A+KLhKwJCEwqYxBl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 01, 2021 at 09:51:38PM +0100, Jan Engelhardt wrote:
>=20
> On Monday 2021-11-01 18:27, Nicholas Boucher wrote:
> >
> >We have identified an issue affecting all compilers and interpreters tha=
t support Unicode.
> >[...]
> >The attached paper describes an attack paradigm -- which we believe to b=
e novel -- discovered by security researchers at the
> >University of Cambridge.
>=20
> Not so novel. At one time, this picture made the rounds
> (https://twitter.com/acronis/status/1019152990022787072 - the pic is like=
ly
> older than this 2018 tweet), and anyone who knew that Unicode had zero-wi=
dth
> characters already made the connection.

Along the same lines, there were a myriad of attacks using bash-style
sequences to obscure parts of patches inside of git show/git log/less/
other pagers not too long ago (circa 2017, maybe?). We even discussed
similar possibilities on this paper[1] (sec 4.3) when mentioning git
commit signing of content displayed on collaborative coding platforms.

Overall there's a plethora of work around "punycode meets tool X" that
I'm surprised this is called novel.

Cheers!
-Santiago

[1] https://ssl.engineering.nyu.edu/papers/afzali_asiaccs_2018.pdf

--A+KLhKwJCEwqYxBl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEkDurc2QOttZVM+/zRo8SLOgWIpUFAmGAYUwACgkQRo8SLOgW
IpXkZg//RBtFPU51e/o8HNJp4x5lrgXLoUrfNIJnk5V9pC6skQvYSpCN0APQZkwJ
cT4xKB2TBw+thno62n3CiCsUa7gmRNafLlBQPlv13lBuu4VLl8eRPhJG3BEZX65v
x9QPCA7+7HiJb7deiV9bj/xZfkFKSUr6WY4rWcOY8lYlyMkDvEVfBe2jF8wlquU9
7q7ZD225ZVvgE8OZSdnam7PIuxukw0yx5fy2n67it5icGeoOH1IKcOjZZ15i+aWB
EqomAKOdeyn90CjlCPiGagWHKfz6vWhjWLnffBmA3DH4gYV+r3gWnJUdVqxT8i1b
czsIsDq6DLoEira53cMC05wLjoDSlCrJ2HczCjZyrXiqHKK8ZlJZHdAmJ7Vj4Zno
1c0WSc+Bck0ostnH5CJsrB57nNccCE7PSqstQzaZNConvTxYs+qxS43LtIGNOgwv
fSJnFMDRcdHc+D6/UOD4nT0cMSx+Ln8SnDxpT2qRKOn0I0Samzhk3gYknPYe00gn
mGD+vNp2Nao6I5ViGRV4VRRtMC7mofGKvP/YfGC8c6oAZL4Ia/6aElSzz6UM1keW
3TleO4zRM7MddV98WFT7E1zUEbjnSn5/CPXuQduzrOAmQE9qOrhCUNNApJS0AjyH
4LrFONYTSDWlopW+evElIC7HyFqNSyJZy/pNOcEbKk3sJXUooDg=
=dhh+
-----END PGP SIGNATURE-----

--A+KLhKwJCEwqYxBl--
