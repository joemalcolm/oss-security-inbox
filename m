Received: (qmail 27859 invoked by uid 550); 13 Aug 2025 10:00:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28585 invoked from network); 13 Aug 2025 09:09:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1755076157; x=1755680957; i=drahflow@gmx.de;
	bh=DrDLueCH7ytKP2nwfb7wUtE+ERESz9JlQgyYAowLOOU=;
	h=X-UI-Sender-Class:Date:From:To:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=A+o2QV7aRJU6mDW49Zs+VKvFdu1iFY1rIot79ipvqWoDQZjbLvZnDSIl9IyYOXJ7
	 QkWTpWBQhfYxeEAbJcjrP2O/GpJgFV/LbyMCP7DfmNugEqQmNiry8wSrMI7xm/qmR
	 KuTt/9/mK8E8wFguB4vTNsoIL3xBmPGfQG0HB25WcRFzp7Jb9yxwsK3zrrImHqjbN
	 DXVoBdyz9cfsWSr8qSwsg45LrGF3Va40lZgXjw6tuaF2042jctz1ODsanYq2MS9xR
	 hXUX2dQl2n1gu4Na7MxoMOeKBVrDaH+9LXtBHejacx+kRiRZGcQRb+xlgNdzme2lk
	 EfUZwn0XTj0/OzT8cQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Date: Wed, 13 Aug 2025 11:09:16 +0200
From: Jens-Wolfhard Schicke-Uffmann <drahflow@gmx.de>
To: oss-security@lists.openwall.com
Message-ID: <aJxWPAv5ew3BCm+O@adhil>
References: <CAMqWyhi=xW2sq2+Hb2aJ=ta-zfi_Zay6CztQ9mvDqgjbKr1HpQ@mail.gmail.com>
 <a7169751-2b66-4123-b2b5-09e35623ff80@gmail.com>
 <CAMqWyhhFgATrYJtxFP-hGLR3FN2XhnvZLHVyNtxpWdAp6fFJNQ@mail.gmail.com>
 <5d16e4d9-a25d-4b5e-946b-4c5243a54bcb@gmail.com>
 <CAMqWyhgUK+4dW=jxztFYopDxv5apLYsGcWN=1sbfHmmUfePduw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UtBvyRZw2m1vMsXR"
Content-Disposition: inline
In-Reply-To: <CAMqWyhgUK+4dW=jxztFYopDxv5apLYsGcWN=1sbfHmmUfePduw@mail.gmail.com>
X-Provags-ID: V03:K1:qwGcunoXL6BtTL57oVZuQbwfEzkEXIBNdmXtj9GuA6Opv71XGsU
 ZyP+o7R8x5AlAi0UnUZ2rGCXqKwnA35ToqAMHAt/bS3gK845GFbW8A48DErP/sejWoBx92U
 EGEKbkNjeYclFxwIrawpIBZ0BDgtx81QEk4dMsCmwE1z7TCVySGiewtNp1oMLYr1NueqoHQ
 bB4GDxN3TFIjHYPMJYZ2w==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:JPYoUoH1GGM=;iJq59zrtjjpEN/tV8ft3/6h/5j8
 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
 rilzwlXjhXTLkBPdQ2Y5qA4amd0vcIM8=
Subject: Re: [oss-security] CVE-2025-55188: 7-Zip: Arbitrary file write on
  extraction, may lead to code execution

--UtBvyRZw2m1vMsXR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 10, 2025 at 05:04:24PM -0700, lunbun wrote:
> If a symlink targets a nonexistent directory, the write will fail. 7-Zip =
by
> default will print an error message, like:
> ```
> ERROR: Cannot open output file : errno=3D2 : No such file or directory : =
./
> malicious_link/file.txt
> ```
>=20
> This applies similarly to other filesystem errors, like insufficient
> permissions or unwritable directory.
>=20
> However, 7-Zip by default continues with extraction regardless of the err=
or,
> which is why an attacker can use this "shotgun" strategy. These errors, t=
hough,
> would hopefully help notify the user that something suspicious is happeni=
ng.
Never forget terminal escape codes. At least the 7-Zip my debian
has dumps the raw filename in those error messages. This allows an attacker
to clean the specific error lines after they have been output (with
another, later filename containing the required escapes).

With some fantasy, it might also be possible to massage the overwrite
prompts (they're also unescaped) into suggesting to choose "(A)lways",
e.g. by good cursor movement and setting a scroll region far above for
the real prompt.


Regards,
  Drahflow

--UtBvyRZw2m1vMsXR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE9xmNnk2s3COORGKwX52/ya0irXUFAmicVjoACgkQX52/ya0i
rXVVpg/9E0uyryHljRLiVbmClJWQ/LJ5qm8NZ+OAl66rfZ84bg5zybIlFuY4Ik7b
pJ/NyzDOUacVEfxIgpmUEe6sUoN43df9fDHwaRJoSkU9szarZznRxNNQ2v373VdW
YC+Nu6rmONUwTtdLNttu8A7ZYlitRwdsl7jBcEbMW9w8xnTyoQ/ccorsav6s9C8x
GWKi6txy8xm9ua+cVbuW7a9dOCL2tR6EY8IqOPkr16AlfxoyLpYPaGaSD0k5wPi7
VoBr/Mu2gwlDaxmUspPXGUCG4m3k3f/pTTIZcTIZE3zxPhsV24wpCs+v/eeQiaph
KOq4FZzSRrzBDptSMwsClKQ6fPUN/iAkHKosYh/Fl2BR+f2JxzkLWOvJOeycPNGf
NH2ywS7f3qtkMNOhP0z3aX7WiQHDK+dcea1Dw3e5ykD4SdCrGsZoAmQcGMG3M5ch
LqsIeMO9PyMblUCBeI3HYeh6dzKklcWG+LhYDiIb+jLBNqbgu29j4hvrxhlt0Djz
Lj5U111QSb5JZoguyfkU39rCFSfqSblEYbU5Hr8MSBJ6mnm+Gu6bKLVaep0lo8J1
l+7HrxMAKhHPVeA9Emt/G4HG31TxyrSio6q2fL0r2S2DtBY4yN5VaoNURda+jVOv
Dm2Yin8RvW2KJHN3B+FKDMelxnAJLhzWCnxkll2sKk7vYErLqWc=
=WEGU
-----END PGP SIGNATURE-----

--UtBvyRZw2m1vMsXR--
