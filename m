X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1569" "Monday" "17" "October" "2016" "10:58:07" "+0200" "Johannes Segitz" "jsegitz@suse.com" "<20161017085807.GH18601@suse.com>" "41" "Re: [oss-security] potrace: invalid memory access in findnext (decompose.c)" nil nil nil "10" "2016101708:58:07" "[oss-security] potrace: invalid memory access in findnext (decompose.c)" (number mark "U       jsegitz@suse Oct 17   41/1569  " thread-indent "\"Re: [oss-security] potrace: invalid memory access in findnext (decompose.c)\"\n") "<4079765.cAzWC0Rqb2@arcadia>" ("<4079765.cAzWC0Rqb2@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32501 invoked by uid 550); 17 Oct 2016 09:22:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13350 invoked from network); 17 Oct 2016 08:58:20 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 17 Oct 2016 10:58:07 +0200
From: Johannes Segitz <jsegitz@suse.com>
To: oss-security@lists.openwall.com
Message-ID: <20161017085807.GH18601@suse.com>
References: <4079765.cAzWC0Rqb2@arcadia>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d5ZB48mKYG2jsBgL"
Content-Disposition: inline
In-Reply-To: <4079765.cAzWC0Rqb2@arcadia>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] potrace: invalid memory access in findnext
 (decompose.c)

--d5ZB48mKYG2jsBgL
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 08, 2016 at 10:29:54PM +0200, Agostino Sarubbo wrote:
> A crafted image revealed, through a fuzz testing, the presence of a inval=
id=20
> memory access.

Thanks for the report. Can you please post the reproducer?

Johannes
--=20
GPG Key E7C81FA0       EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG N=FCrnberg)

--d5ZB48mKYG2jsBgL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJYBJKfAAoJELwn3Z0sxP1mtTMP/2gJR96a3lFGkfGMo6smp+eN
6Ulzyf4oexuLrqF1M0xf9i5i7ggta9Ff/1B6cnS4XSsRnYWlAwBtTlrvQueXqwGw
Q4QEN8v623Bd1Ym9ciRIC5ZryDdhhoiqHiCWYIPYILwIo6TOw8et+j4g/Fhzr3Jh
WYyNcyjRcd4rDeylnC8TjyzYcJzjcRjV5z56sMYdXBR4JgK/uJMR4XtNtzjf9qDJ
Sij+Wo7pLR+NpYwdJpoo0PxIBjW8bboXw5GV3vhVyCACiOtmxCqd3JKYtpQCFY+9
Y8x3sqStGA5bu1emF8KGjU019MQMU40bfRh6GfAOjPwHIH2yzudUF3VCMfoA5qkC
cWYlMsDzOobxoBxp01wFVofydCdpxu/nx81Nyf9yqcHcamko4wcGIFPmsK8SO+7/
Gd5GZXLO/+03PbpGAot1kYKVf+QJ0j64qiSz+5IHy7oZbu+hNwX80/kGCAz611fG
08pl5Po6D37wiSyaIpykvaJyGG+HQ2Fp/amfcQzjN3ZfxOJEZ7+sgbNI2TXY0CPD
Cv3axs3bTQvIWuF13krO77kisfW60FVC+so0D30HucXgeUfLVLet+AeI32cuHdL4
iyroCTiQKieRqIJ9BI+xv1/Y1lrRK9xp9YjA3Rp7lsYKYD/shIE7pYmqGEuDJVt3
6RGBbb456EJwiMUzcV2v
=ZXmV
-----END PGP SIGNATURE-----

--d5ZB48mKYG2jsBgL--
