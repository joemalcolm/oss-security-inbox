X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2250" "Sunday" "16" "May" "2021" "14:26:14" "-0500" "Brandon Perry" "bperry.volatile@gmail.com" nil "62" "Re: [oss-security] Open Source WAF testing tools" nil nil nil "5" nil nil (number mark "U       bperry.volat May 16   62/2250  " thread-indent "\"Re: [oss-security] Open Source WAF testing tools\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Open Source WAF testing tools" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3985 invoked by uid 550); 16 May 2021 19:26:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3967 invoked from network); 16 May 2021 19:26:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:date:references:to:in-reply-to:message-id;
        bh=6JtH+zZdQQjc4xxvxorM7XDMd09JV6p6jZy8lpCnrME=;
        b=AyWrBhByAA63vdy6gICMEOzv/ogUDUwYImm+IaIuu5y3dL3CelCvO6x4HNVYVxXfpE
         eYzKZ4e5Ej+b3mHmNYvQmpL8iNCDdIloQ8zu7OJde2JfrKZ8buiAs2muXutpXIek+w8Y
         dJPbUH+KCizz34Hp83/z+bFeIhkF9IvlE0/6fqgTnIKuh+Ly85PobfDoV1vcW3L0BVi8
         47LE9ojEpncQeOwX9s1pFHfTCJudjpB7jyWQxxyAsAzUhw1jovUhEbhVGuwZKvHH48a+
         xP14pfbwRTEhCeHVT1sJiesKKvYK3VBGE8APmWi+STlsZokfHETF9WhhXMHCOakYTwf9
         YU0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:date:references:to
         :in-reply-to:message-id;
        bh=6JtH+zZdQQjc4xxvxorM7XDMd09JV6p6jZy8lpCnrME=;
        b=GPsAW2qHVAMpxu40QGOyspQVz4w4LG0y7lCYriJFchMaclnb3vmP6OWrut9dJ46LLY
         +fW0uiijcqfXRtcQwy4JFExPud3fPWt3TUiZNYJKEECao+C8wqtBREMtFvoacROv94QM
         qp+7HPpojkXqA4GoYYJE8DQgAdGppuIQSp4zRRXfqDd2IpblPTiLUus2bs9YgjJdup5l
         OiJABqrXDokTKwHyYohOimjiDv6L875OHh7p9eoZhy2PdUsGZF48BhUlyFr8OG6dmdj0
         AG5ymyCkDBKMc/TZdCliMmKGSjEDg27e4qq7q70VIF+1gMniwp6xgtQ4CDZlXfs48giL
         XFcg==
X-Gm-Message-State: AOAM533sPcBMioV77gDvmeNj+LvfS3LV4tNK63rJpIL+1Bu8zywdV842
	gyb/XphbNAKayWch2zydxl4BzdxckYa+wg==
X-Google-Smtp-Source: ABdhPJx/Bgtuvy5UZ30R2CueGuUjEjagCWaLguxQ00K1sPQ4Wn2F6MTeyme8HI4ivr99QL78hNIauQ==
X-Received: by 2002:ad4:5613:: with SMTP id ca19mr16131313qvb.3.1621193176764;
        Sun, 16 May 2021 12:26:16 -0700 (PDT)
From: Brandon Perry <bperry.volatile@gmail.com>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_4757F89C-30CF-43B2-8A26-8956BDDD5B49";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.17\))
Date: Sun, 16 May 2021 14:26:14 -0500
References: <CANnFHybun4hjZqFqOsLOhdPfPX-Q3tGpxzyxjqbepZ+nK2VJQQ@mail.gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <CANnFHybun4hjZqFqOsLOhdPfPX-Q3tGpxzyxjqbepZ+nK2VJQQ@mail.gmail.com>
Message-Id: <C713881E-C4D4-4CCA-B8F7-D315B0AD975F@gmail.com>
X-Mailer: Apple Mail (2.3445.104.17)
Subject: Re: [oss-security] Open Source WAF testing tools

--Apple-Mail=_4757F89C-30CF-43B2-8A26-8956BDDD5B49
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Use Burp and test by hand?

> On May 16, 2021, at 2:01 PM, Martin O'Neil <martinoneil.cyber@gmail.com> =
wrote:
>=20
> Hi, list,
>=20
> Does anybody know an open-source tool for testing Web Application Firewal=
ls?
>=20
> In an ideal case, with an out-of-the-box-ready CLI/UI, PDF reports, and a
> configurable set of payloads to test. I need it to check if my WAF
> deployment and rules work well.
>=20
> I found at least 5 projects, all made by WAF vendors.
>=20
> 1. https://github.com/wallarm/gotestwaf byWallarm
> 2. https://github.com/signalsciences/waf-testing-framework by Signal
> Sciences
> 3. https://github.com/fastly/ftw by Fastly
> 4. https://microsoft.github.io/WAFBench/ by Microsoft Azure WAF team
> 5. https://github.com/f5devcentral/f5-waf-tester by F5
>=20
> The GoTestWAF project looks more active and supported by the community.
> Does anybody recommend some other GitHub repositories, preferably made by
> 3rd party folks?
>=20
> Thanks
> Martin.


--Apple-Mail=_4757F89C-30CF-43B2-8A26-8956BDDD5B49
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEoMgt+2k+7USJTPNpDj2JIDyRmS0FAmChcdYACgkQDj2JIDyR
mS153g//cgy7X7eXKbhlAzPLojG31nqPU25bC+pf5B7P8lsohyU1vLzqiD58LRGP
kTFAHXj9Cz305h+xTqUHPH40mPGB6luF0hSrwRe7zx3kAxBDFFC0O15zLxX0pUzH
aXKakAYs0DxdSbN6UuIrxPMdziotVlja/m6QODUb8ecpAPyO+HpxTdNysA7C5cOo
mX/M2pazqJT6kQjhjV9M5q/wkU8IOlPOEyl4ZWXTsIVlulkgmLR1sB4tcv1w1t+V
3JghVsryLvzvRTUzRFfGaNX0IhZjGJMtUu1nTyecolBbvJCcw91ZDApQBWhCO6A6
l62O4+LYmLc+7lXJnuJWcsb7OF7Eoc28tzbJ4V3f7guPzA0mMxCgFtcYMV79fODH
ensKJbHXLjnrNUfkNI1a1n4DxfZx8nWRw7mDWqKhldtJEFUEiQOnqYUZH4MD9s/2
t3PW1GiupmMrOGtHl+I9tIra0iYAflkGaMF6icEfZZtUI23zrrYfuIyP+0PG+jjG
Xfsp7QEt/ui5qx04bgx8xL6F+q+qH0HEzPWAFengObwMoJi08Q7C3KqOfKcR5XLy
cfXTh0OcBpmeiLKZWxSbRq7ZWsnYck27CmIrmj81W8QNCWwthf1XyLtIz9EzlthX
zXxZHHyIIEO63+jvYTAX9oitPyJ8xcLBugEy8HmGUw/y/0AX2oU=
=UZsI
-----END PGP SIGNATURE-----

--Apple-Mail=_4757F89C-30CF-43B2-8A26-8956BDDD5B49--
