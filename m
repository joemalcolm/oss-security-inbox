X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3455" "Sunday" "30" "January" "2022" "12:27:38" "-0500" "nick black" "dankamongmen@gmail.com" nil "81" "[oss-security] xterm buffer overflow via crafted sixel" nil nil nil "1" nil nil (number mark "U       dankamongmen Jan 30   81/3455  " thread-indent "\"[oss-security] xterm buffer overflow via crafted sixel\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] xterm buffer overflow via crafted sixel" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19853 invoked by uid 550); 30 Jan 2022 17:30:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18128 invoked from network); 30 Jan 2022 17:27:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=6Pbg6PHdVq1nQ42xtfQBZsU+AMnUS1vIb3616xEGOU8=;
        b=ah1X1gp5XYBJKpImCdu9x+uObz2nA6dvRHyvXNZ+KabgyL3DLqZqXlnFFe+lRF6CX7
         M76HCp8OcOGlDgSKuyhHyrKrreZjB2yniZkqiza6KNveqWX2OOaLQNMQ9G6/TdLx5CBW
         HaerMjBUKlUnEqwOaIuxSfs3XafsKc9uxsPaSX08/MaH/9Am/OJttpF+m+JL2LF+ERVw
         sQwUe+vDgekp8ZQ74ndy5MUtKonoN+XzzHbVl6hVTJo7qRmkJRdKjYofg3sqplWketsa
         fc59o0Pn+8INh0LAxwGIpzIIkbynjnjvyYPPggOTN0MbxT4dO90ZRWi4hHHR+ptJXml4
         VAoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=6Pbg6PHdVq1nQ42xtfQBZsU+AMnUS1vIb3616xEGOU8=;
        b=JJGf8blRktb7BWeWRdougyvOOWFTldq7JUVTzuEK5yrlaprEswjBT5Pn21ps+SbAgz
         RPR2dSSFxzJw0/hRrMZluNmZx1Ud1b9c2ZYOy9CLxxAprRhUsnZGPOMJ7WVN0b4gY5V+
         3EY2NilRgtxkxqtJXtXrul0IkPyti3oXd64dTZkDRRyP1uuDKPCIt3wvecpZRRUzON6Z
         GLfULA+1tMltxaOwmt2/wriO6I66CjFAdDYeymlSpOa+lS7n1qGqzJ86LV9pBP6ivi1j
         ktHHJdkSza0ldEfhwof3b41sT9mXcXGMLtzZppn4n0WK9foeQBIL6uBqVStaeJcIwv4m
         OHTQ==
X-Gm-Message-State: AOAM531wzTJv87+geJ6eM+RIywoDPhVExJnI5OQnZJBjsuiAglYpbzJK
	LdK17T6mhtq/6oe38aPMo99zgP4XmW8=
X-Google-Smtp-Source: ABdhPJxZe8S+5oJx5uuuMIO0e7izZqgTDvU5Pcog9Y+4xwmm891oLshj4I98s/0vdmP17x+NsASeXQ==
X-Received: by 2002:a05:6214:2b0c:: with SMTP id jx12mr14832450qvb.17.1643563659917;
        Sun, 30 Jan 2022 09:27:39 -0800 (PST)
Date: Sun, 30 Jan 2022 12:27:38 -0500
From: nick black <dankamongmen@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <YfbKimj0O33X9f7v@schwarzgerat.orthanc>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZZUSONMtXhcsR6Tw"
Content-Disposition: inline
Subject: [oss-security] xterm buffer overflow via crafted sixel

--ZZUSONMtXhcsR6Tw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

howdy! in the hopes of further distributing my computing into
your terminal emulators, i this morning learned that i can
control writes to memory from XTerm's context via the method of
crafted sixel. en garde, i'll let you try my wu-tang style.

this was discovered while working on Notcurses bug #2573:

 https://github.com/dankamongmen/notcurses/issues/2573

an error of mine own led to emission of a corrupted sixel [0], and
spectacular gyrations from XTerm:

