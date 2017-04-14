X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1408" "Friday" "14" "April" "2017" "12:37:50" "+0200" "Pali =?utf-8?B?Um9ow6Fy?=" "pali.rohar@gmail.com" "<201704141237.50508@pali>" "43" "[oss-security] Re: CVE-2017-3305 - The Riddle vulnerability in MySQL client (public disclosure)" "^Date:" nil nil "4" "2017041410:37:50" "[oss-security] Re: CVE-2017-3305 - The Riddle vulnerability in MySQL client (public disclosure)" (number mark "        pali.rohar@g Apr 14   43/1408  " thread-indent "\"[oss-security] Re: CVE-2017-3305 - The Riddle vulnerability in MySQL client (public disclosure)\"\n") "<201703171154.35368@pali>" ("<201703171154.35368@pali>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10053 invoked by uid 550); 14 Apr 2017 11:05:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24194 invoked from network); 14 Apr 2017 10:38:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:user-agent:references:in-reply-to:mime-version
         :content-transfer-encoding:message-id;
        bh=tE6inOGQeOSJ4kIuRCVoKCHRAtT3SVyOsmGwqPt5Ud8=;
        b=EXchoTq+E0fKgrLwv4blzR4LhdLcOLqnNVY0YeqZ8c+zL5PwjaQACeJmMzEv+BqrHp
         wmiYIlO3nKht092502AhxhKI5oNWl6zMZBeexmHyDeEwcNc7JZg2pIqFWHwbWRYMdLqm
         zoWxN57iCs7PoqBy29t+q0V4NsKcVEHfuDQjtkkF+mYpeIOsSCeO08Cqizyx7QXyAuxX
         1Kw1NxbTHnuAuLGo98ZnXZ0SSrgEQd7qyNyQfJYgIx4iH9H36EwDsU1eC5hvuY7T1Hww
         aUQYfdOTrsJ0PBc0Vi+g6PJ0nAqY45Uu2KIC4FwvTN3nNhDw6pxoB6OjBD/lktIrOuUf
         KpNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:user-agent:references
         :in-reply-to:mime-version:content-transfer-encoding:message-id;
        bh=tE6inOGQeOSJ4kIuRCVoKCHRAtT3SVyOsmGwqPt5Ud8=;
        b=UiF2lHMP1agJ4oyZmfiA2ZGn0E5WrLp4+QKieAThivXpoJXWOEdY8bp/ipFjlW/K05
         4jWpoY5CipUJ785moBv6ZrTaP5JI2iCqxoFisMGpymQdpttAG+hvlCwkxHykl1GK6VoQ
         A4MfzvFw3hbya89su0fNhYzugU0jHEEV9zn7ngnWZuvMmHjw7pMr53N7EkuFUTcyoWgk
         I19CMf3wzCEP8u6DmsOz3GBM4w/rRkxenlYVSc/P2u1oL0g4RNDWXUJ1fus75Yn17u7B
         I4GUG8Z/+FgiPxXJkLDvmhBJddSCnZj9DgOWGZaQiwR+In2PWrBrCN7/+EmCc6On/ImY
         +MgA==
X-Gm-Message-State: AN3rC/4/+NmV5bCEde7EkZjvNviYF/HXuHfqaUi0JkC9Ahw9E6g7C+rc
	VuuUsZ781a6+SStG
X-Received: by 10.223.130.212 with SMTP id 78mr6658449wrc.106.1492166272013;
        Fri, 14 Apr 2017 03:37:52 -0700 (PDT)
User-Agent: KMail/1.13.7 (Linux/3.13.0-116-generic; KDE/4.14.2; x86_64; ; )
References: <201703171154.35368@pali>
In-Reply-To: <201703171154.35368@pali>
MIME-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart1647193.5Em89zKT4m";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Message-Id: <201704141237.50508@pali>
Date: Fri, 14 Apr 2017 12:37:50 +0200
From: Pali =?utf-8?q?Roh=C3=A1r?= <pali.rohar@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2017-3305 - The Riddle vulnerability in MySQL client (public disclosure)
To: oss-security@lists.openwall.com

--nextPart1647193.5Em89zKT4m
Content-Type: Text/Plain;
  charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Friday 17 March 2017 11:54:35 Pali Roh=C3=A1r wrote:
> Hi!
>=20
> There is a new vulnerability in MySQL client versions 5.5 and 5.6
> which is related to SSL/TLS encryption and to older BACKRONYM
> vulnerability.
>=20
> As it is common, new vulnerability should have a name, logo and
> website. So enjoy the *Riddle* at http://riddle.link/
>=20
> Affected are only Oracle's MySQL clients in all versions 5.5 and 5.6
> when SSL/TLS encryption is used. Verification of encryption
> parameters and existence of SSL/TLS layer by MySQL client is done
> *after* client successfully finish authentication.
>=20
> For more details including mitigation, look at Technical section on
> vulnerability website: http://riddle.link/

Just to note that also last version 6.0.2 of MySQL Connector/C 6.0=20
series (which is still supported) is affected by this vulnerability.

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--nextPart1647193.5Em89zKT4m
Content-Type: application/pgp-signature; name=signature.asc 
Content-Description: This is a digitally signed message part.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAljwpn4ACgkQi/DJPQPkQ1KiPwCgxbe3gxUgnhe3n/SRHatZCFTQ
D3gAn2SHz2mwUk7P5hB9/32I3KtvayUm
=CdaD
-----END PGP SIGNATURE-----

--nextPart1647193.5Em89zKT4m--
