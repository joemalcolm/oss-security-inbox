X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["990" "Tuesday" "28" "April" "2015" "23:15:54" "-0700" "Mark Sapiro" "mark@msapiro.net" "<5540771A.4050005@msapiro.net>" "32" "[oss-security] Re: Limited DoS in mailman (requires non standard config)" nil nil nil "4" "2015042906:15:54" "[oss-security] Re: Limited DoS in mailman (requires non standard config)" (number mark "        mark@msapiro Apr 28   32/990   " thread-indent "\"[oss-security] Re: Limited DoS in mailman (requires non standard config)\"\n") "<55406D07.4080607@redhat.com>" ("<553FBD80.4000809@redhat.com>" "<553FC853.3080009@msapiro.net>" "<55406D07.4080607@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3392 invoked by uid 550); 29 Apr 2015 06:16:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3368 invoked from network); 29 Apr 2015 06:16:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msapiro.net;
	s=default; t=1430288155;
	bh=SXH5J9mMIuNbKEvNBOYBqBGAVZpXxcsdsFhZlxAuW+g=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=LaGnQhpTFVPMxq7hOUSv7EuWlJkm/NRmfYv/AslhaMUdnvPTJrFFqORelfEeZlH7w
	 L0fdmuQB+i0IOVuOG/soqNh8+wTvtYdsw1dCUml4e0tN7pnPw59iZBK4gkBRO1Vn2m
	 UHAGX85P0t8rr2+a2rsVhTphyAnUmR71a+xn+2Ss=
Message-ID: <5540771A.4050005@msapiro.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <553FBD80.4000809@redhat.com> <553FC853.3080009@msapiro.net> <55406D07.4080607@redhat.com>
In-Reply-To: <55406D07.4080607@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="J6j0x2tS8wRagGHIlEwHk8OowlLWgfqFM"
X-GPC-MailScanner-ID: CDB946900B9.A45B3
X-GPC-MailScanner: Found to be clean
X-GPC-MailScanner-SpamCheck: not spam, SpamAssassin (not cached, score=-1.87,
	required 5, autolearn=not spam, ALL_TRUSTED -1.00, BAYES_00 -0.75,
	DKIM_SIGNED 0.10, DKIM_VALID -0.10, DKIM_VALID_AU -0.10,
	T_RP_MATCHES_RCVD -0.01, X_GPC_SASL -0.01)
X-GPC-MailScanner-From: mark@msapiro.net
Date: Tue, 28 Apr 2015 23:15:54 -0700
From: Mark Sapiro <mark@msapiro.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Limited DoS in mailman (requires non standard config)
To: Kurt Seifried <kseifried@redhat.com>, mailman-security@python.org, 
 "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--J6j0x2tS8wRagGHIlEwHk8OowlLWgfqFM
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 04/28/2015 10:32 PM, Kurt Seifried wrote:
> CentOS 6.6 with mailman-2.1.12-18.el6.x86_64
>=20
> Which is.. ergh. I did not realize how old this is.


Email address validation was strengthened in Mailman 2.1.15. Prior to
that, it would allow a slash (/) in an email address domain but not since.

--=20
Mark Sapiro <mark@msapiro.net>        The highway is for gamblers,
San Francisco Bay Area, California    better use your sense - B. Dylan


--J6j0x2tS8wRagGHIlEwHk8OowlLWgfqFM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlVAdxoACgkQVVuXXpU7hpPjxwCgvrYEusLY6W09y33Lt3cvAgck
zBUAniTWTPBZHorm+OGcULE+wFuA7zvO
=CUem
-----END PGP SIGNATURE-----

--J6j0x2tS8wRagGHIlEwHk8OowlLWgfqFM--
