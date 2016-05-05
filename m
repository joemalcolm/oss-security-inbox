X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1084" "Thursday" "5" "May" "2016" "08:42:13" "-0400" "Stanislav Datskovskiy" "stas@loper-os.org" "<CAP9m6Yc06E+Snw_1Wn_7txX+o9jSTcU_0hsf+QDsR1xuv+FqAA@mail.gmail.com>" "28" "Re: [oss-security] broken RSA keys" "^Date:" nil nil "5" "2016050512:42:13" "[oss-security] broken RSA keys" (number mark "        stas@loper-o May  5   28/1084  " thread-indent "\"Re: [oss-security] broken RSA keys\"\n") "<20160505112350.66f699b5@pc1>" ("<20160504124248.GA15148@openwall.com>" "<20160505112350.66f699b5@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22169 invoked by uid 550); 5 May 2016 12:42:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22149 invoked from network); 5 May 2016 12:42:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:content-transfer-encoding;
        bh=sqAi8L4HxDVMFqmXswtNOxyRSGZV527qGqKHPx60hUE=;
        b=zlnojCPCQpnoAwFFON6loeGC4vLUXXB03q6un+bRlXuuVAs8togQ3VMFRIm/A1kCUc
         gC4S4RfdU1+TK2f2lGHEf5UT3ON/hqzlhkMZppulksoz76Z6kKyYNT4IWE8vzQewMkFL
         qd8K+n+mq79XRU6QL2BwkKp7Xl0cJsjaxh5jM+yohUfJS6KlNkE63TQaagOHaYt25hNU
         7kODNikvK1JRhcWSfE7xfFMfcEVCsrikyN71r/HDmTWWgajulcZyo09x7fgy6qEj9ufU
         sE0o7MJho3xByeO0e2lE3KAfRgMC4UvEt9YfHPGk7DWCaaQoLpJ4Lck/TSY/pCi0YuLr
         Y7Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
         :message-id:subject:from:to:content-transfer-encoding;
        bh=sqAi8L4HxDVMFqmXswtNOxyRSGZV527qGqKHPx60hUE=;
        b=I/JdQ0sspS+daUunqUznBNg292vjDvo+Y1Uvc6yDB7YyW5LV9ZWYl4gXZ5Ix08a8si
         2j5Qb3ec9a40EQdQ8yuLWuMdkM88Z2TyGyk+LiiF4mAox9Nok8d4Gz7JxuWPzT/k/A10
         vuRVwtkGjYUSzUnroDyr3Krg22HH1mwyD6YwgF15SswS9WjLYSBULaKfSFC7AnzqVRtv
         k4L6JlHNFUFF9kBsHHpUeoQBdno8ylAImY9gvvKJa6ALVzdWRd4eqT+4tYeY09kpvmpZ
         i813qiMznzrLu+mCVp438x9CffNqwTPoMxSMGTmclUY8vsAC9uhtjXgBINaXYhWLKhXM
         KDNg==
X-Gm-Message-State: AOPr4FUCwIb0Dt0O3uYQ3tTOxqaHWBh+0eLl9asBs191MZdtvPz5O2BxNqdSQTb65W1ASmf3qdZRxtyqFDGiLA==
MIME-Version: 1.0
X-Received: by 10.28.227.138 with SMTP id a132mr3115645wmh.35.1462452133899;
 Thu, 05 May 2016 05:42:13 -0700 (PDT)
In-Reply-To: <20160505112350.66f699b5@pc1>
References: <20160504124248.GA15148@openwall.com>
	<20160505112350.66f699b5@pc1>
X-Google-Sender-Auth: wXfv_bD1-lDLRG1DDSWyeRdE_rg
Message-ID: <CAP9m6Yc06E+Snw_1Wn_7txX+o9jSTcU_0hsf+QDsR1xuv+FqAA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 5 May 2016 08:42:13 -0400
From: Stanislav Datskovskiy <stas@loper-os.org>
Reply-To: oss-security@lists.openwall.com
Sender: datskovs@gmail.com
Subject: Re: [oss-security] broken RSA keys
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

On Thu, May 5, 2016 at 5:23 AM, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
> Hi,
>
> as I know the first ones to use this on publicly available keysets in
> order to find vulnerable keys. The implementation from Nadia Heninger is
> freely available [1] and some code to turn a pgp keyserver dump into a
> mysql database is available from me [2]. So everyone should be able to
> replicate what I'm saying

Where, exactly, did you get your public keys? Would you consider sharing?
Quite a few of your moduli are not in my SKS dumps.

Best,
- -S
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iQEcBAEBCgAGBQJXKz+IAAoJELmCKKABq//HVf8H/1ZpDz5+sS/2cEc/TJXXrb9l
QuoQpRpRKSzaAJ239zeojqbvLNZ4s/p+CvczqNEQ2QhHxc4cRlcUTeq6f/54py4N
qemE5A4OUfrIgQzH/UPpXRY+N6IKiXL1wP9hMgKsDVV+x9h2ENdoa2GQlsuDenyU
OQFQoizVsU2XzOAY4MkEJKdY3oHU1yx14Bs93ayW2aN5K2ZWs9pM3zCAV+kWmH3O
47vANi7DdBTzBoixzZflruoGe6rRMDfft4vx+ngiGcPBkN5NyEpzTbPM9tAtyncJ
g8H9ygaHJoLc89iScW4HmQuLW3HEaHaMwPYv2x78X+ubFGQuoWwNADcE6kBJwSw=3D
=3DPLnp
-----END PGP SIGNATURE-----
