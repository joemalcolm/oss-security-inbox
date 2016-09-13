X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2129" "Tuesday" "13" "September" "2016" "21:53:03" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160913215303.56ec6504@hboeck.de>" "61" "Re: [oss-security] Heapoverflow in giflib5.1.4" "^Cc:" nil nil "9" "2016091319:53:03" "[oss-security] Heapoverflow in giflib5.1.4" (number mark "        hanno@hboeck Sep 13   61/2129  " thread-indent "\"Re: [oss-security] Heapoverflow in giflib5.1.4\"\n") "<20160913192423.GA13420@hunt>" ("<a3d8ebfe-9b67-997e-aaeb-5afe207ac97a@724safe.com>" "<20160913185508.1351b147@hboeck.de>" "<20160913192423.GA13420@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32179 invoked by uid 550); 13 Sep 2016 19:53:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32155 invoked from network); 13 Sep 2016 19:53:16 -0000
Message-ID: <20160913215303.56ec6504@hboeck.de>
In-Reply-To: <20160913192423.GA13420@hunt>
References: <a3d8ebfe-9b67-997e-aaeb-5afe207ac97a@724safe.com>
	<20160913185508.1351b147@hboeck.de>
	<20160913192423.GA13420@hunt>
X-Mailer: Claws Mail 3.14.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-32429-1473796384-0001-2"
Cc: "vul@724safe" <vul@724safe.com>, oss-security@lists.openwall.com
Date: Tue, 13 Sep 2016 21:53:03 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Heapoverflow in giflib5.1.4
To: Seth Arnold <seth.arnold@canonical.com>

--=_zucker.schokokeks.org-32429-1473796384-0001-2
Content-Type: multipart/mixed; boundary="MP_/2D.k=LdNeDlBoXI89BCxEhC"

--MP_/2D.k=LdNeDlBoXI89BCxEhC
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

On Tue, 13 Sep 2016 12:24:23 -0700
Seth Arnold <seth.arnold@canonical.com> wrote:

> Hanno, can you still reproduce this issue? I followed your excellent
> reproducer script and I don't get any ASAN warnings. If you still get
> ASAN warnings this may indicate the source of the confusion.

Ok, interesting:
I can't reproduce it any more with my poc or the poc from bug 102 with
the git code.

I can however easily generate another sample that causes the same bug.
See attachment.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--MP_/2D.k=LdNeDlBoXI89BCxEhC
Content-Type: image/gif
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=gif2rgb-oob-new.gif

R0lGODdhAgACAKEDAAAAABwP8fdnZ////ywAAAAAAgACAAADA1QGBQA7

--MP_/2D.k=LdNeDlBoXI89BCxEhC--

--=_zucker.schokokeks.org-32429-1473796384-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJX2FkfAAoJEKWIAHK7tR5C+z0QAJzhwUJShEGYlO1f7ngQL20r
1DhirxhHGqH/1jBHmtF/CcJHUdUXI3rMo0dzCt5yIRhejepd5Uokio/SnUtSEEM0
m5lWWA85DqmvzCvNN47fPF7fZxwPJoMeWuGMfc/AUEigvT528BrUI8fgc3fT8viz
Q/XVfgrrMuIlH2Ri5LwF1Oi+b8BkW4QKG2PWOEpY/YKnX70VrPMP5yv8KuCiS8eM
Y0uAgVN5bBdpIjAtLQGIHUJptg+nKs7iii3x7mIHJZM+2SRLNUiP4rrJAVX9wgFK
FaG1TVm7qQrVK+sFihdbfdR8VHsQb6K/dSn4H6/hSuB8yOEp8/tHnX0G9PtWoejl
gPUGli+/ACRZ28vxzz48w6M+TTR4UXT8Xt+Yu/MNGBfh0BeqsQ9MoS9rguEJmoeK
x59KXptFvW+VxT86bXkXUhJi5/34FRwRNArQhlDENT/VselBU0DZyiKJESqrUZ+P
qmnMJozOeb1hGO10NNrOO5nI0XgjaWSgl7wQQkR7owkW9ZgCoI+7G4V7K/4c/mxW
LoHxpeZxZAMFSTrif2Vb6uVWghm88HG7iZmrK5crhZBTaHNYxsRD4KisrLP3Klvv
rLMbJfihLeX+18qdAs1oHGXnQV/8PFs+5Qe4If1Z6qk1qAg3xIGq2vlhXMHUN/da
4ESHOn7ulNmxYv64Zupv
=hI3p
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-32429-1473796384-0001-2--
