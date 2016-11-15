X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2663" "Tuesday" "15" "November" "2016" "20:11:11" "+0000" "Hector Marco" "hecmargi@upv.es" "<07b5ffe5-247c-63a3-6f3f-884a79ede301@upv.es>" "80" "[oss-security] Re: [FD] [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" nil nil nil "11" "2016111520:11:11" "[oss-security] Re: [FD] [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" (number mark "U       hecmargi@upv Nov 15   80/2663  " thread-indent "\"[oss-security] Re: [FD] [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell\"\n") "<20161115032707.GA5104@jasmine>" ("<88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>" "<20161115032707.GA5104@jasmine>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26587 invoked by uid 550); 15 Nov 2016 20:39:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7673 invoked from network); 15 Nov 2016 20:11:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=upv.es; s=default;
	t=1479240682; bh=U5ubxR/rbOGnWFgLehZV1YAgOZQnY6Cmcw1+uBe13l8=;
	h=Subject:To:References:From:Cc:Date:In-Reply-To;
	b=juUv2h7MqFooQaU5T2G/6QN78Ug0Xlzl9FdgogCa25opojI32Ybye2C+so6lbcdBq
	 TssM4tr0mq2CmWu+uuB1g+puLHf8t2R2utnJ7uADE3ad1QQNsa+u1ACxfWWwEDfd8a
	 AnM2KdjQ+PY/RcxvYudg5/NY9NtNqJAq47buTUzsTl6dNmfQQBHUT5aAIE3ZQq/mHM
	 S/nVeWKOmBVqgRMFAkb0LqWmxDBHq1wYbRpWCnXup9G19+wwk+Fl9eGKvJBz6yo57M
	 KCfC2+wsw88hNjN4sKYnooMxLohZPgVOxIuSFU327FfK35V1NHM9uRzD89cj4dEMfL
	 +xFrobutjT6hQ==
To: oss-security@lists.openwall.com
References: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
 <20161115032707.GA5104@jasmine>
From: Hector Marco <hecmargi@upv.es>
Cc: Ismael Ripoll <iripoll@disca.upv.es>
Message-ID: <07b5ffe5-247c-63a3-6f3f-884a79ede301@upv.es>
Date: Tue, 15 Nov 2016 20:11:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20161115032707.GA5104@jasmine>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="3EWgJTKBtkJP9MurvohS078BPnKkNbcWP"
Subject: [oss-security] Re: [FD] [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell

--3EWgJTKBtkJP9MurvohS078BPnKkNbcWP
Content-Type: multipart/mixed; boundary="c1DgoSD9fDV3liBeElo01wbGwBmVfb3eB"
From: Hector Marco <hecmargi@upv.es>
To: oss-security@lists.openwall.com
Cc: Ismael Ripoll <iripoll@disca.upv.es>
Message-ID: <07b5ffe5-247c-63a3-6f3f-884a79ede301@upv.es>
Subject: Re: [FD] [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell
References: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
 <20161115032707.GA5104@jasmine>
In-Reply-To: <20161115032707.GA5104@jasmine>

--c1DgoSD9fDV3liBeElo01wbGwBmVfb3eB
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hello,

It would be more precise to say "2:1.7.3-2" rather than "2:1".
This number refers to the Debian package. It seems that Debian is using
different version numbers for the "cryptsetup" package:

https://security-tracker.debian.org/tracker/CVE-2016-4484

We are not sure whether the last part of the version number (2:1.7.3-2)
of the Debian package (1.7.3-2) is used to match with the cryptsetup
version.

Just to avoid confusion, the bug is on the scripts (initramfs) and not
in the cryptsetup encryption/decryption algorithms.

Regards,
Hector Marco & Ismael Ripoll.


> On Mon, Nov 14, 2016 at 08:45:51PM +0000, Hector Marco wrote:
>> Hello All,
>>
>> Affected package
>> ----------------
>> Cryptsetup <=3D 2:1
>=20
> Hi,
>=20
> Can you clarify which versions are affected?
>=20
> The latest upstream version is 1.7.3:
>=20
> https://gitlab.com/cryptsetup/cryptsetup/commits/master
>=20
> What is the 2:1 version?
>=20



--c1DgoSD9fDV3liBeElo01wbGwBmVfb3eB--

--3EWgJTKBtkJP9MurvohS078BPnKkNbcWP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJYK2vnAAoJEPjdiC0+ZMlGEwsQALTc+GoxYIBn3e16U6SpYP1e
Fms1pwmWhM9BbZNoxvGGdkHyW0f280+Grh+V1MAvHC+kyK+h6yD0d8M5i+rBopV5
HmqnJhwcU2++T0WuRW+FtO2oNJieUbDpPXCUhwkiqeptO9Ek3G6YMohS21/g+FBv
d/JLnh53ytUqyRe1QJIu+/6BY4FFFIcidjFnEuAC/BmvwHTVp6uhg4nYjOWogrMk
i39rvja69yXrsLi2rsw0IZ+NsEIpCCRel20+vUwNFcphP43JHx4O6it4YKNtBCQK
dTqVuZojiYMyNxCvPfcnsUx6ixx1gze9shaAO24ML3Gm+F3uStDWV6QePMmfmi2a
KRODY+lShsnp+8dHTWC0ArGy2rrvAKoODNaTz78el8MgLuDDfT1voemItbSP5qE3
seIeUJwJo3wC3iPB3nWrD17O08sLEX1eHJSiNUA3wixTOM8o5Md7tRE+hk8Emn3H
hlMKIXvoQhThAiJetlaM9cdTUefGyjm/QLHb7ejqBFBxa4g9iy2S2C5KbkLmYSSL
3v8bhjw5csOEOQEHCcc+eBgvJo2kyvipSAjn1R8awXsvY9nZs+TbBh+9jVljXArF
eZCNd2w/CQR9dFS4m9rXfFW7MhVG5uy3YbTA92TBb4KY/NoTA27EvjvaKSCuDvaW
8UfVWhVAKljqakMLz61H
=VDCe
-----END PGP SIGNATURE-----

--3EWgJTKBtkJP9MurvohS078BPnKkNbcWP--
