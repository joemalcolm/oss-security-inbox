Received: (qmail 23779 invoked by uid 550); 7 Apr 2022 19:04:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3488 invoked from network); 7 Apr 2022 18:44:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:subject:date:message-id:mime-version;
        bh=eOLyERV8SCNYTy1KfMRxf5DL6uf4ESeOFlix8jp1pjw=;
        b=DAI5Ylpv5vI+hpqr0BHlc/U4v+1sWdafuJIAxS2EcSFEJS1/IYiV10BpMtHGbUa5at
         CSLEWipWVTmpF0ivPpZcs2WfcE3/DE/owbldCcmy1Y1idvW4oDZluyUH2gamneiut3sy
         ZiMuuN5AQ9sDtVdiLZIm32wohUk4KkdLncda/82JqaQj6BrPNcw13l94Dq1GHOafszZH
         fBtEDaeOGIMHE2imHxj8HaB3bbh/bYnsIjmlJYipDayr9j+h+Uae5n9UeU0sxbVXZHTT
         CXNCkbEHTH9zzO3zHebIAadu9Ek0sd4WmzqG9kd2cnIc/SPqJJlLI+GlvWnz6pQHWi77
         uEYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:subject:date:message-id
         :mime-version;
        bh=eOLyERV8SCNYTy1KfMRxf5DL6uf4ESeOFlix8jp1pjw=;
        b=to9ZB+85e4oJrobPSLUa3fuKyGXQtysQfB791aWigakcsgi2mUsSqAZdULor7QpkdT
         k0M57NB+z8frlg/w8nVxofJI8TtPgH01JLT6oD4ozzLCjWMixn+Fx/fMkkIEu8/ZUp8h
         HowTR6Y6fgqBSuK2IKnJnnwgPJ1O7BN0ndiJWYJOa0iKpSQ1l8Ybm/vf+Q25QM0c/Kvc
         TiFABuhnBBQ5D5PfJrw8wuiD0e6+01VemB2v2exLRAKtQjINtuWzX45PvAZqYFrzezXY
         TLOXzdtcDA66gjQboN++jTmtwz1QyDFuRKL1elgNytUedP2Wz1KrrYBDoWuYWMgAiUo/
         TGjA==
X-Gm-Message-State: AOAM531iNrvgc4q4fMQnPcr22LJHKeXfuVfkwah2Ikvc7B8L2DGGRMCa
	J08SwoMOkjMX2U/ph4YjJtbRPQhZ4aA=
X-Google-Smtp-Source: ABdhPJxaNga80K5GILgo9f79UOgZ8pVqFKKzBmLerjN1claN65G7SqG0Iy++kEl5d6qqvvhxypxDBA==
X-Received: by 2002:a17:90a:f48b:b0:1cb:2780:62a8 with SMTP id bx11-20020a17090af48b00b001cb278062a8mr2918273pjb.138.1649357079775;
        Thu, 07 Apr 2022 11:44:39 -0700 (PDT)
Sender: Jim Meyering <meyering@gmail.com>
From: Jim Meyering <jim@meyering.net>
To: oss-security@lists.openwall.com
Date: Thu, 07 Apr 2022 11:44:36 -0700
Message-ID: <m2o81c3f8r.fsf@meyering.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] zgrep, xzgrep: arbitrary-file-write vulnerability

--=-=-=
Content-Type: text/plain

All previous versions of gzip and xzutils are affected.

xzutils released this patch today:

  https://tukaani.org/xz/xzgrep-ZDI-CAN-16587.patch
  https://tukaani.org/xz/xzgrep-ZDI-CAN-16587.patch.sig

gzip-1.12 was released today, with the fix:

  https://lists.gnu.org/r/bug-gzip/2022-04/msg00011.html
  https://ftp.gnu.org/gnu/gzip/gzip-1.12.tar.xz
  https://ftp.gnu.org/gnu/gzip/gzip-1.12.tar.xz.sig

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJFBAEBCgAvFiEEFV0/xQDINEhtHupnf9n8ywAL7u4FAmJPMRQRHGppbUBtZXll
cmluZy5uZXQACgkQf9n8ywAL7u5+mg/+Nlvj4on+h6MZ/BndezVOHfvil9Q9rXz3
6ukzFBvmaDySLd1Tz4kHOYYDScqtdxEPUkh2MwLdyXwytP5U1f3+56hs0XTnOStx
pZJP+7BMAYfvoVPUsi1IhGmR+IgVPtLul8s4Hg2yTWHyOYoHLERTQRar012c3mDN
nqTKweYX9tMY4kX9Hu9z6aWuZ0nRyNcOkRZpRn+wGvg4srPqrEF7ADC2Nu1a1vsx
SZlhrEBq8gx8C7p7t68HBcKMDU0TPqa9Ao9DDZl8BNnorJ808RMAbXud9mUxsKWs
jUdI/iSaz5750EiksKjdfZcBi1woYrC2akgjOLEWHvr8VDTmbS6ZS8ARWqlNsJmT
8P3LyZBPVJcp6jBDZl2OaqDKBshNkpoBfBXa54n5VsO0cdfAgTRQKgfg/yHfgio2
6S1nAyCwEJ9Oixzb8ZbI8iZiQHyavKsDqgNt4+GRvk4wM2XeDHRRhT1BRz5z6hat
dJ4/io70Lq5Ivbk8zU2T9tOnJ/QsJ1+3xaD361Q0jLNOcHCPRoNQW3HseE99lH5J
Goo/XBAsacBEZvpsomlqil5my272SLYyCf+tl6ZxD8Z0wZyAbXU3TD5VTAe8YDLz
BOOblBCvspf7uRBlddhYefomsmG3TN6ggjGLGOfN4FNfFGlZ5Jjd7dftIDRLnCsv
ifJtT+JcJ/8=
=wVSt
-----END PGP SIGNATURE-----
--=-=-=--
