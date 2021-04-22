X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2175" "Thursday" "22" "April" "2021" "12:41:54" "-0400" "Santiago Torres" "torresariass@gmail.com" nil "50" "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil "4" nil nil (number mark "U       torresariass Apr 22   50/2175  " thread-indent "\"Re: [oss-security] Malicious commits to Linux kernel as part of university study\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3631 invoked by uid 550); 22 Apr 2021 16:45:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1801 invoked from network); 22 Apr 2021 16:42:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=3aZLrBf5oIeGQ1fkI5EpvjpxT8sSBYHcLF5AaN7tFCE=;
        b=H2Yax5Ptl/V/oZtu+NyV28mZLLDBuwsFDz6b0a91tHARu6odw7eoO7YBN7LcxMJnL8
         MlaAaKCwRQOuGFKBvVCfFvPXFDwJJfKXfDTH3NgtYIEg79FW+cO/QGJmRq0uylfFhY8z
         10NmG1OLn5n9fDkXkH7aZLFcScbtTcwJxODLD8A9MmRi1AZk9G/jGCOMDpp95TKOvlmB
         /kCTEIrLbM9r3neLWWlSK5qdVRt8/lJGgWbKO0PdBKkcioZgZsrQayM0vB9jyWHq9/Ec
         wui4asgo5zYREHNUV52HoRQBfF5cCg3yXs2y06CoivF/0s2LrBxpcPMYlZ01RO206ajU
         3p1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=3aZLrBf5oIeGQ1fkI5EpvjpxT8sSBYHcLF5AaN7tFCE=;
        b=OO8iGwdSjhnsWmvAT5mxppZ2LB3TSWr6y1uI1jdSVMWMzo5I5jx9nItHEr9uWVaDAE
         yRX4RFGGjnPQCYuPAzynS1O15yBL5op0lCS9kSXdcxIG6+3pDiPgla59UGmZsmwsM01W
         VzilBLlEKOYG5V8fj2BSyDeVxCwt7WQ1sMPguQ1F2pZ+sF3OYO2P4dko5samVb4qsAbm
         2ReecsJDyq9BlGPykiD7E1uoTebk3BnFZE9Sa8rm1Dsuoh7x3hhwAyVGO5b3l7BU5bRf
         wsIec2VRpGNDeB2bU/rNWvbELAOSvPJKjv1FcZaCDQicEwgNA+bVO8sgBoeuD3ncPtIW
         fdIQ==
X-Gm-Message-State: AOAM531oZZCm5WBaZ73hyL9cjC5IHj2mj1PWcGaCeKpELWdu+Xk69l4a
	KXrPccjbi+4uP6kBVCyafaqF2mRkyP99Zw==
X-Google-Smtp-Source: ABdhPJwxHl1BFVsvnELjDcSKjuEhkWlWx8vu/7QJ3f3TNpevpATqRF0GmbLej4rAhnWrTNyd2CMzaA==
X-Received: by 2002:a5e:880c:: with SMTP id l12mr3499695ioj.195.1619109716131;
        Thu, 22 Apr 2021 09:41:56 -0700 (PDT)
Date: Thu, 22 Apr 2021 12:41:54 -0400
From: Santiago Torres <torresariass@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <YIGnUqbkYtqOAQCx@meme-cluster>
References: <20210422065959.GI13079@scully.more-magic.net>
 <CAEo4CePqice09K5PPhmxwwF3jg=USrqRqM5FgVX_jCB8sZfDeA@mail.gmail.com>
 <20210422095945.GA2495@scully.more-magic.net>
 <4DCB6EF3-73EE-4038-8437-FEB339F20F90@dwheeler.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="J+97X6upPOwVy6Zy"
Content-Disposition: inline
In-Reply-To: <4DCB6EF3-73EE-4038-8437-FEB339F20F90@dwheeler.com>
Subject: Re: [oss-security] Malicious commits to Linux kernel as part of
 university study

--J+97X6upPOwVy6Zy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> *ALL* OSS projects should review proposed changes for potential security
> issues, and harden their software & supply chain against attacks.
> I also welcome research to make that better!
> But we don=E2=80=99t need researchers who perform attacks
> on production systems without authorization, or perform
> attacks on developers without their consent.

Agreed, when I first heard about the paper in November I was very
excited to read about it, as I sometimes face skepticism about SC
attacks (less so, now that they appear more in the news).=20

Research in the space is important, but this is akin to cutting the
brakes on a bus to see when the drivers or the passengers find out...

To add to things, I don't think the researchers themselves are aware on
how the lkml actually works. They wouldn't be able to assess the result
of their experiment, or prepare a meaningful explanation for the IRB
with such a flawed model. I'm not trying to point fingers at anybody
here, but us academics need to do some soul-seeking in terms of how we
engage with the rest of the software-world.

Thanks,
-Santiago

--J+97X6upPOwVy6Zy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEkDurc2QOttZVM+/zRo8SLOgWIpUFAmCBp00ACgkQRo8SLOgW
IpWJQRAAjWbdgyPJakBNZCnhgxSFHHa0jsY6dYHomFjXWZ4JK6pRUPZJojQTfZST
kdfugbe4TqBLIlB7hn835l5WhuaZKfqx/8RMrQLGHum6vBl/ZLZckgQVrxeOY4R4
gbGf1anna/dDSFNx20i4HMhUGf/oLRC3gbRI9cX2z+6g6XW901znJC/3sDWMN9Dh
tZSd/il10N2m1wnixv5SY9SmcSk3orNm9uJ3EWy2b//kpU0Q5DsYDdGDCq9POoND
QDBM3b9jmW7GdN7KRYWCG5yf2zibO3yt/cEG2yZYHSUiY9dgm4keLCRvrrfvToC9
nffjj75usb5z/EMUL+vt5Mz8H37goXjgczhWXqAYa+bnpzeZD8exWt7L7wRMJ6FO
/tagTYDl+iVhRKH+FsLE4g763CbNUtsuKjSoGXYxi/+MO4AGfZsTd9a+saeQo/Lw
/gUeNj96gb4l29z2DCZo+QK/Kz+dbWnANDMua8qQeq0j1KOxUvcXvvCrggp2i1st
xxVr3OPpnwY66LH/Bj3MB4rVqNZd4fhQFk3u2EqvRHNbPlHPahGLSgtlrWayD2Fh
NMLtEGKDKJHMhfrci9KcRkvuoeMbX3xUZ1h+n7C0KnLu24k2v0RWHMRjblfKPYbn
ZNRNQgGoJOSiCQ2EVuIjkt7UjhbUN4NxFIIaINNoHgoWSXGkUdc=
=JcBu
-----END PGP SIGNATURE-----

--J+97X6upPOwVy6Zy--
