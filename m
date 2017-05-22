X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2561" "Monday" "22" "May" "2017" "20:41:19" "+0200" "Thomas Deutschmann" "whissi@gentoo.org" "<bd1dd6da-8b2a-4776-ea92-cc5a4b369515@gentoo.org>" "70" "Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder" "^Date:" nil nil "5" "2017052218:41:19" "[oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder" (number mark "        whissi@gento May 22   70/2561  " thread-indent "\"Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder\"\n") "<alpine.GSO.2.20.1705201313250.6623@freddy.simplesystems.org>" ("<20170520072632.z5nbivrdwmqm3soe@eldamar.local>" "<20170520152406.2339.3B884775@matica.foolinux.mooo.com>" "<20170520175436.GA30962@jasmine>" "<alpine.GSO.2.20.1705201313250.6623@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32682 invoked by uid 550); 22 May 2017 18:48:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26395 invoked from network); 22 May 2017 18:41:44 -0000
References: <20170520072632.z5nbivrdwmqm3soe@eldamar.local>
 <20170520152406.2339.3B884775@matica.foolinux.mooo.com>
 <20170520175436.GA30962@jasmine>
 <alpine.GSO.2.20.1705201313250.6623@freddy.simplesystems.org>
Message-ID: <bd1dd6da-8b2a-4776-ea92-cc5a4b369515@gentoo.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:21.0) Gecko/20100101
 Thunderbird/52.0.0
MIME-Version: 1.0
In-Reply-To: <alpine.GSO.2.20.1705201313250.6623@freddy.simplesystems.org>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="avX1uQFWQ86C3QdoM2kg6MJFtkHoPPBdW"
Date: Mon, 22 May 2017 20:41:19 +0200
From: Thomas Deutschmann <whissi@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of
 uninitialized memory in RLE decoder
To: oss-security@lists.openwall.com

--avX1uQFWQ86C3QdoM2kg6MJFtkHoPPBdW
Content-Type: multipart/mixed; boundary="CRWnKVBSqc6gagvejiuAxKerPGBRpwsX4";
 protected-headers="v1"
From: Thomas Deutschmann <whissi@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <bd1dd6da-8b2a-4776-ea92-cc5a4b369515@gentoo.org>
Subject: Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of
 uninitialized memory in RLE decoder
References: <20170520072632.z5nbivrdwmqm3soe@eldamar.local>
 <20170520152406.2339.3B884775@matica.foolinux.mooo.com>
 <20170520175436.GA30962@jasmine>
 <alpine.GSO.2.20.1705201313250.6623@freddy.simplesystems.org>
In-Reply-To: <alpine.GSO.2.20.1705201313250.6623@freddy.simplesystems.org>

--CRWnKVBSqc6gagvejiuAxKerPGBRpwsX4
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

let me take the opportunity to jump into this.

Bob, do you have any PoC you can share with ImageMagick project
regarding CVE-2017-6335?

Your fix was
https://sourceforge.net/p/graphicsmagick/code/ci/6156b4c2992d855ece6079653b=
3b93c3229fc4b8/

I asked ImageMagick project about that issue but they don't know without
a PoC, see https://github.com/ImageMagick/ImageMagick/issues/391

Thanks!


--=20
Regards,
Thomas Deutschmann / Gentoo Security Team
C4DD 695F A713 8F24 2AA1  5638 5849 7EE5 1D5D 74A5


--CRWnKVBSqc6gagvejiuAxKerPGBRpwsX4--

--avX1uQFWQ86C3QdoM2kg6MJFtkHoPPBdW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0

iQJ8BAEBCgBmBQJZIzDVXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQzM0M1ODQ4MkM0MDIyOTJEMkUzQzVDMDY5
NzA5RjkwQzNDOTZGRkM4AAoJEJcJ+Qw8lv/ImToP/00J4U34pcYuNXP/x73ZOdP8
NkAE/i0FprSP0gz9inr7IeZnzlvgo7YQTNnlvKCQUog95Pg4UKxpXnImml33ps4j
i58KMnzX/IDactPV+NexD7R8t24rxIuQ2zzfcO5kP3CYPSCDZhRLDj/z6aSs6dwQ
PqqGXIK6p93H1QUX5J1Mgb+/I2oUMBTv5FxoxkvX2CNMp3iPCNThMuIl5oVRKBOM
sgEmYJxHHgw7LMMEQ+BBPMITAWZ86ZGZkAAzSwe/4igSPW+6sflMnpCwMLwpIbkx
mtPXO9S45wDcvOkyDNRjnaECPWpxSMoOmlA9hEDXWIC97taJhgTQuPyMQtW/p68r
cD5nA+b4x3SDgofjaombHKOI10KyCSwiytyiLBDhlI6g5+N2m5+3nRIYHUH07PXq
G0I/QxHJAdRlEhqpgY1Jamut+KJDCQi2hY1SHTSquZJckM+zaYGZlet9fucWPFBK
7/hW0y6NEl1fRPntjoTuviWAIAkYVu1PKvdyftgCC+3JEMp8N0JlHOQcD670HeL1
wLGFhM2OC3tNisZujtiBYP1xuEUkUL+DWW70/8UCdC9fl6hAIH03Vp9u7uLLE6YO
wX2CpO8J9ToeLEp604wfLnsD+yVNXGkv7u1qaC+SRde0dpTYCBAzuXOeNRqGCJ8+
BDdWogW+GGo9UQEIq7S/
=48nF
-----END PGP SIGNATURE-----

--avX1uQFWQ86C3QdoM2kg6MJFtkHoPPBdW--
