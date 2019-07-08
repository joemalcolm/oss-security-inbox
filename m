X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1936" "Monday" "8" "July" "2019" "17:23:43" "+0100" "Luca Boccassi" "bluca@debian.org" "<32fef869c240906d269ba83b0187479cd9637925.camel@debian.org>" "54" "[oss-security] CVE-2019-13132: zeromq/libzmq: denial of service via stack overflow with arbitrary data" nil nil nil "7" "2019070816:23:43" "[oss-security] CVE-2019-13132: zeromq/libzmq: denial of service via stack overflow with arbitrary data" (number mark "U       bluca@debian Jul  8   54/1936  " thread-indent "\"[oss-security] CVE-2019-13132: zeromq/libzmq: denial of service via stack overflow with arbitrary data\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-13132: zeromq/libzmq: denial of service via stack overflow with arbitrary data" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20291 invoked by uid 550); 8 Jul 2019 16:29:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11315 invoked from network); 8 Jul 2019 16:23:57 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:user-agent
         :mime-version;
        bh=s5PigszE2oBWxE1fm21ozkuc0Fz9Ah+wtxGNgAbpEYU=;
        b=VsSgg/951+lFlWZlYPSUCo02MN4sTp4jR1JhcNhmjLPOOv4TZxaf5TeEItuiXWV0iM
         rSPxYXE+mXqeqqQrOTYXtb+NYW3vCa/Pw0VvCbn/X+30QfRAVAZn8EyZSI0E78kNkjxR
         TDXFo6MgS/Z5OE4/gDEt4UglmgMtzYLYNbeN0F3ja09DUEU8DI0cpI5j9HCycw6p7UvV
         2wr3ZhujV6k7hg/oRGM9MjBonDY1Z/b1gYQfP6k+y1uz1hLcPKIkFETJt0e/S6F0Pbzu
         K9Te2j2yT57TPWqcOGLKkKffKmKzD/JQ3YV33Cya6puuMFzVRfj91wTLrmvE3WedmV9u
         zdlg==
X-Gm-Message-State: APjAAAUwwfudqGB7QYXL9M/oeasEnnkviNnPE8U+T0BRBrcG//yNAObP
	kim0I8jW32VWYnB1/GzJN/5m6JjT
X-Google-Smtp-Source: APXvYqzY0cKrelp7XKzeZBothOPlIiC3KqbjNO4GiYJ7bXNTAJotqGB/mCu53VR8/s9f/sv3NbOUHw==
X-Received: by 2002:a7b:c313:: with SMTP id k19mr16895891wmj.2.1562603025370;
        Mon, 08 Jul 2019 09:23:45 -0700 (PDT)
Message-ID: <32fef869c240906d269ba83b0187479cd9637925.camel@debian.org>
From: Luca Boccassi <bluca@debian.org>
To: oss-security@lists.openwall.com
Date: Mon, 08 Jul 2019 17:23:43 +0100
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-+iBKOsNjrocsf0yS634m"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Subject: [oss-security] CVE-2019-13132: zeromq/libzmq: denial of service via stack overflow
 with arbitrary data

--=-+iBKOsNjrocsf0yS634m
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

A security vulnerability has been reported in libzmq/zeromq.

CVE-2019-13132: a remote, unauthenticated client connecting to a
libzmq application, running with a socket listening with CURVE
encryption/authentication enabled, may cause a stack overflow and
overwrite the stack with arbitrary data, due to a buffer overflow in
the library. Users running public servers with the above configuration
are highly encouraged to upgrade as soon as possible, as there are no
known mitigations. All versions from 4.0.0 and upwards are affected.

Thank you Fang-Pen Lin for finding the issue and reporting it!

The following upstream releases fixes the issue and will be shortly
available:

https://github.com/zeromq/libzmq/releases/tag/v4.3.2
https://github.com/zeromq/zeromq4-x/releases/tag/v4.0.9
https://github.com/zeromq/zeromq4-1/releases/tag/v4.1.7

Individual backported patches can be found on the upstream bug tracker,
and have been sent separately to the security teams of various
distributions:

https://github.com/zeromq/libzmq/issues/3558

The programs to reproduce the issue will be shared on the 15th of July.

--=20
Kind regards,
Luca Boccassi

--=-+iBKOsNjrocsf0yS634m
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE6g0RLAGYhL9yp9G8SylmgFB4UWIFAl0jbg8ACgkQSylmgFB4
UWK+Wgf9Fxghy81VZlpNCGK+Wb2ey2ExvZh3h4DxXsyxDWl5mFAL5gry593gROWQ
QWS24x97ElkY2ICPUK93s9H3uaMgBxyGoyjni/F9ZVPmZVLhxxDKrBqy2aLLLqlZ
KE6srJnqyGlsm8VCyi5pj8ZXmPwqF+WNnRVmlWxllsIDTLAY77irDGhOF8c+J828
x0YpC54mbqxnf24rei5o2ef6eLe2bcnY46I5f804uMnmDZr2L8NfmWNFoGu96GwG
x25wixOPQvNjhWUMmR+UYzRsjWrqcmkzR0+2Yyi+Kg+Ba0NARwvpI6zYfBQsbVx5
T3cnw6/mIqPHiKXJPg2kUo7P6D35fQ==
=y/ma
-----END PGP SIGNATURE-----

--=-+iBKOsNjrocsf0yS634m--
