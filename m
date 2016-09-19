X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6495" "Monday" "19" "September" "2016" "15:03:23" "-0500" "Brandon Perry" "bperry.volatile@gmail.com" "<9C0DC1F6-0473-4888-A051-6CFC8872E94D@gmail.com>" "136" "Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode" nil nil nil "9" "2016091920:03:23" "[oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode" (number mark "U       bperry.volat Sep 19  136/6495  " thread-indent "\"Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode\"\n") "<20160919195351.GB29516@hunt>" ("<CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>" "<20160919195351.GB29516@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6070 invoked by uid 550); 19 Sep 2016 20:03:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6019 invoked from network); 19 Sep 2016 20:03:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
         :to;
        bh=JN3PkHQYjUhq9ebXquJVcEqPjmvjB3UIvTx6qZU64yw=;
        b=NXLNGVQ2NEnO42B9iQRbdLex2RrzVb4Kkhqhv82+D8FewO0W5wGI49ns6xmuse9Sx7
         GuuVLMy5s4bR3QryGjBCg9JLIku204UsMdL35Jl6QhfkKlKIvlekG72Dg701l2jpYYLF
         hF3i0dfmm3V5Jtjm6HCq6aiD+r+JVnAVdz5J+HF2xxG22GtJvod3RBGNyKwaf0sz37/2
         3B0vkP4srdOkHfGRXiO9HF/rpAwCFSBxy3W3u3sz6SYnAn4LjFNu/o4PPzxRgkkh/HXp
         FKC8xmidHWCQ3v71ISkDMcrZB02J6KKp0IY++lfviCq7xYG7ALa25g1abs2rDmOoK7Ev
         sWJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
         :message-id:references:to;
        bh=JN3PkHQYjUhq9ebXquJVcEqPjmvjB3UIvTx6qZU64yw=;
        b=QlC6RJ+1Qr3cUoP20hZni40zzZUTBMBrUVsmP9Xp6RfIm9e7t/URV84YBQI7opnIcN
         s8Ir793gBM5VJkva1p/+0MzdCyjTuQGR4t4U9MZeptnxX5h8oYYYddiVbRuH7PxEFEXt
         d+1pSzVBk6GENz9Lxo1hOtBRKwTbikCF35y6T8WcBsS/mT9tOssKhsnkscgZnUDgwVlN
         uI2d/E7UonIlYKQFHOqennf8zAWLuxRvM7V7MOfMyQ3wOfiwKF8MuVdAU8I8pwC34jKu
         yyBWxnjWSZw8IkmpRaoiQQVOYXIzF/BWVjTL5YJX5Di+E2mJaQVC3JpLOKsOYvrS/mGt
         hmXQ==
X-Gm-Message-State: AE9vXwObGOjd4u1h43ySe/MoYNxtz7QrndEad4CO8ngp5z+w0DA7nmTpaG93eA4Wy47mPQ==
X-Received: by 10.202.84.197 with SMTP id i188mr23844501oib.93.1474315410587;
        Mon, 19 Sep 2016 13:03:30 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Content-Type: multipart/signed; boundary="Apple-Mail=_314D323D-E4C5-4089-A47D-332184CE2D5C"; protocol="application/pgp-signature"; micalg=pgp-sha512
X-Pgp-Agent: GPGMail
From: Brandon Perry <bperry.volatile@gmail.com>
In-Reply-To: <20160919195351.GB29516@hunt>
Date: Mon, 19 Sep 2016 15:03:23 -0500
Cc: Mike Santillana <michael.santillana@wework.com>,
 'Apple' via <infosec@wework.com>
Message-Id: <9C0DC1F6-0473-4888-A051-6CFC8872E94D@gmail.com>
References: <CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com> <20160919195351.GB29516@hunt>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3124)
Subject: Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode

--Apple-Mail=_314D323D-E4C5-4089-A47D-332184CE2D5C
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D9EEA4ED-2B0D-412F-AEEE-6BAE76B9B206"