=3D=3D1426124=3D=3D Invalid write of size 2
=3D=3D1426124=3D=3D    at 0x193FF1: set_sixel (graphics_sixel.c:181)
=3D=3D1426124=3D=3D    by 0x1949E1: parse_sixel (graphics_sixel.c:534)
=3D=3D1426124=3D=3D    by 0x17203D: do_dcs (misc.c:4973)
=3D=3D1426124=3D=3D    by 0x149E03: doparsing.constprop.0 (charproc.c:4224)
=3D=3D1426124=3D=3D    by 0x14B383: VTparse (charproc.c:5183)
=3D=3D1426124=3D=3D    by 0x14B670: VTRun (charproc.c:8163)
=3D=3D1426124=3D=3D    by 0x12DC49: main (main.c:2911)
=3D=3D1426124=3D=3D  Address 0xffffffff0941efb8 is not stack'd, malloc'd or=
 (recently) free'd
=3D=3D1426124=3D=3D
=3D=3D1426124=3D=3D
=3D=3D1426124=3D=3D Process terminating with default action of signal 11 (S=
IGSEGV): dumping core
=3D=3D1426124=3D=3D  Access not within mapped region at address 0xFFFFFFFF0=
941EFB8
=3D=3D1426124=3D=3D    at 0x193FF1: set_sixel (graphics_sixel.c:181)
=3D=3D1426124=3D=3D    by 0x1949E1: parse_sixel (graphics_sixel.c:534)
=3D=3D1426124=3D=3D    by 0x17203D: do_dcs (misc.c:4973)
=3D=3D1426124=3D=3D    by 0x149E03: doparsing.constprop.0 (charproc.c:4224)
=3D=3D1426124=3D=3D    by 0x14B383: VTparse (charproc.c:5183)
=3D=3D1426124=3D=3D    by 0x14B670: VTRun (charproc.c:8163)
=3D=3D1426124=3D=3D    by 0x12DC49: main (main.c:2911)

I reported this to Mr. Thomas Dickey, the Archfather, and
offered to put a patch together this evening. I also told him I
probably wouldn't bother with a CVE, regarding which I clearly
changed my mind pretty much immediately. Sorry, my good man =3D\.

This requires that XTerm was built with Sixel support, and that
the XTerm configuration interprets Sixels.
=20
--nick

[0] "a man of genius makes no mistakes -- his errors are
  volitional, and the portals to discovery." (james joyce).
  nah, just kidding, i totally screwed it up.

--=20
nick black -=3D- https://www.nick-black.com
to make an apple pie from scratch,
you need first invent a universe.

--ZZUSONMtXhcsR6Tw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEmi//dHmU4oe+xCLxX0NADCHL+swFAmH2yooACgkQX0NADCHL
+szmuQ//fF/p5dgWkg2q6cFBExPmuN+uxltjo3+SAqRJqI3uthUxmCjUtWX46prK
H+OVVuRVhXAUSTDzhKfz152A2Z5oF17uDpdA3EoZB5Xmr1QnWF808o37UL2+wNHv
KEjH/a5miusucFFJN//cwrdn+9WWsPZ4tsZ/quYhYjjaV+Oet2lYjU+2RXsOw5np
aMcwq0yDEmHCgYHQr1KelbaoMyp6Fn0TNUkofIoykklY7Kvv0tFv+3nxQXEUYswu
7e/4zuyJCKW5PQOlaIw/Pwz7UGoJuJWWF4TFwLu0lg7hQmhhHpCG68KY9VZZaX14
Ic9rVRyJas1M/FhUb+UhkYRjERsbiy6YeUUhqKTQPj/QGDRSFUMHv2bJaSQSwf9v
2xe2RbgDozxx8n3YPcFWEHCv6oSCl8aET5u5a1rlYzSruyqNM2xJ4YnCmzYDTzfy
eLpkGkgILATpbfCq2JtCipJCeSXUJY9Yxc7uNPkAtvDZ3SFmzQx6aus5bVILj0PH
8/inx60e8wceOyOLmd5UgqniCbw2AhGjdTAlxI+U5QW1bAxGHb2Rk9gwnxfAhwka
Xlr8Pa2UfsWkfzaW9XIcp9D+Hx9SUM8qrXAOZF0eLll++MrUbEN2w2VaVPDBaTzy
yCyTpngigl4SOOlaIXEQNlD9/32BnR28k0Lb8O6p1y/KT+dMa3c=
=fTHV
-----END PGP SIGNATURE-----

--ZZUSONMtXhcsR6Tw--
