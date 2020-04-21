X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1509" "Tuesday" "21" "April" "2020" "12:52:28" "-0400" "Santiago Torres" "torresariass@gmail.com" "<20200421165227.exhxkcqe4nhzzkes@LykOS.localdomain>" "40" "Re: [oss-security] Pacman package manager - taking untrusted input" "^Date:" nil nil "4" "2020042116:52:28" "[oss-security] Pacman package manager - taking untrusted input" (number mark "        torresariass Apr 21   40/1509  " thread-indent "\"Re: [oss-security] Pacman package manager - taking untrusted input\"\n") "<HVOfwapPoUpExeEC6pUVJFD81vMaCFIGaNo0Uodnx5Sk40Z5SD2JmPGp-IWcmnvIX1Qswb0Kif33n0bqakSLFndsMqYgjY4lTVIRwN_MSfw=@protonmail.com>" ("<HVOfwapPoUpExeEC6pUVJFD81vMaCFIGaNo0Uodnx5Sk40Z5SD2JmPGp-IWcmnvIX1Qswb0Kif33n0bqakSLFndsMqYgjY4lTVIRwN_MSfw=@protonmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Pacman package manager - taking untrusted input" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10093 invoked by uid 550); 21 Apr 2020 16:53:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9704 invoked from network); 21 Apr 2020 16:52:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=IlH1NCIHNJn998NHbKLbjrKLytOk1GrHunWTbtg0imQ=;
        b=uZtylD/wKrSymlY/4Os9F13LFzqJm/ZtShB7VuAUZoafiTY83fsInedlvAN+2+YMSS
         Fjj+PVElpILp0IbGTaGkVopBZgH6VpSTbGMnyMV0n63D6nR0jptgyLgEpAEHPncfpHXQ
         87/koQVLWb5jmSCAuko5ZB7WNawb8kMzcu1WeSzF7GcVv7rDyxs99+iOkZsoN7rbqodz
         wm94abgod89GtKN6I0LD5Vxw1hpTg1d+61BibWt6H19n/uLUirKRy3gMu49i3C4G5IiK
         g1jEYaqJhhDa+IaKST1TJ8gBKSa/Jox71mQ2dyq12F9xoGJ4vKBZIMYAzCzXgNs08ATW
         rnBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=IlH1NCIHNJn998NHbKLbjrKLytOk1GrHunWTbtg0imQ=;
        b=GGS3xeYe54GWaX7OsvXUwwRl/k3ks/DkdkZH072UnZMIJDtVgb+AB0AwE58Azq5rRh
         /zo6FWeLMvsjiZqtW2kuRvwBnPUX2s6pNhBJTIR+QNJYONehom30sHSxxP9Ezth1LkpZ
         RcLo97AFFkpTuZ5HoVGkQiCrY21LsJRuqtIOvPeWoaRbSA9+wD+Oo64/KA+/CkWkKSeF
         NrmWKSNmBnSs5p5LjnWIhbx27SP0Uqlo56t04BR6U7uDkjvjvifS8yvX7uX8CmdcDbEf
         v6N3sWskar3J/uO+NQgEckbYFRyvrCqaLyOM93MuEbKa0IJt/xHtMGPdo/ra2As8FieA
         p44w==
X-Gm-Message-State: AGi0Pua06j/b4lfFCvNx2F/H8brgt1IP0mvIhW2DAZjS+ULYKiBL1teX
	cys8qndgZgkgyVOl6XpGnAm3qJuhl9w=
X-Google-Smtp-Source: APiQypKb+I4KLMJluvx/YhlLBoo4WROuMHv49U7S1YhW53o1dXlFmF/2rEL2tCy/zLSdyuIBeRDbig==
X-Received: by 2002:ac8:33f9:: with SMTP id d54mr22820281qtb.239.1587487949244;
        Tue, 21 Apr 2020 09:52:29 -0700 (PDT)
Message-ID: <20200421165227.exhxkcqe4nhzzkes@LykOS.localdomain>
References: <HVOfwapPoUpExeEC6pUVJFD81vMaCFIGaNo0Uodnx5Sk40Z5SD2JmPGp-IWcmnvIX1Qswb0Kif33n0bqakSLFndsMqYgjY4lTVIRwN_MSfw=@protonmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hcvfibjlixkolbbq"
Content-Disposition: inline
In-Reply-To: <HVOfwapPoUpExeEC6pUVJFD81vMaCFIGaNo0Uodnx5Sk40Z5SD2JmPGp-IWcmnvIX1Qswb0Kif33n0bqakSLFndsMqYgjY4lTVIRwN_MSfw=@protonmail.com>
Date: Tue, 21 Apr 2020 12:52:28 -0400
From: Santiago Torres <torresariass@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Pacman package manager - taking untrusted input
To: oss-security@lists.openwall.com

--hcvfibjlixkolbbq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 21, 2020 at 04:27:08PM +0000, jellicent@protonmail.com wrote:
> The Pacman package manager, used by Arch Linux and its 10+ derivatives,
> introduces a critical security flaw in its current state.
> ... The database, however, is not signed.

Or
=20
> The code supports database signatures, so the real issue is the distro
> infrastructure.

Pick one please.

> [1] https://wiki.archlinux.org/index.php/Pacman/Package_signing

--hcvfibjlixkolbbq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEkDurc2QOttZVM+/zRo8SLOgWIpUFAl6fJMsACgkQRo8SLOgW
IpXuSw//Uor1X1xygq9ttv6aZV6dFH14Hw/ci5EG+HCG6TVgYACB+Ix3Occim1rS
xotHvwYb9V9oRYW/HVYUdUWo0tf9Yu5Pbf77b0VuHHRM+FlpNIuSJYVlRIa9b077
YK6i0Vom5zWXkQOD0AhXAk0RWM1WHTD+G4SR+Hb6CbOFLVb6AJGUC5z0q8GRYyys
mF8Nm3+TMeadysCGSpJuYF3VNJZU2ap+QNtAccrgi4s+PL9Igeemo+m6mTMpo99o
HB1eJ7IiyC8Ybe0F9Ljffzb20YF1FwK2Mg6Rxh96rVgPB6btJMIRUQPdfkdBAi/x
589aSD7r6pGYoiKkVkODx7Ucxu/Vmar+dd6R1gysd6E+/GKsas8G1jw36o5JSmJ4
jtdG4WYvJXawpCw1Asq3D+6qh1a5lV5nApSSHn/pKyzkQvZyd34CvkqAZEmFOStu
3pAzygh4r+Un0XUDyHU6a/6to/1w4aMF9nRXFJbbm242zntmgYLvf3B5qi5mlPcr
XfaL1fPukUyoLtjivBLaydVES240PPqTN6FSP8UGAiCYuGu0BH4zXf+KMbSBa8wj
gIA2V7O8HdcO9X8xRRClil9UAij3T/MI6okZ8ZqSxVQ6CnmSNzZmCNcbWtAWW/ii
Fno9Vx80psmo0U6wSQC1PxiZiBP5ni7+Dgv9VHW2llI7PAt9qdo=
=XWa3
-----END PGP SIGNATURE-----

--hcvfibjlixkolbbq--
