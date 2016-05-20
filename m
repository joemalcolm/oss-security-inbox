X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4477" "Saturday" "21" "May" "2016" "08:31:23" "+0930" "Simon Lees" "sflees@suse.de" "<573F9743.90309@suse.de>" "113" "Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Date:" nil nil "5" "2016052023:01:23" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        sflees@suse. May 21  113/4477  " thread-indent "\"Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") "<alpine.GSO.2.20.1605200827380.7756@freddy.simplesystems.org>" ("<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" "<20160503181505.GA8195@openwall.com>" "<57292879.7050303@gmail.com>" "<alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>" "<CANO=Ty26E=diToYAoedQB4JKTbnjykSy94ciE-XBNdyJBU0jNw@mail.gmail.com>" "<20160519190037.GA6411@perpetual.pseudorandom.co.uk>" "<3b0ab9e5-d160-c5fe-a554-a5ac61eede34@cpanel.net>" "<alpine.GSO.2.20.1605200827380.7756@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9611 invoked by uid 550); 20 May 2016 23:01:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9593 invoked from network); 20 May 2016 23:01:54 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>
 <20160503181505.GA8195@openwall.com> <57292879.7050303@gmail.com>
 <alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>
 <CANO=Ty26E=diToYAoedQB4JKTbnjykSy94ciE-XBNdyJBU0jNw@mail.gmail.com>
 <20160519190037.GA6411@perpetual.pseudorandom.co.uk>
 <3b0ab9e5-d160-c5fe-a554-a5ac61eede34@cpanel.net>
 <alpine.GSO.2.20.1605200827380.7756@freddy.simplesystems.org>
Message-ID: <573F9743.90309@suse.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <alpine.GSO.2.20.1605200827380.7756@freddy.simplesystems.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="794m6Nof1lFkkQOLoeKhbo9QFlPEnqold"
Date: Sat, 21 May 2016 08:31:23 +0930
From: Simon Lees <sflees@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: oss-security@lists.openwall.com

--794m6Nof1lFkkQOLoeKhbo9QFlPEnqold
Content-Type: multipart/mixed; boundary="rEO4eXiHQh0Cldlu78wqBQtadqGBkfeKI"
From: Simon Lees <sflees@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <573F9743.90309@suse.de>
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>
 <20160503181505.GA8195@openwall.com> <57292879.7050303@gmail.com>
 <alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>
 <CANO=Ty26E=diToYAoedQB4JKTbnjykSy94ciE-XBNdyJBU0jNw@mail.gmail.com>
 <20160519190037.GA6411@perpetual.pseudorandom.co.uk>
 <3b0ab9e5-d160-c5fe-a554-a5ac61eede34@cpanel.net>
 <alpine.GSO.2.20.1605200827380.7756@freddy.simplesystems.org>
In-Reply-To: <alpine.GSO.2.20.1605200827380.7756@freddy.simplesystems.org>

--rEO4eXiHQh0Cldlu78wqBQtadqGBkfeKI
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 05/20/2016 11:22 PM, Bob Friesenhahn wrote:
> On Thu, 19 May 2016, John Lightsey wrote:
>>
>> This is the list I'm working off of. For RedHat and Debian, I only
>> checked the ImageMagick updates.
>>
>> CVE-2016-3718 - SSRF via HTTP and FTP coders
>> ImageMagick: Not fixed
>> GraphicsMagick: Not fixed
>> RedHat: Fixed
>> Debian: Fixed
>=20
> The above topic is worthy of discussion.  What is a security issue in
> some contexts is normal and necessary in others.
>=20
>> No CVE assigned - Heap overflow in PICT parser
>> ImageMagick: Fixed
>> GraphicsMagick: ??
>> RedHat: Not fixed
>> Debian: Not fixed
>> Reference: http://www.openwall.com/lists/oss-security/2016/05/11/3
>=20
> The GraphicsMagick development code is not vulnerable to this one.
> GraphicsMagick may have been vulnerable in the past.
>=20
>> No CVE assigned - Out of bounds read in the PSD parser
>> ImageMagick: Fixed
>> GraphicsMagick: ??
>> RedHat: Not fixed
>> Debian: Not fixed
>> Reference: http://www.openwall.com/lists/oss-security/2016/05/11/3
>=20
> The GraphicsMagick development code is not vulnerable to this one.
> GraphicsMagick may have been vulnerable in the past.
>=20
>> Are there other formats that are unsafe and should be removed using the
>> policy configuration files?
>=20
> In interest of full-disclosure, the GraphicsMagick project has fixed
> approximately 45 CVE-worthy issues since the last release, not including
> issues covered by CVE-2016-2317 and CVE-2016-2318 (which are fixed in
> the development code).  Many of the test files are published in full
> open view on bug trackers or other places.
>=20
> In a similar time-frame, the ImageMagick project has been provided a
> great many files (likely more than 100) which crash the software and
> many of these files are published in full open view on bug trackers or
> other places.  Commits and other records show that problems are being
> fixed.
>=20
> When fixed versions are released, OS distributions which continue to
> provide 3-year old releases are exposing users to releases with perhaps
> hundreds of fixed vulnerabilities which can be triggered using
> publically available files.
>=20
> Bob

Some distro's have customers that pay them to have the 3 year old
version with only fixes to bugs as they wish to reduce the chance of
breakage. I must thank you the email you published with the list of
issues and there corresponding patches made it much much easier to
address the issues in GraphicsMagick then it was for ImageMagick.

--=20

Simon Lees (Simotek)                            http://simotek.net

Emergency Update Team                           keybase.io/simotek
SUSE Linux                            Adeliade Australia, UTC+9:30
GPG Fingerprint: 5B87 DB9D 88DC F606 E489 CEC5 0922 C246 02F0 014B


--rEO4eXiHQh0Cldlu78wqBQtadqGBkfeKI--

--794m6Nof1lFkkQOLoeKhbo9QFlPEnqold
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXP5dQAAoJEBHULpq+GPyRmxcH/1lUJ/x4+564qJEMqnLY8LKu
tz4dScjnABG5+Jpxd//1JbvaUfUJmjRJ4NC8u/tt0EnqENHCsFRpKXs6zSzlOvSo
ov191AuOS6mgQMGECPrXi0Nqq9fsSCfulfMqEGOTAl5Gy63ELZjGA8iP+g6tpeW3
9CxzmzsP+C93+AOunyLKvgbYDKlVmqON/ppt34XhODG7mS5/6eP8JrSLQA06oW1K
xTJAISPwNPU6xBYMSYGv93ihtRwGrlKSJ3HfPUC6JMvu60MFPHIul5vkOHdH4t95
8+LSzbefqR12WnkiD8Ne0VW1zONLH2Vj8gBSBC/bRANB7LOHXwoARSylfKRmBq0=
=PEJy
-----END PGP SIGNATURE-----

--794m6Nof1lFkkQOLoeKhbo9QFlPEnqold--
