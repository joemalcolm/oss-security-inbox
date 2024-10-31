Received: (qmail 28501 invoked by uid 550); 31 Oct 2024 04:34:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18036 invoked from network); 31 Oct 2024 04:28:03 -0000
Message-ID: <c0f13ad0-6b77-4071-b59e-db67aae48120@gentoo.org>
Date: Thu, 31 Oct 2024 00:27:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sec Guy <0xsee4@gmail.com>, oss-security@lists.openwall.com
References: <CANOyCOFT24kym0XnyUnVMeKn=GG07s8y7wpVSLWfHMeW0nriww@mail.gmail.com>
Content-Language: en-US
From: Eli Schwartz <eschwartz@gentoo.org>
Autocrypt: addr=eschwartz@gentoo.org; keydata=
 xjMEZmeRNBYJKwYBBAHaRw8BAQdAYNZ7pUDWhx1i2f3p6L2ZLu4FcY18UoeGC04Gq/khqwfN
 I0VsaSBTY2h3YXJ0eiA8ZXNjaHdhcnR6QGdlbnRvby5vcmc+wpYEExYKAD4WIQTvUdMIsc4j
 CIi+DYTqQj6ToWND8QUCZoRL+gIbAwUJBKKGAAULCQgHAwUVCgkICwUWAgMBAAIeBQIXgAAK
 CRDqQj6ToWND8aB5AP9r4kB691nNtNwKkdRiOdl7/k6WYzokvHvDamXxRJ0I+gEAjZqR5V8y
 mfR3fy2Z+r2Joeqdt3CIv5IwPs64spBvigLOOARmZ5E0EgorBgEEAZdVAQUBAQdATT46Z06b
 1X9xjXFCYFxmq/Tj3tSEKZInDWTpoHQp4l8DAQgHwn4EGBYKACYWIQTvUdMIsc4jCIi+DYTq
 Qj6ToWND8QUCZmeRNAIbDAUJBKKGAAAKCRDqQj6ToWND8a2RAP40KPfbfoiZAJW5boFmFJ3G
 TUBDJRh9CWHyaPqq2PN+0wD/R07oLzfnJUN209mzi9TuTuHjeZybysyqXSw4MAxkMAY=
In-Reply-To: <CANOyCOFT24kym0XnyUnVMeKn=GG07s8y7wpVSLWfHMeW0nriww@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------aXcgrH0iqcqR5ftDXqjIzUCY"
Subject: [oss-security] Re: qBittorrent RCE, Browser Hijacking vulnerabilities

--------------aXcgrH0iqcqR5ftDXqjIzUCY
Content-Type: multipart/mixed; boundary="------------ExywLXw3UcJBodSF2LRXOYD0";
 protected-headers="v1"
From: Eli Schwartz <eschwartz@gentoo.org>
To: Sec Guy <0xsee4@gmail.com>, oss-security@lists.openwall.com
Message-ID: <c0f13ad0-6b77-4071-b59e-db67aae48120@gentoo.org>
Subject: Re: qBittorrent RCE, Browser Hijacking vulnerabilities
References: <CANOyCOFT24kym0XnyUnVMeKn=GG07s8y7wpVSLWfHMeW0nriww@mail.gmail.com>
In-Reply-To: <CANOyCOFT24kym0XnyUnVMeKn=GG07s8y7wpVSLWfHMeW0nriww@mail.gmail.com>

--------------ExywLXw3UcJBodSF2LRXOYD0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 10/30/24 7:43 PM, Sec Guy wrote:
> The secondary impact for all platforms is the update RSS feed can be
> poisoned with malicious update URLs which the user will open in their
> browser if they accept the prompt to update. This is browser hijacking and
> arbitrary exe delivery to a user who would likely trust whatever URL this
> software sent them to.


I researched this for our tracking ticket: https://bugs.gentoo.org/942569

The update RSS feed is activated here:

https://github.com/qbittorrent/qBittorrent/blob/84d895231cb5b67661042deae22=
d14b5f386342b/src/gui/mainwindow.cpp#L308C1-L316

Dialog:
https://github.com/qbittorrent/qBittorrent/blob/84d895231cb5b67661042deae22=
d14b5f386342b/src/gui/mainwindow.cpp#L1628-L1682

CheckProgramUpdate:
https://github.com/qbittorrent/qBittorrent/blob/84d895231cb5b67661042deae22=
d14b5f386342b/src/gui/mainwindow.cpp#L1857-L1875


Settings loader:
https://github.com/qbittorrent/qBittorrent/blob/84d895231cb5b67661042deae22=
d14b5f386342b/src/gui/mainwindow.cpp#L1413-L1430


Prefs window:
https://github.com/qbittorrent/qBittorrent/blob/84d895231cb5b67661042deae22=
d14b5f386342b/src/base/preferences.cpp#L1372-L1385

All this code is conditionally compiled under the condition:

#if defined(Q_OS_WIN) || defined(Q_OS_MACOS)


So, this secondary impact is, like the first impact, only an impact on
certain platforms -- two this time, instead of just one.


--=20
Eli Schwartz

--------------ExywLXw3UcJBodSF2LRXOYD0--

--------------aXcgrH0iqcqR5ftDXqjIzUCY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQTnFNnmK0TPZHnXm3qEp9ErcA0vVwUCZyMHRwUDAAAAAAAKCRCEp9ErcA0vV4SR
AQDePfw8wdGg3z23GfL6IWRuoe2XYDvGmmI45aAsodakAAEAjtplPR90rxsisGn5I6UUTkGyLY+d
Le2u9Uxi9Oy1UQg=
=y40m
-----END PGP SIGNATURE-----

--------------aXcgrH0iqcqR5ftDXqjIzUCY--
