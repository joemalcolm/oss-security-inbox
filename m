X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2297" "Thursday" "27" "October" "2016" "08:24:24" "-0500" "Brandon Perry" "bperry.volatile@gmail.com" "<F5095245-3270-42FC-9FCC-91C2D121E6DC@gmail.com>" "64" "Re: [oss-security] Re: Handful of libass issues" nil nil nil "10" "2016102713:24:24" "[oss-security] Re: Handful of libass issues" (number mark "U       bperry.volat Oct 27   64/2297  " thread-indent "\"Re: [oss-security] Re: Handful of libass issues\"\n") "<20161027083901.GA10554@lorien.valinor.li>" ("<BE57ECE4-C327-4C99-993B-D8C96A8E6465@gmail.com>" "<20161005022322.18575ABC00D@smtpvmsrv1.mitre.org>" "<20161027083901.GA10554@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11688 invoked by uid 550); 27 Oct 2016 13:24:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11625 invoked from network); 27 Oct 2016 13:24:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
         :to;
        bh=fv5hDFoqdzAv/7oeMbFmVv8h8G0AYGoVEJK5IKX1M8k=;
        b=s9CyBVor6o2SPumzc44n55DXNjQqKW6iRYULPiVPx9b48AE5e0F4wDDJWhdKv6LteK
         N/K/FdCbNivCyZaJJbeOu3QaGa7cdOnAUUQgEqBBMH+T4dW0qGajqtScUxhrpzgJdG7Z
         1jSqYRwWj3ET+m672X7G9GsmIavW5g3VkrMnlUS3pQioQDmqp2csQxQfvejcHnhN29JZ
         T4MaM9KxTlbAWachUfEbbMcq8lqSHFmnQGiZ0qMuASIfGtytVKxLwmStv9wUxhHwuufH
         gIvdVzBOdxqbwaZBBWT1MxwJ0bHRARvUyXm/tFRY0w6YYof23vQrLOQRcbGUXe6Pzodo
         dO6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
         :message-id:references:to;
        bh=fv5hDFoqdzAv/7oeMbFmVv8h8G0AYGoVEJK5IKX1M8k=;
        b=f4wCyqTQPEghkOxf28+HKlIPRnn1GYr292mO1rNfud3cDNinrbmZrd6nX/sEcKyFIk
         CN6SdrAH5YZap75bn60ErlRWu2ttYUTN0EZvxwRwTeESPkfcJ2E9CyBMXJy4MgF9Z8jE
         K4BZWFvnx9XUXZLG9IhGha7hNofT1icxiO4KQa7KNIKBYaJw+EhqyXcJvb4Lda8J9hJD
         SbPIys2GD7Z7oDRQ/0yrKrn7b23RSDxUVE3EgVWReK9lh9AJsLbEMHkya+GDRKq4oGvd
         WWhoRgFL1x13n2R7soHehNt/phtxRlXL23ze6557jRyTe7RQCEZIQ0aWUeQomErKZo1A
         8O7A==
X-Gm-Message-State: ABUngvfEQOgfj33/K93iIr0FYCyrIVw3A/JU3BwJ5n9PUlr9zlTIvc7roL9uCNLLFDf1lg==
X-Received: by 10.202.105.194 with SMTP id e185mr7523699oic.95.1477574664900;
        Thu, 27 Oct 2016 06:24:24 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Content-Type: multipart/signed; boundary="Apple-Mail=_4D2E6B75-F2B7-4FA4-AC71-F63D63D48702"; protocol="application/pgp-signature"; micalg=pgp-sha512
X-Pgp-Agent: GPGMail
From: Brandon Perry <bperry.volatile@gmail.com>
In-Reply-To: <20161027083901.GA10554@lorien.valinor.li>
Date: Thu, 27 Oct 2016 08:24:24 -0500
Cc: oss-security@lists.openwall.com,
 cve-assign@mitre.org
Message-Id: <F5095245-3270-42FC-9FCC-91C2D121E6DC@gmail.com>
References: <BE57ECE4-C327-4C99-993B-D8C96A8E6465@gmail.com> <20161005022322.18575ABC00D@smtpvmsrv1.mitre.org> <20161027083901.GA10554@lorien.valinor.li>
To: Salvatore Bonaccorso <carnil@debian.org>
X-Mailer: Apple Mail (2.3124)
Subject: Re: [oss-security] Re: Handful of libass issues

--Apple-Mail=_4D2E6B75-F2B7-4FA4-AC71-F63D63D48702
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 27, 2016, at 3:39 AM, Salvatore Bonaccorso <carnil@debian.org> wro=
te:
>=20
> Hi,
>=20
> On Tue, Oct 04, 2016 at 10:23:22PM -0400, cve-assign@mitre.org wrote:
>>> The third is a huge memory allocation leading to a crash that wasn't
>>> fixed because a good solution is unavailable at the moment.
>>=20
>> Use CVE-2016-7971.
>=20
> It looks from the discussion in
> https://github.com/libass/libass/pull/240 that this issue is disputed
> to be actually in libass.
>=20

For context, while the input caused a crash with AFL (not fuzzing with ASAN=
) and it crashes with ASAN, I was unable to reproduce the crash with libass=
 externally. I was only able to take up a hug amount of memory and take a l=
ong time to finish parsing the input.

I asked if they dev wanted to reject the CVE but got no strong response eit=
her way, so I decided to not pursue it.

> Should the CVE assignment be revisited, possibly rejected, according
> the upstream discussion?
>=20
> Regards,
> Salvatore


--Apple-Mail=_4D2E6B75-F2B7-4FA4-AC71-F63D63D48702
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJYEgAIAAoJEKJq8VjVbt2piFEQAKMaKcQxtIOHranNCoGP9iSB
N/i0Ita62kM9kRePcyUL0+Xw5jN934N6YiFyR6xrJIpRrkx46AQYYt+/u13+Y+d2
F+/WCRR+7SfWn6bIZADB0T676fzuFPNG1eYuVs1sXdzIRkCXt5YM02c6qInfHgvT
okyeAxXKqErt/hipPkqjb+0eZsZvScjTf24Yeg3tjMc9gozruqAX+A0sY9jzjcdG
0N6GOgc9e7DK3O/z8gWHGiF++Q3ipyN0HgLDCzH6Hn5xC87U+SPc+yYwlidL8sTC
rJM1Wn4pgDsG4y1zCEtWkrnE433VH3W5bwhe+OXQzW+1E3YjSQpx8ucV96s0Kdko
F+/gMLd2HChpFzex58TdV7bDtQ4in9Yo9f8ViE1ybbxiFSgYLGGBBS/R3a4YwXh0
UpeNZ72/0g7r1C8OHB0x3E/HT5ZsX4+fzzIpc0qbWxtnM4SMs88IHsCbosyPztQC
PkbdlnOsR0rZOg15Xbro79WgokuQjSlj3jCBovC0LjjQcd2eh3QS2yjOG2KE+P18
n+Jh49KcB95iJFWWkxTCMpNgStfXx+f4dlOV9upnIZYehwunBAhtzGpLbjebb5CV
/hDy75/GSKt0Pt7SBWUxArRr13b5F1rogM3lt61l2iQSEqWabNz/YkCXCXYSQXIK
5p7luRFqiav43M/pKa5x
=FN96
-----END PGP SIGNATURE-----

--Apple-Mail=_4D2E6B75-F2B7-4FA4-AC71-F63D63D48702--
