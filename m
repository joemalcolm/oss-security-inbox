X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2422" "Thursday" "21" "April" "2016" "19:42:20" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160421174220.GA19359@eldamar.local>" "73" "Re: [oss-security] CVE request: PHP issues fixed in 7.0.5, 5.6.20 and 5.5.34 releases" nil nil nil "4" "2016042117:42:20" "[oss-security] CVE request: PHP issues fixed in 7.0.5, 5.6.20 and 5.5.34 releases" (number mark "U       carnil@debia Apr 21   73/2422  " thread-indent "\"Re: [oss-security] CVE request: PHP issues fixed in 7.0.5, 5.6.20 and 5.5.34 releases\"\n") "<570BFDF5.4080908@vorlons.info>" ("<570BFDF5.4080908@vorlons.info>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5350 invoked by uid 550); 21 Apr 2016 17:42:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5332 invoked from network); 21 Apr 2016 17:42:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zKhHGpRQ0P6H3fDu/f/OoFFA2sU/5jEY7dUozkkrQUU=;
        b=bLP/dhGTyFEkIaYBcNFNwR/dx0v4CfYg2/u89Sx82/moWs+8/97YBauourE85o5Smj
         ysllXXjxNvRENvUtIhF1kR8rIg5zlmu9Y8WWplIFZo2jOcTu5MrWjkkD3Y/1BuBwaoDT
         VkwJ6aDyrHYORSH8ixu1/35i2OhtffE/C3jT1GS/uZVlbERMCTTPKR4Tq/sLrq+hCw6w
         5bh1eCdz2IU7vP7Zorl8gE3dlFhuC9MQ56yrxuCc9NAbPzkteb+dLf8FGmeqzo60i564
         JUU7mP7kp8VHUj8+bvz8L034F8A2RtILhZhEUTxepRP6jCo8uyLq1XtloZV/cbzIE13j
         Y94Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=zKhHGpRQ0P6H3fDu/f/OoFFA2sU/5jEY7dUozkkrQUU=;
        b=iKty01GQwAf0nB30IAEk2+dGgaGWQ5mH5Jlc7krJHFC3skNCG7ER2S2LY9kfwvTOtX
         USm+R4rEpFiHeAVblam425yjzNcBfHZc3ax172PABy7QV0ThRKBIIsH9uMPcLVDBczGy
         YNyHvfB4ROXGp5QK+gCE2ZgQeomsww4jVuVWOW2lV8841qdprucxrswyhSr+KD1MOX1Z
         SKgW7N8Z5YtctvLYtQVExOFJEVRVwyaGSurkgQtAEwx14DkDyRzvvuwU9CTsXXCDgcdL
         R4beIVU8Ay7L3oDobXwffSLqS3l4k2cMJL8G0fCWL85eiMyUhtl1zlwKYRdA/+E1+1CK
         qNOw==
X-Gm-Message-State: AOPr4FUIFg2MWgZ3BUAYnTDU2o0fUKn8aQbRlnPofgl17ws1vgPgotmiCy2TEtLQUvaUgQ==
X-Received: by 10.28.177.132 with SMTP id a126mr27376055wmf.86.1461260542082;
        Thu, 21 Apr 2016 10:42:22 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 21 Apr 2016 19:42:20 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: security@php.net, Lior Kaplan <kaplan@debian.org>,
	=?utf-8?B?T25kxZllaiBTdXLDvQ==?= <ondrej@debian.org>
Message-ID: <20160421174220.GA19359@eldamar.local>
References: <570BFDF5.4080908@vorlons.info>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mYCpIKhGyMATD0i+"
Content-Disposition: inline
In-Reply-To: <570BFDF5.4080908@vorlons.info>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] CVE request: PHP issues fixed in 7.0.5, 5.6.20
 and 5.5.34 releases

--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Apr 11, 2016 at 09:41:41PM +0200, Matthias Geerdsen wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>=20
> Hi,
>=20
> could you please provide CVE IDs for the following PHP issues fixed in
> the latest releases, as I have not yet seen any IDs yet:
>=20
> - -  Buffer over-write in finfo_open with malformed magic file
> https://bugs.php.net/bug.php?id=3D71527
> http://bugs.gw.com/view.php?id=3D522
>=20
> - - Integer overflow in php_raw_url_encode
> https://bugs.php.net/bug.php?id=3D71798
> https://git.php.net/?p=3Dphp-src.git;a=3Dcommit;h=3D95433e8e339dbb6b5d554=
1473c
> 1661db6ba2c451
>=20
>=20
> - - php_snmp_error() Format String Vulnerability
> https://bugs.php.net/bug.php?id=3D71704
> https://git.php.net/?p=3Dphp-src.git;a=3Dcommit;h=3D6e25966544fb1d2f3d759=
6e060
> ce9c9269bbdcf8
>=20
>=20
> - - Invalid memory write in phar on filename containing \0 inside name
> https://bugs.php.net/bug.php?id=3D71860
> https://gist.github.com/smalyshev/80b5c2909832872f2ba2
>=20
>=20
> - - AddressSanitizer: negative-size-param (-1) in mbfl_strcut
> https://bugs.php.net/bug.php?id=3D71906
> https://gist.github.com/smalyshev/d8355c96a657cc5dba70

Can CVE identiers be assigned for those?

The recent Ubuntu USN 2952-1 as well fixed some other issues without
CVE identifers, cf. http://www.ubuntu.com/usn/usn-2952-1/

Regards,
Salvatore

--mYCpIKhGyMATD0i+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJXGRD8AAoJEAVMuPMTQ89E6iQP/RbKjRgm45HVxKtU7gb6CAny
/tJiab0mGXzGN7p32Bjp/nuGUviH2pAIQSbWvhplEZax9XRJMn2nDugWjj7pvqlK
jcKD9OLCIsomvfcHnmoP835w3BqGTpvpiTUNmw0NPFTZnqjx6tqdoPWUPWTpkut6
Fy8iASYYwKWLSEUyvzJkuI9f9ZxN6lOWs7NctrIK2jxpQ/HO6u8dbPiP74mKl0JB
Ewxw+ymo0fqc04vMku6CqqjDvHAwm9fkpysnKgnZ4ZlpE9xatae0v2GK4Ni2QB3j
GDULOgjTnM27JJMbHjjbFb4R3Y/KeTgQWfWxbYlhs8C0EkD26/JIwwl8dBax48ct
jAkeiEUvaTXbEnsErxTfzu9LsTUy2KWaQ2cEWxBxeFT+CmJYbeMx6wKHPDYdu4z3
HsGh4NxK82lBHn1tHkZ4eYC47+V0LSmyh1QyCSoTqxbHGfSxKEuPflRT04N0zn2F
SwYCeAy5TcEST1r9znfwICB3ovlCs7GVZE92EvIEAIoimBdlaYJcGnKF3eUXdAeC
CCeYPHBBB8kHTowfqz9BhZ4IEUog5e5Roo/8Gst8+7n0y3N9Z0Nd8xGqVZ0kFis/
yBM3xQednC5aawfABgq8GJxJu00SLBjA16VGdD/SRFxgV/QBa43Woc7xMwH7puQx
DtY1ojDXvuwhz10PVEV9
=dxqP
-----END PGP SIGNATURE-----

--mYCpIKhGyMATD0i+--
