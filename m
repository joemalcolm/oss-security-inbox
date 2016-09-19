X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2015" "Monday" "19" "September" "2016" "12:53:51" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20160919195351.GB29516@hunt>" "59" "Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode" nil nil nil "9" "2016091919:53:51" "[oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode" (number mark "U       seth.arnold@ Sep 19   59/2015  " thread-indent "\"Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode\"\n") "<CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>" ("<CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25637 invoked by uid 550); 19 Sep 2016 19:54:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24484 invoked from network); 19 Sep 2016 19:54:05 -0000
Date: Mon, 19 Sep 2016 12:53:51 -0700
From: Seth Arnold <seth.arnold@canonical.com>
To: Mike Santillana <michael.santillana@wework.com>
Cc: oss-security@lists.openwall.com, 'Apple' via <infosec@wework.com>
Message-ID: <20160919195351.GB29516@hunt>
Mail-Followup-To: Mike Santillana <michael.santillana@wework.com>,
	oss-security@lists.openwall.com, 'Apple' via <infosec@wework.com>
References: <CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="PmA2V3Z32TCmWXqI"
Content-Disposition: inline
In-Reply-To: <CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in
 GCM Mode

--PmA2V3Z32TCmWXqI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 19, 2016 at 03:20:02PM -0400, Mike Santillana wrote:
> An IV reuse bug was discovered in Ruby's OpenSSL library when using
> aes-gcm. When encrypting data with aes-*-gcm, if the IV is set before
> setting the key, the cipher will default to using a static IV. This creat=
es
> a static nonce and since aes-gcm is a stream cipher, this can lead to kno=
wn
> cryptographic issues.
>=20
> The documentation does not appear to specify the order of operations when
> setting the key and IV [1]. As an example, see the following insecure code
> snippet below:
>=20
> Vulnerable Code:
>=20
> def encrypt(plaintext)
>     cipher =3D OpenSSL::Cipher.new('aes-256-gcm')
>     iv =3D cipher.random_iv # Notice here the IV is set before the key
>     cipher.key =3D '11111111111111111111111111111111'
>     cipher.auth_data =3D ""
>     ciphertext =3D cipher.update(plaintext) + cipher.final
>     tag =3D cipher.auth_tag
>=20
>     puts "[+] Encrypting: #{plaintext}"
>     puts "[+] CipherMessage (IV | Tag | Ciphertext): #{bin2hex(iv)} |
> #{bin2hex(tag)} | #{bin2hex(ciphertext)}"
> end

Hello,

I think you have a mistake in this sample code, 'iv' is assigned but never
used (aside from being printed).

Your github code is far more complicated but looks like it is doing the
right thing.

Thanks

--PmA2V3Z32TCmWXqI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJX4EJPAAoJEPMhclmdjS6Xm60H/386UUH5vMldxmR4i6ygQmxK
CuMP4gV+Fa5A5mvpGA+2qk1D9Xf0QgzQmSQ3ni/MHfcNygQ4k+XQHGanuqkZcpNL
zsmajAqdygpgSlQQo9LhjjdSDSFuJ80jPhKqKK7cCUa46sIX/PU+c7KmndbH4MjI
5qpSnvQnPJ6ER3BF8AO1O9hT542+2ogddxbxs6q5jqdPtvccYXDQpkj9sam2FF7A
t8Mj+OqgPEayTrq+/X9s59digYJPELwXvpaBlx+SO0ZYSwLsY7v/DXWwpeRQOeMy
PVe+B9kV26VxBDGhdC6PrAV2vIjDojVkaEY4vpbxUslh5YE4eTNETMiffEgJTt8=
=MuKo
-----END PGP SIGNATURE-----

--PmA2V3Z32TCmWXqI--