--Apple-Mail=_D9EEA4ED-2B0D-412F-AEEE-6BAE76B9B206
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Sep 19, 2016, at 2:53 PM, Seth Arnold <seth.arnold@canonical.com> wrot=
e:
>=20
> On Mon, Sep 19, 2016 at 03:20:02PM -0400, Mike Santillana wrote:
>> An IV reuse bug was discovered in Ruby's OpenSSL library when using
>> aes-gcm. When encrypting data with aes-*-gcm, if the IV is set before
>> setting the key, the cipher will default to using a static IV. This crea=
tes
>> a static nonce and since aes-gcm is a stream cipher, this can lead to kn=
own
>> cryptographic issues.
>>=20
>> The documentation does not appear to specify the order of operations when
>> setting the key and IV [1]. As an example, see the following insecure co=
de
>> snippet below:
>>=20
>> Vulnerable Code:
>>=20
>> def encrypt(plaintext)
>>    cipher =3D OpenSSL::Cipher.new('aes-256-gcm')
>>    iv =3D cipher.random_iv # Notice here the IV is set before the key
>>    cipher.key =3D '11111111111111111111111111111111'
>>    cipher.auth_data =3D ""
>>    ciphertext =3D cipher.update(plaintext) + cipher.final
>>    tag =3D cipher.auth_tag
>>=20
>>    puts "[+] Encrypting: #{plaintext}"
>>    puts "[+] CipherMessage (IV | Tag | Ciphertext): #{bin2hex(iv)} |
>> #{bin2hex(tag)} | #{bin2hex(ciphertext)}"
>> end
>=20
> Hello,
>=20
> I think you have a mistake in this sample code, 'iv' is assigned but never
> used (aside from being printed).

Ruby really likes side-effects. Calling #random_iv generates and sets a new=
 IV on the cipher, then returns it to the caller. Very magical.

https://ruby-doc.org/stdlib-2.0.0/libdoc/openssl/rdoc/OpenSSL/Cipher.html#m=
ethod-i-random_iv <https://ruby-doc.org/stdlib-2.0.0/libdoc/openssl/rdoc/Op=
enSSL/Cipher.html#method-i-random_iv>
>=20
> Your github code is far more complicated but looks like it is doing the
> right thing.
>=20
> Thanks


--Apple-Mail=_D9EEA4ED-2B0D-412F-AEEE-6BAE76B9B206
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dus-ascii"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode=
: space; -webkit-line-break: after-white-space;" class=3D""><br class=3D"">=
<div><blockquote type=3D"cite" class=3D""><div class=3D"">On Sep 19, 2016, =
at 2:53 PM, Seth Arnold &lt;<a href=3D"mailto:seth.arnold@canonical.com" cl=
ass=3D"">seth.arnold@canonical.com</a>&gt; wrote:</div><br class=3D"Apple-i=
nterchange-newline"><div class=3D""><div class=3D"">On Mon, Sep 19, 2016 at=
 03:20:02PM -0400, Mike Santillana wrote:<br class=3D""><blockquote type=3D=
"cite" class=3D"">An IV reuse bug was discovered in Ruby's OpenSSL library =
when using<br class=3D"">aes-gcm. When encrypting data with aes-*-gcm, if t=
he IV is set before<br class=3D"">setting the key, the cipher will default =
to using a static IV. This creates<br class=3D"">a static nonce and since a=
es-gcm is a stream cipher, this can lead to known<br class=3D"">cryptograph=
ic issues.<br class=3D""><br class=3D"">The documentation does not appear t=
o specify the order of operations when<br class=3D"">setting the key and IV=
 [1]. As an example, see the following insecure code<br class=3D"">snippet =
