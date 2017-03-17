X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1190" "Friday" "17" "March" "2017" "11:54:35" "+0100" "Pali =?utf-8?B?Um9ow6Fy?=" "pali.rohar@gmail.com" "<201703171154.35368@pali>" "38" "[oss-security] CVE-2017-3305 - The Riddle vulnerability in MySQL client (public disclosure)" nil nil nil "3" "2017031710:54:35" "[oss-security] CVE-2017-3305 - The Riddle vulnerability in MySQL client (public disclosure)" (number mark "U       pali.rohar@g Mar 17   38/1190  " thread-indent "\"[oss-security] CVE-2017-3305 - The Riddle vulnerability in MySQL client (public disclosure)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22522 invoked by uid 550); 17 Mar 2017 14:36:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32482 invoked from network); 17 Mar 2017 10:54:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:user-agent:mime-version
         :content-transfer-encoding:message-id;
        bh=Pzq9UpMhcivOOkSaf80xEjnijmo1dnu324gX94hN3EU=;
        b=SXmDGIDgFRJFgkQOm6vfzVn+1i/wTfWBfcqAf+mxk9lcdvtJO8ZatZ5Z0+tiBfWJfi
         Q0LpDCGzoQD77nrmDVxF2Cv8VcvjpbI42onDlLWt5jAWR3/eZrO2A641qvSmHFv2tx6R
         8jU4xjeoQobm8IIeEB7l+LzLKIoDCrMoTJy3qIQVqARne4blnV95UKGrvDji0iY2cRfz
         0qEZabbXDeRVCEQzcsNkPUuc1pzrHa52A/TT36YFKDT47ih2qKog2/RRQ1sbtxwK7fOn
         U1OrIrewN2zmz1ye1j/uE9ax6g/Ndt/Jxd/ykD9LTybsOheXEYLQL6lq98yOVdXAhqAG
         pYYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:user-agent:mime-version
         :content-transfer-encoding:message-id;
        bh=Pzq9UpMhcivOOkSaf80xEjnijmo1dnu324gX94hN3EU=;
        b=nhujhahg6ev0euP5vi6cz0SKXyx8/m13qgNbg6s31/Hacoruu/iWpswfxW7kT2Iyag
         ju6SM8522IHDn3XfGaHF2Jxm34B0ZlVFF2v254wCLRLNJtbP8PCJsMMGm5P/WCGca9Jl
         tRVYVmuqx9JDm3dGSyxGo19dtb1YB5OGllAHGdrcyzIJTLepLq3kvIiNTuOIFAu9IXtR
         6d8plLqRxcO7HK6Jb7xgBJziSCDDQX3SO8LxmsWS6syAxDxFpSRxcAacl6LWp+UW+8FC
         OsvkFEaB0aB5aF+PoUZV6ob3fcrFMgJHpdjMy+6MmGHkvwmEsQ+NSV3+1oVnN58YA4wY
         dbVA==
X-Gm-Message-State: AFeK/H30ROganTRG9v+pjBejsn0OSq7Wx16cG0zkwhEC7AZyI4sosSNf8I344Yl8BYfF0g==
X-Received: by 10.223.130.101 with SMTP id 92mr12841575wrb.192.1489748076898;
        Fri, 17 Mar 2017 03:54:36 -0700 (PDT)
From: Pali =?utf-8?q?Roh=C3=A1r?= <pali.rohar@gmail.com>
To: oss-security@lists.openwall.com
Date: Fri, 17 Mar 2017 11:54:35 +0100
User-Agent: KMail/1.13.7 (Linux/3.13.0-113-generic; KDE/4.14.2; x86_64; ; )
MIME-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart2394312.CGc4gkh23A";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Message-Id: <201703171154.35368@pali>
Subject: [oss-security] CVE-2017-3305 - The Riddle vulnerability in MySQL client (public disclosure)

--nextPart2394312.CGc4gkh23A
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi!

There is a new vulnerability in MySQL client versions 5.5 and 5.6 which=20
is related to SSL/TLS encryption and to older BACKRONYM vulnerability.

As it is common, new vulnerability should have a name, logo and website.=20
So enjoy the *Riddle* at http://riddle.link/

Affected are only Oracle's MySQL clients in all versions 5.5 and 5.6=20
when SSL/TLS encryption is used. Verification of encryption parameters=20
and existence of SSL/TLS layer by MySQL client is done *after* client=20
successfully finish authentication.

For more details including mitigation, look at Technical section on=20
vulnerability website: http://riddle.link/

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--nextPart2394312.CGc4gkh23A
Content-Type: application/pgp-signature; name=signature.asc 
Content-Description: This is a digitally signed message part.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAljLwGsACgkQi/DJPQPkQ1ISYgCghhZdoC0fLTcxmmiRfuxoL/5z
E00An07AX+cYRW0uGqVDyB7Qx9rGUDCr
=ABCT
-----END PGP SIGNATURE-----

--nextPart2394312.CGc4gkh23A--
