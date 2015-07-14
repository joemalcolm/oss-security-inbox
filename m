X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2445" "Tuesday" "14" "July" "2015" "09:48:17" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<55A52F41.8070702@redhat.com>" "70" "Re: [oss-security] CVE Request: AWS s2n" nil nil nil "7" "2015071415:48:17" "[oss-security] CVE Request: AWS s2n" (number mark "        kseifried@re Jul 14   70/2445  " thread-indent "\"Re: [oss-security] CVE Request: AWS s2n\"\n") "<55A525D8.5060303@lsexperts.de>" ("<55A525D8.5060303@lsexperts.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17439 invoked by uid 550); 14 Jul 2015 15:48:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17421 invoked from network); 14 Jul 2015 15:48:30 -0000
Message-ID: <55A52F41.8070702@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <55A525D8.5060303@lsexperts.de>
In-Reply-To: <55A525D8.5060303@lsexperts.de>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="atDE52aXStbJJCqfbHdMXe9iw0O7t6tde"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Tue, 14 Jul 2015 09:48:17 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: AWS s2n
To: oss-security@lists.openwall.com

--atDE52aXStbJJCqfbHdMXe9iw0O7t6tde
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 07/14/2015 09:08 AM, Markus Vervier wrote:
>=20
> Hi,
>=20
> I would like to request a CVE for s2n.
>=20
> When a server is sending invalid DH values during a handshake a BIGNUM
> value is not properly initialized. This causes a null pointer
> dereference in a s2n based client leading to a crash or possible worse
> on old systems (e.g. on Debian kernels lower than 2.6.26).
>=20
> Technical details and a patch are available here:
>=20
> https://github.com/awslabs/s2n/pull/124
>=20
> The fix was merged and is in commit
> 9af6ba1815dfd5c00361cc3bd45cee1d64e0c3bf.
>=20
> Markus


I just looked at the pull:

Markus Vervier noticed that our client side code isn't being
defensive enough around DHE parameters and can pass on a
"0" as the value of dh->p. Note: not that the the BIGNUM is NULL,
but that the value of the number is a literal zero.

[snip]

Reminder: Client mode is disabled and won't be enabled until X509
validation is ready. But we can still make improvements and fixes
in the meantime.

so I'm not sure this needs a CVE as the code is not yet enabled.

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com


--atDE52aXStbJJCqfbHdMXe9iw0O7t6tde
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVpS9BAAoJEBYNRVNeJnmThHAQALILp1aQ7kZ54YsJFtxzxMGO
Hr/kadkt4Ww5FmM8H5KDPT4vNMe/283VKvF3d379O6GCsU0xCa7n7/VoKpJPj5hI
j3nq0bQe17viwfDPc0RmNOgJMFvuPIgTCjynJ7zyJYLMhd3L/7frAoyarCVCIPFO
qrh0n+8M8H8j770bRXvUNC7h+cJrq3yH6gu94BgaEDPbCIoDU7jtDQfKns9Q2SwY
E/0mbUTqN/s/F4zJEFagiv9Ul+yo2pYL8FSn9HRPFIdV46Ky5ilECDA4e0flbh5x
OP1/ghraNFnDbtZBo6kXaLG6MdCsx/fxhju/47Pb3Dt8XbqD6M+w/aTn2QSYhbSP
vFMeJ23vuJ6o+jo8ltnqnESvVwAdx7hPTe3eBhiK5H+3lt2xsUSGD84kvNuhI9hf
o4zX7iawCFQMnt643FGuMW+uVM8zwt8favbBNzLYf8/ro6o92/8L7pWk9uSM4p9E
8bJSWqcBCxH3iC/FUhQpf81NEijCeUT7v5V1N89syAZaB8mSkbWZc8eRqUCTlliS
+A9XyHVGzDOZcA+Q7WgKZKxHDF823NeZKcT8AZlItxRbocoHZZYoE+sEEe5a7O0t
Q3EPQEPfbiIY81pu2O6+vrYbumfzPwm+AMZLLGXl4uJ1u1wGxflSYyolFfgHpDln
dcg5y2nDX8iTrnA9uD2X
=XEU1
-----END PGP SIGNATURE-----

--atDE52aXStbJJCqfbHdMXe9iw0O7t6tde--
