X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2179" "Wednesday" "5" "August" "2015" "13:13:17" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150805111317.GA18023@kronk.local>" "63" "Re: [oss-security] CVE Request: cacti multiple SQL injections" nil nil nil "8" "2015080511:13:17" "[oss-security] CVE Request: cacti multiple SQL injections" (number mark "        alessandro@g Aug  5   63/2179  " thread-indent "\"Re: [oss-security] CVE Request: cacti multiple SQL injections\"\n") "<20150718173121.GA15158@kronk.local>" ("<20150718173121.GA15158@kronk.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18249 invoked by uid 550); 5 Aug 2015 11:13:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18225 invoked from network); 5 Aug 2015 11:13:29 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=date:from:to:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=PRtnHCbRHS/h9gcuJrN93Y3T6WrsE52fEqfO/Qp+UAY=;
        b=IglYs3SRZ7bNOz6iyrKCI7wbsi9Sr+hrbDfRiwG8yWxdSS1fDC0+RXChNpQikSJJcz
         uIFZ4DIFtjokY2juBvVy8YF7sXUD03o+4/z/gb9vEZ1vf0FINT8KY6swo3JWA1DNJevu
         CXrOJjBHu7WxMZEkcAHuQeK4jc4tg4QKj+vEMtX7adw5mOc2Qlp5N09jsVq5HKmZvBl+
         VKproLKDJdM+b8epz1bD/hBuOHGbUP60B2X58afe5LIFm6h1BKN8LQ0X/VVnk4Am8R8q
         DrJZ89lTFEBRABpzJLMlyyCc6/t47zfcWgu0ikbdpevakSm7ygtzOZiKsnO2gzPm6Xfc
         PZWw==
X-Received: by 10.194.108.232 with SMTP id hn8mr18650076wjb.154.1438773198266;
        Wed, 05 Aug 2015 04:13:18 -0700 (PDT)
Message-ID: <20150805111317.GA18023@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com, cve-assign@mitre.org
References: <20150718173121.GA15158@kronk.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+QahgC5+KEYLbs62"
Content-Disposition: inline
In-Reply-To: <20150718173121.GA15158@kronk.local>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Wed, 5 Aug 2015 13:13:17 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: cacti multiple SQL injections
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--+QahgC5+KEYLbs62
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jul 18, 2015 at 07:31:21PM +0200, Alessandro Ghedini wrote:
> Hi,
>=20
> CVE-2015-4634 was assigned for an SQL injection in cacti [0], but accordi=
ng to
> the commit fixing it [1] several other SQL injections were also found:
>=20
> -bug#0002574: SQL Injection Vulnerabilitie in graph items and graph templ=
ate items
> http://bugs.cacti.net/view.php?id=3D0002574
>=20
> -bug#0002579: SQL Injection Vulnerabilitie in data sources
> http://bugs.cacti.net/view.php?id=3D0002579
>=20
> -bug#0002580: SQL Injection in cdef.php
> http://bugs.cacti.net/view.php?id=3D0002580
>=20
> -bug#0002582: SQL Injection in data_templates.php
> http://bugs.cacti.net/view.php?id=3D0002582
>=20
> -bug#0002583: SQL Injection in graph_templates.php
> http://bugs.cacti.net/view.php?id=3D0002583
>=20
> -bug#0002584: SQL Injection in host_templates.php
> http://bugs.cacti.net/view.php?id=3D0002584
>=20
> Could CVEs be assigned for these issues as well?
>=20
> Thanks
>=20
> [0] http://bugs.cacti.net/view.php?id=3D0002577
> [1] http://svn.cacti.net/viewvc?view=3Drev&revision=3D7731

Ping?

--+QahgC5+KEYLbs62
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVwe/KAAoJEK+lG9bN5XPLYncP/1x3stbk/Lf5Rs+LDDsb0fxu
aKi5ygfAIeqdWlFz/918jDRbBpMHd4VjEn74ISHSN/FMnKiUnJtfwsm75dDiKtEb
G/fXh4+9g3E2W4G3ltVruACYbcFjndoFjQSavg4/7+JgGh6YX4Ckzdmb2GQNPfma
HaA5QBE1Slfdg4L+mUdlgT5Wp62cJBzQVeeBdKb+CpD3n+/1KY00VqkwVxMu8q1c
m3u7I2S179IlksrFCTrbETOv6zxFyfkQfb1h2FV5qUdHfy3sAeRjFKShc0Kp1bhZ
qCJS1ic75BNfpATit+BPbrHebBKL6mVFdMYntUQbe07eOFU5CypaWFTyYcl2J6Pi
8W9V9sl7EeIRFettgOKiD9OpH9PWDpZwMFTbIYvrbbp9R1cQo6VXNPCC96Tc1ECJ
7kS7H/RTwTckxRy5+QBHKZJ0vGZZDR4hBwI65igUXCydQwbP3gGkfV1wMrVfFxzY
3ohcO4jezS3fBFyCPcx2gUYYUihkv8NUuMbeXB74lS8QWbyEBl5VtqCmOHy1SLDg
l3CHl1R4hYZftJtnMLP8xS5ASR1A+Y3t2fDR8tUdQHtKEDvWjMkt1fZP0Ipz4vbm
5lytxcx6lnQ91y2iHvuqBNTgyzMOlXVLhiWurI/v3hi5DcUqmF7JujXNTm/AaQnX
WjyCqbcRWu00z338jYZi
=np7k
-----END PGP SIGNATURE-----

--+QahgC5+KEYLbs62--
