X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3910" "Wednesday" "22" "July" "2015" "23:07:05" "+0000" "mancha" "mancha1@zoho.com" "<20150722230705.GB7017@zoho.com>" "116" "Re: [oss-security] CVE Request for OpenSSH vulnerability - authentication limits bypass" nil nil nil "7" "2015072223:07:05" "[oss-security] CVE Request for OpenSSH vulnerability - authentication limits bypass" (number mark "        mancha1@zoho Jul 22  116/3910  " thread-indent "\"Re: [oss-security] CVE Request for OpenSSH vulnerability - authentication limits bypass\"\n") "<CAFB=mGAAaJOB3VsvhGnsBVP0COwe4MiRv5t2cDx9UA=qJ0KyPw@mail.gmail.com>" ("<CAFB=mGAAaJOB3VsvhGnsBVP0COwe4MiRv5t2cDx9UA=qJ0KyPw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16353 invoked by uid 550); 22 Jul 2015 23:07:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16316 invoked from network); 22 Jul 2015 23:07:30 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=Y5MtDFEtlcA0IGcs6CUVKnMQCjfPnuRCvLBkOxc0cBGlH5cfZMCom4FpNJxcys09HgsGc9tJvY61
    T6Vukk4ZkkN6icIsZj6GZbFW6IoGQhj3F1UBWJpHIOOSsqcPh5zo  
Message-ID: <20150722230705.GB7017@zoho.com>
References: <CAFB=mGAAaJOB3VsvhGnsBVP0COwe4MiRv5t2cDx9UA=qJ0KyPw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="T7mxYSe680VjQnyC"
Content-Disposition: inline
In-Reply-To: <CAFB=mGAAaJOB3VsvhGnsBVP0COwe4MiRv5t2cDx9UA=qJ0KyPw@mail.gmail.com>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Date: Wed, 22 Jul 2015 23:07:05 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request for OpenSSH vulnerability -
 authentication limits bypass
To: oss-security@lists.openwall.com

--T7mxYSe680VjQnyC
Content-Type: multipart/mixed; boundary="z4+8/lEcDcG5Ke9S"
Content-Disposition: inline


--z4+8/lEcDcG5Ke9S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Attached patch fixes.

--mancha

On Tue, Jul 21, 2015 at 11:16:35AM +0200, king cope wrote:
> Hello list, solar designer,
>=20
> Can you please add a CVE for the mentioned vulnerability in OpenSSH.
>=20
> The OpenSSH server normally wouldn't allow successive authentications
> that exceed the MaxAuthTries setting in sshd_config, with this
> vulnerability the allowed login retries can be extended limited only
> by the LoginGraceTime setting, that can be more than 10000 tries
> (depends on the network speed), and even more for local attacks.
> Technically this vulnerability affects OpenSSH. It can be found with
> FreeBSD installations because these use the keyboard-interactive
> authentication mechanism (that is the one affected) in combination
> with pam. I haven't tested skey/bsd auth.  To note that this
> vulnerability looks pretty old, a test against FreeBSD 6.2 (2007
> release date) showed it vulnerable.  Additionally there is no delay
> between the authentication retries, but this is another issue that
> makes this vulnerability more effective.
>=20
> CVE please!
>=20
> Thank you,
>=20
> KC
>=20
> Reference: http://seclists.org/fulldisclosure/2015/Jul/92

--z4+8/lEcDcG5Ke9S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="openssl-6.9p1_kbd-interactive.diff"
Content-Transfer-Encoding: quoted-printable

=46rom 5b64f85bb811246c59ebab70aed331f26ba37b18 Mon Sep 17 00:00:00 2001
From: "djm@openbsd.org" <djm@openbsd.org>
Date: Sat, 18 Jul 2015 07:57:14 +0000
Subject: [PATCH] upstream commit

Query each keyboard-interactive device only once per authentication
request regardless of how many times it is listed; ok markus@

Upstream-ID:  d73fafba6e86030436ff673656ec1f33d9ffeda1
Reference-ID: 701a201481b751df5ed85b68de259637

---
 auth2-chall.c | 11 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

--- a/auth2-chall.c
+++ b/auth2-chall.c
@@ -83,6 +83,7 @@ struct KbdintAuthctxt
 	void *ctxt;
 	KbdintDevice *device;
 	u_int nreq;
+	u_int devices_done;
 };
=20
 #ifdef USE_PAM
@@ -169,11 +170,15 @@ kbdint_next_device(Authctxt *authctxt, KbdintAuthctxt=
 *kbdintctxt)
 		if (len =3D=3D 0)
 			break;
 		for (i =3D 0; devices[i]; i++) {
-			if (!auth2_method_allowed(authctxt,
+			if ((kbdintctxt->devices_done & (1 << i)) !=3D 0 ||
+			    !auth2_method_allowed(authctxt,
 			    "keyboard-interactive", devices[i]->name))
 				continue;
-			if (strncmp(kbdintctxt->devices, devices[i]->name, len) =3D=3D 0)
+			if (strncmp(kbdintctxt->devices, devices[i]->name,
+			    len) =3D=3D 0) {
 				kbdintctxt->device =3D devices[i];
+				kbdintctxt->devices_done |=3D 1 << i;
+			}
 		}
 		t =3D kbdintctxt->devices;
 		kbdintctxt->devices =3D t[len] ? xstrdup(t+len+1) : NULL;

--z4+8/lEcDcG5Ke9S--

--T7mxYSe680VjQnyC
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVsCIZAAoJEB4VYy8JqhaDKJwQAIPFq1VpxeQw0Vv4rr2kcSo3
YE39c5dSyusnTVeKPRJQ8doG/4lajzMfc6Gnil4N6oV7LfghhjInOaKMfcTq+Yok
2UXd918BDRwfASJ3lCPJyy83htRj5tZ+vhDns8jIQOTExxeVn4FhJQx48vyo0j/F
vW1UZVz7kB2/gSUUdmoQC8Vbl48SX10GO3ptrMCLdCwe1MFCk3ODPzSqTdvUIDKD
ZTITwLnM1KLpcyIp1b41f9y3e6ikTwk0IDaktPBE3Y2X85J1PsfFiCKjLg5uG5/I
PRBKC9QyAY65lZ9zqG0wISdaz/LdbsJlihZ07DEgKU7tpUdG4GIgcSaqsz8uc2f2
PIquERK2GkIrfBeVGFWql4u5EeuvE+l2lboZNJtLh2vngnYuGUpeSq0Z7vhW7VgS
vPR+fRPGS4qZlRAYZhv9L2HZEdDfqS5TX6Yo1R2QkaCfEaX6HXaLFW/PlrWbA4HX
RhXzbc3jU9gu7DO3SQvzx6CG3A2Jpw2M6MlyOYDQGSvTSvqRnjIpou+i0GbIWo59
d9q4l9vOW3p5YcGScbX8BElzc4AUCn7ePyvdM373F93P2ifYlJWiLEgw1O5LazQn
qXQCgYgZ0HouWfRez3sIPyGH7ObDaO6Ad6aO7DXKTLMaO4kZo7YURZ9fn/09W2i6
JYnuv0zkvmVzofSStgz2
=GCtd
-----END PGP SIGNATURE-----

--T7mxYSe680VjQnyC--

