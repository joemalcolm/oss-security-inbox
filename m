X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2186" "Monday" "21" "September" "2015" "18:05:53" "+0200" "Christian Hoffmann" "christian@hoffie.info" "<56002AE1.1030908@hoffie.info>" "68" "Re: [oss-security] CVE request: zarafa-autorespond suffers from a potential local privilege escalation" nil nil nil "9" "2015092116:05:53" "[oss-security] CVE request: zarafa-autorespond suffers from a potential local privilege escalation" (number mark "        christian@ho Sep 21   68/2186  " thread-indent "\"Re: [oss-security] CVE request: zarafa-autorespond suffers from a potential local privilege escalation\"\n") "<874miorksk.fsf@redhat.com>" ("<874miorksk.fsf@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11340 invoked by uid 550); 21 Sep 2015 16:06:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11322 invoked from network); 21 Sep 2015 16:06:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=hoffie.info;
	s=sarchoo; t=1442851594;
	bh=+mmfpqThXxwRt6RriJgrkvx4r7TbwG97UotItiuPOcU=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=Mc1eKehEdb3CwqQH1yY7/kSQLU4wdmokp8lmMZee69UZxKkLGo1rCL64+/G+XFe8e
	 fbYUvjdZ3cElfE3C8g35P/bYgcy0bCRBgNAOt6XubTI/4iHkszNg4r9zRU9zZKw+Ai
	 EEkjP3YItUKk4eo1flpMGkbcew24YGTi1LZ14v6w=
References: <874miorksk.fsf@redhat.com>
Openpgp: id=D8A734AC7557E8C1764238362C1F41CF361CB280
X-Enigmail-Draft-Status: N1110
Message-ID: <56002AE1.1030908@hoffie.info>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <874miorksk.fsf@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="atL41QUwCWURh6XHiFrVGgcKa10KkBndD"
Date: Mon, 21 Sep 2015 18:05:53 +0200
From: Christian Hoffmann <christian@hoffie.info>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: zarafa-autorespond suffers from a
 potential local privilege escalation
To: oss-security@lists.openwall.com

--atL41QUwCWURh6XHiFrVGgcKa10KkBndD
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Martin,

as far as I know, this issue has already been assigned a CVE. I was
about to post the number here, but as the internal ticket IDs do not
match as I expected, I refrain from doing so in order to avoid confusion.

I am not sure if Zarafa contacts are on this list, but I will forward
this mail so that they can confirm/clarify publicly.

So, for now, I don't think a new CVE should be assigned. Either Zarafa
or me will send an update shortly.

Kind regards,

Christian


On 09/21/2015 02:58 PM, Martin Prpic wrote:
> Hi,
>=20
> The following bug was reported to Red Hat:
>=20
> https://bugzilla.redhat.com/show_bug.cgi?id=3D1263006
>=20
> The issue is noted as "zarafa-autorespond suffers from a potential local
> privilege escalation" in the zarafa changelog:
>=20
> https://download.zarafa.com/community/beta/7.2/changelog-7.2.txt
>=20
> Patch:
>=20
> https://bugzilla.redhat.com/attachment.cgi?id=3D1073440&action=3Ddiff
>=20
> Can a CVE be assigned for this issue?
>=20
> Thanks!
>=20



--atL41QUwCWURh6XHiFrVGgcKa10KkBndD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWACrlAAoJECwfQc82HLKA0xEP/3lpSH+/MQl5o+6039ZcDi0B
wWuOsKH5ffZP0ABiErVGMJ1a4k15Xq30tMJ5cgmSsRC+bCrCnoRm4W83YpZbXWzO
85JairHlgiF8QYviKxOmzvzil3kJ+9jtfxbUpDEw1uWk7WYdtmsjLXvG2bLIf8Zx
q+n82M4YsYk8EWbL1kS193Au+a5DBy4wWMJp23h2UBLUl7MzJMMeRIJvfZ2YZJyu
8tQLGkdnNoxPHgJpwdb1WFxVeqFrMXiKskgvF6HIgHqmEV7w9LkWzwHO0U/kDUXA
KClGLsZUzTAXRMH29Jp7Ya0gvxyDAuIz7TqnkqybZYvbNloeZKnA9i2rzxXWaALm
H6brNtsg2Dgf6HJD4C9stbtcWyCkbb94MGfn+t6xf/KcCj9fqIx+F4BhTUPhYy3G
vXBKHUvIkMZ0Nb2gGXTH0j+PBA3JUIJH6Rj1inthW0KB+mTEdT+lttZG3yxJZLFd
JkjFBgbypNVvJ0lhMbtt+6l4WxoXbsvWxlB+WsxfNrHGDvHORfYOeT5Dc+Qg3h7a
cbfIp8fhG/xDblCO4nYlodNyseFUaD9cJACLxp93SVq3IOD+7IR9D/skkZ7UVV80
3Ao+4v6xzTfBjkEuLIS0y2UskbRfDCjhTBqvmIVMTe16Bhh0nZDdKixyv78BMrZC
4fVeh+WWKnLOurqwfsc8
=N9lr
-----END PGP SIGNATURE-----

--atL41QUwCWURh6XHiFrVGgcKa10KkBndD--
