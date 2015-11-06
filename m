X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2202" "Friday" "6" "November" "2015" "22:07:27" "+0100" "Luca Bruno" "lucab@debian.org" "<2399324.MOSirZeisc@chimera>" "60" "Re: [oss-security] Re: Review+CVE request: multiple issues in redis EVAL command (lua sandbox)" "^Cc:" nil nil "11" "2015110621:07:27" "[oss-security] Re: Review+CVE request: multiple issues in redis EVAL command (lua sandbox)" (number mark "        lucab@debian Nov  6   60/2202  " thread-indent "\"Re: [oss-security] Re: Review+CVE request: multiple issues in redis EVAL command (lua sandbox)\"\n") "<20151106170730.77AFC36E0A0@smtpvbsrv1.mitre.org>" ("<20151106170730.77AFC36E0A0@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15999 invoked by uid 550); 6 Nov 2015 21:07:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15981 invoked from network); 6 Nov 2015 21:07:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=unstable.it; s=mail;
	t=1446844055; bh=JQL8khkSmbw/c2mLw+gJCKPT1fxaWuw+QDBOgvO3Huk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FpQWUcxxhjCnJNkRunU1HRxZZN5dHf/JBIK2Hfx1MFJe8MwlqMTI1/w6Nj2eYaJSz
	 CyWnmY7Tz6nfEd1uE9EWz1IZDr6OygstZoOhpjPQfF+HxOEQZGSB2nD1kH+uSJ9aNg
	 CYWXe3L80M5odtzuZSNi17HCu9vVRanJy+jLSBmc=
Message-ID: <2399324.MOSirZeisc@chimera>
Organization: Debian
User-Agent: KMail/4.14.1 (Linux/3.16.0-4-amd64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <20151106170730.77AFC36E0A0@smtpvbsrv1.mitre.org>
References: <20151106170730.77AFC36E0A0@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart21925766.AgYlxbt7jN"; micalg="pgp-sha1"; protocol="application/pgp-signature"
Cc: cve-assign@mitre.org
Date: Fri, 06 Nov 2015 22:07:27 +0100
From: Luca Bruno <lucab@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Review+CVE request: multiple issues in redis EVAL command (lua sandbox)
To: oss-security@lists.openwall.com

--nextPart21925766.AgYlxbt7jN
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Friday 06 November 2015 12:07:30 cve-assign@mitre.org wrote:

> > https://github.com/antirez/redis/issues/2854
> > https://github.com/antirez/redis/issues/2853
> > https://github.com/antirez/redis/issues/2855
>=20
> As far as we can tell, 2854 and 2853 do not need to be categorized as
> vulnerability reports, but 2855 is a report of at least one
> vulnerability. See the initial CVE ID assignment below.
> [...]
> Our feeling is that the sandboxing is not (yet) intended to define a
> security boundary with any practical value, and thus ability to defeat
> the sandboxing will not have a CVE ID at present.
> [...]
> Use CVE-2015-8080 for the "getnum ... integer wraparound ... thus
> returning a negative value" vulnerability.

Thanks for the prompt and detailed review!
I understand the line of reasoning and I've no further technical comments o=
n=20
your analysis. All bug reports have been updated with appropriate reference=
s.

Cheers, Luca

--
Luca Bruno (kaeso)
 Security Engineer
 Rocket Internet SE
 -> GPG: 0xBB1A3A854F3BBEBF

--nextPart21925766.AgYlxbt7jN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABAgAGBQJWPRaPAAoJEKmDSiJSB45O+XUQAIHaIN5LIIiJHJFp1WsIE55v
8jxG50cj+l6BZ3pa/ABnqCzw3brf99OXFllL0U4hPyzyFVv2xA0y1dSZjpZH2b+P
43dpn4W+kHKMk5NuYRoiHws+i+wFy/jV/dUs9uJEPeo1duTovcgMqQq9Fv7epZ1C
55QiLLaTPxyP1piYYC5wUIOLqv3McuxYuc0hHpfX46cMcDJRMfaaZRB9yvp3R+Yq
nVRbb98b9Wd8ew4NCCnfhVUw6hoc/Umuw2JHhVUSnUdtkYpMJfoIojFikG4EpxAo
bFIoK0XLmC0xqzCIFY0cKQdpjQxY1o+zytTzYf1+zaY+NsVz0OuZGAPxxqC/S9/V
lzHMT/XceZCFQEiGh+NkoIjlMsNqjIaumaG0Q91u+NnUGYjMFWS2gnnlaczF7qXk
CDXt0G8kEM/+osBIcPSG73OWF+xE3HUROJ3H64WwvywS4hMEXSQ3p/CZsUuIv+1y
/jOKVY5nU7ti3IqWW3EGUj13BdczbNxL8PVmMLD1CvESaYhBKq33ZmPQHAtNVIHi
XeGaod4VeNFlxhN5GsIPGvwayT5aMEqf7y0M8hk8nUJ4rStFRPf0JDDLuodgiKSG
x6dJk3R/PhkPjCh6/mGSZzI28g8DhplQXyNIu9MyCtMhWQmHAYXQIGbQ3HaHzecO
Q7Z5MwSR2UR+RGBE0EtL
=InCE
-----END PGP SIGNATURE-----

--nextPart21925766.AgYlxbt7jN--

