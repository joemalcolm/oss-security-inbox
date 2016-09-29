X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2450" "Thursday" "29" "September" "2016" "17:04:03" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160929170403.7226d30f@hboeck.de>" "80" "Re: [oss-security] [SECURITY ADVISORY] c-ares: single byte out of buffer write" nil nil nil "9" "2016092915:04:03" "[oss-security] [SECURITY ADVISORY] c-ares: single byte out of buffer write" (number mark "U       hanno@hboeck Sep 29   80/2450  " thread-indent "\"Re: [oss-security] [SECURITY ADVISORY] c-ares: single byte out of buffer write\"\n") "<alpine.DEB.2.20.1609291125510.13997@tvnag.unkk.fr>" ("<alpine.DEB.2.20.1609291125510.13997@tvnag.unkk.fr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6101 invoked by uid 550); 29 Sep 2016 15:04:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6082 invoked from network); 29 Sep 2016 15:04:16 -0000
Date: Thu, 29 Sep 2016 17:04:03 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20160929170403.7226d30f@hboeck.de>
In-Reply-To: <alpine.DEB.2.20.1609291125510.13997@tvnag.unkk.fr>
References: <alpine.DEB.2.20.1609291125510.13997@tvnag.unkk.fr>
X-Mailer: Claws Mail 3.14.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-31580-1475161445-0001-2"
Subject: Re: [oss-security] [SECURITY ADVISORY] c-ares: single byte out of
 buffer write

--=_zucker.schokokeks.org-31580-1475161445-0001-2
Content-Type: multipart/mixed; boundary="MP_/9a3FwzEo=u6hJBu0oJ1l7as"

--MP_/9a3FwzEo=u6hJBu0oJ1l7as
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi,

Just quick:
This is a very typical bug class that libfuzzer can find very well.
libfuzzer is like afl, but for functions instead of executables.

I have attached a sample code for libfuzzer which shows how this works.
(In case anyone cares: Consider it being public domain / CC0 / whatever
licensing terms you like)

Takes only a few seconds without any starting corpus to find this bug.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--MP_/9a3FwzEo=u6hJBu0oJ1l7as
Content-Type: text/x-c++src
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment; filename=libfuzzer-ares_create_query.cpp

#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <arpa/nameser.h>
#include <iostream>

#include <ares.h>

extern "C" int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
	unsigned char* buf;
	int buflen;
	char* inp =3D (char*)malloc(size+1);
	inp[size]=3D0;
	memcpy(inp, data, size);

	ares_create_query((const char*)inp, ns_c_in, ns_t_a, 0x1234, 0, &buf, &buf=
len, 0);

	free(buf);
	free(inp);
	return 0;
}

--MP_/9a3FwzEo=u6hJBu0oJ1l7as--

--=_zucker.schokokeks.org-31580-1475161445-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJX7S1jAAoJEKWIAHK7tR5Cc4kQAL6Gs4lBPWsfi72HKg+xCVF8
nRUwB24PjjFDik5tha5oNlh6taBKDZTSqXs1UDDudlvewyqPJrEpioBZlAJaXLYL
H51S2E9mIrs0KrESzu/SyPaXCoa2bacJc79zVycZTTzm5yTpbC8FQnZBmdUdlNYx
CI1u3Z9LUmp/CA5TP7PhXfp9WuOWE/BbCO8XdsQXonC8lOW5uKSaEiHRlgG+mHhw
fGPeVBs+pyVZNisCcdFR1lOz5seOlMVBebo8Wj3V0i/9DXOBLRUKdyjCvR7mHvy4
gcPhDdkVjMeKLOqH4j1XNNxexAGEVmRstfBtqjX6B51bRSloW/PdzU3a0VD56aIu
sJI6HwBngG52Le7opkjJA457Tguemje/92UcKXusUHVrS3mRGDCJZvO/n4Frbuj6
DEz8A4fxQiLD/KON3uOEJFAnpzqItcEna+1eSGEto3zSvuFkjqRtRBr1i7qyPYMB
tv3nZurD3F5Z9IKT1/xPx+p9apoZUQQ+oXVo4jFbDM/8PgIxrDMef4rZHow/NE+2
WtDRLCPu+kQdpWPqSv9u7FIE3+tQGIVRGLNVB4AK61j97BCr5TKT44L0Nf/xhb7W
QppbIOavGaJO48JkvnbjQSI/ovDWAgkJLNTNE79zj6urPCsSp7d4JtIFx6ZVZq/n
/RgM8W8hLDN6Ll/rOYG8
=N8nq
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-31580-1475161445-0001-2--