below:<br class=3D""><br class=3D"">Vulnerable Code:<br class=3D""><br clas=
s=3D"">def encrypt(plaintext)<br class=3D""> &nbsp;&nbsp;&nbsp;cipher =3D O=
penSSL::Cipher.new('aes-256-gcm')<br class=3D""> &nbsp;&nbsp;&nbsp;iv =3D c=
ipher.random_iv # Notice here the IV is set before the key<br class=3D""> &=
nbsp;&nbsp;&nbsp;cipher.key =3D '11111111111111111111111111111111'<br class=
=3D""> &nbsp;&nbsp;&nbsp;cipher.auth_data =3D ""<br class=3D""> &nbsp;&nbsp=
;&nbsp;ciphertext =3D cipher.update(plaintext) + cipher.final<br class=3D""=
> &nbsp;&nbsp;&nbsp;tag =3D cipher.auth_tag<br class=3D""><br class=3D""> &=
nbsp;&nbsp;&nbsp;puts "[+] Encrypting: #{plaintext}"<br class=3D""> &nbsp;&=
nbsp;&nbsp;puts "[+] CipherMessage (IV | Tag | Ciphertext): #{bin2hex(iv)} =
|<br class=3D"">#{bin2hex(tag)} | #{bin2hex(ciphertext)}"<br class=3D"">end=
<br class=3D""></blockquote><br class=3D"">Hello,<br class=3D""><br class=
=3D"">I think you have a mistake in this sample code, 'iv' is assigned but =
never<br class=3D"">used (aside from being printed).<br class=3D""></div></=
div></blockquote><div><br class=3D""></div><div>Ruby really likes side-effe=
cts. Calling #random_iv generates and sets a new IV on the cipher, then ret=
urns it to the caller. Very magical.</div><div><br class=3D""></div><div><a=
 href=3D"https://ruby-doc.org/stdlib-2.0.0/libdoc/openssl/rdoc/OpenSSL/Ciph=
er.html#method-i-random_iv" class=3D"">https://ruby-doc.org/stdlib-2.0.0/li=
bdoc/openssl/rdoc/OpenSSL/Cipher.html#method-i-random_iv</a></div><br class=
=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div class=3D"">=
<br class=3D"">Your github code is far more complicated but looks like it i=
s doing the<br class=3D"">right thing.<br class=3D""><br class=3D"">Thanks<=
br class=3D""></div></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_D9EEA4ED-2B0D-412F-AEEE-6BAE76B9B206--

--Apple-Mail=_314D323D-E4C5-4089-A47D-332184CE2D5C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJX4ESPAAoJEKJq8VjVbt2pJVIP/iA8CRvz5F/IY9afCUi8noOG
6QaMyn+ZpshNA1VsbFbFz9s1EbSDdGpSQsIqqxsKc67CFpvJLV1u8v4wYAijW4g9
z3GJk7hfmokhmi15PzQzcSA2RayJ5euMX5k4pPS/H6YZk0Zm5Lxz1c5d0sod8pW8
IWsYSi4ApPKz9ylnxDswpPJai9FD+VefFuxB5zEL6Z8eIsN8wwwkEI5FSk/578s9
fTaFit0M2WzU+xNlOz/hDpUjEgcJbPvQfl9MD7gOFYyrzrOkPA+QYQ8IsmP5xLcd
bPGgQjc4ahFsq55eaa9otd9vuzbSctScCIqcGwZF7MHaz7mGVNYQ7JiwNU9/VZBn
6zGycWIc2CijFIYuOUXHEj16y1iF8xr8KQ87Nsu2L0aZFFDgAmyB6a5F41GE8Ho0
kRRnPw/zgPwem5/ym0U3xVENCbIH5n8IliViEO86Wm+ZB2zYW6efrf819vWMDfaP
i0ylE1PjQALL8ue9efve6sos5Lhtp7iy+wCDqT/9OgrKwbsxDzDA4pDGkG+qziEv
4b5K26ugfvhgqvz4WcN4AOmXq0kR4z3QGRfcP2dqtNg4wnNVBYmag00+V9H/AtKy
sxvy6Z6NstYmogaOVA4PfJbKgpjHOXEvSg+zAsURoIwqeT0uA4lcvg3nTzzITjsf
V1sdH6XC21kq/5IjIPMI
=Q6Nh
-----END PGP SIGNATURE-----

--Apple-Mail=_314D323D-E4C5-4089-A47D-332184CE2D5C--
