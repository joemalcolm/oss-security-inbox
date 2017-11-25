X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2194" "Saturday" "25" "November" "2017" "18:50:31" "-0500" "Phil Pennock" "oss-security-phil@spodhuis.org" "<20171125235030.GA24195@breadbox.private.spodhuis.org>" "59" "Re: [oss-security] RCE in Exim reported" nil nil nil "11" "2017112523:50:31" "[oss-security] RCE in Exim reported" (number mark "U       oss-security Nov 25   59/2194  " thread-indent "\"Re: [oss-security] RCE in Exim reported\"\n") "<20171125035912.GA20323@breadbox.private.spodhuis.org>" ("<20171125035912.GA20323@breadbox.private.spodhuis.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15472 invoked by uid 550); 25 Nov 2017 23:57:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9870 invoked from network); 25 Nov 2017 23:50:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d201711; h=In-Reply-To:Content-Type:MIME-Version:References
	:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ggWflIyCiPSA3+o5cdubJXHEf2VXbTU1wpLcyMzkj84=; b=vs3UupZm9UIoTf1i8bzGfAbrbe
	0jVHNzh/kEZSrwI+GNKecjMVp1ns+vMdN00tNC/Uc5hs1Cal4eCjPliNW/bIh3vTZVeNzJwjPBP5V
	YyddEE+LBQIVwtmNDcWyuBGIBHvy8N0C8DdUOcCW1eMBx8JxbImJPSKc8nOEVXh/YKaJseGzxoQxL
	qLPm+dcJUVyeePYEMeE3lD9GALWy;
Date: Sat, 25 Nov 2017 18:50:31 -0500
From: Phil Pennock <oss-security-phil@spodhuis.org>
To: oss-security@lists.openwall.com
Message-ID: <20171125235030.GA24195@breadbox.private.spodhuis.org>
References: <20171125035912.GA20323@breadbox.private.spodhuis.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3MwIy2ne0vdjdPXF"
Content-Disposition: inline
In-Reply-To: <20171125035912.GA20323@breadbox.private.spodhuis.org>
OpenPGP: url=https://www.security.spodhuis.org/PGP/keys/0x4D1E900E14C1CC04.asc
Subject: Re: [oss-security] RCE in Exim reported

--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2017-11-24 at 22:59 -0500, Phil Pennock wrote:
> In Post-Thanksgiving mail-catchup, I see that the Exim Project was
> gifted with a couple of surprises in our public bugtracker on Thursday
> morning.  Complete with proof-of-concept small Python script.
>=20
> I've requested CVEs, don't have them yet.

bugs.exim.org/2199 :
  Use-after-free remote-code-execution
  CVE-2017-16943

bugs.exim.org/2201 :
  stack-exhaustion remote DoS
  CVE-2017-16944

Fix for the former has been confirmed by the reporter and is in git.

The `exim-4_89+fixes` branch used by various OS packagers for major
bug-fixes on top of the 4.89 release has the UAF fix backported.  Work
on the DoS is under way.

  https://git.exim.org/exim.git/shortlog/refs/heads/exim-4_89+fixes

Jeremy has created a `4.next` branch with work for 4.91, which includes
re-working the API for the allocator which allowed the use-after-free to
creep in.

-Phil

--3MwIy2ne0vdjdPXF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iHUEARYIAB0WIQROXBeef/xNv45sEy9REE5mjdBEgQUCWhoBvAAKCRBREE5mjdBE
gW/fAP9aZvM1wFV3aQZ89VDVcUYR2OYmhKpbxYhS7xm6LLxtfgD+NoDEmS5mtHPv
kJdLbqFqlfeHZ0rE9EGP3kcbJOnNawiJAjMEAQEIAB0WIQTGk6A04e1u6VTK4toT
2tmcfkFRnAUCWhoBxgAKCRAT2tmcfkFRnDztEACIXgiS8u/bwI5XaxrQtRo9lk1Q
CukG3MeOicK8hqieImAJ4HoJ95eWp73KE6AMjxHlVb+SGvkJ6QY1x6kjce8VLhCu
NJjynLyKCwgTZmWl9uTFHkk1Dwz5ko9eP86sEYFIoQDENdyIAPN6Pd9ME6sv1nF5
hdSjij3ql9gEuUklFUvzjNUexUyQGpdZ4MGun9zwvpOgRHf+0g72+FPDNAT2mVZv
ywQUD60TdbapVM/+dmY94acuY9zXkwwX0wwmcC/FxDakKh/EyAKlH5rGuS41pd29
87WrOK4fM8mQI5vGKiCqjd0ThT+q8x9FPIsPFl2SuATXY1NKYuxsU9s47OdQF6Tr
YN8umG1fNGphJgAA2uX5kqX3CMAWoqQCUkNam4CAs5guHNI6Nw8nuXKEL9nBoVwa
K0Z7KvUaPJIGGC/G1/DyUyIFkwoDOuWf0qiGyIlg/NyWZHJwux5HprRkV/r7sEHZ
kODdcD0ibHemChETm+EmZrIl9c0HiC3aLAZQmJxSzY/4VwicNV7rmv0YOesl/ziD
WZC77/D8VWybuW2IkQAk1BYOnN6dQS9J09OvPEKaA8WQ0lG0YiwED9PUtdcBOruS
R4or0tJ4CTMVu9V7b+3RO2tslMUAjSgF2f/UWN6WDxnrJf1MCA5BEXzr7nYzCABx
/K7EqY6ElJgeKkcNUA==
=147U
-----END PGP SIGNATURE-----

--3MwIy2ne0vdjdPXF--
