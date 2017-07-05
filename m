X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2599" "Wednesday" "5" "July" "2017" "09:37:32" "-0500" "Eric Blake" "eblake@redhat.com" "<3ac016b6-74ce-5aad-927c-e9c014cdd52c@redhat.com>" "63" "Re: [oss-security] systemd fails to parse user that should run service" "^Cc:" nil nil "7" "2017070514:37:32" "[oss-security] systemd fails to parse user that should run service" (number mark "        eblake@redha Jul  5   63/2599  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<20170705085034.GA2638@pali>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22505 invoked by uid 550); 5 Jul 2017 14:39:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21606 invoked from network); 5 Jul 2017 14:37:47 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 81301A4FBB
Authentication-Results: ext-mx02.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx02.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=eblake@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 81301A4FBB
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
 <20170705085034.GA2638@pali>
Openpgp: url=http://people.redhat.com/eblake/eblake.gpg
Organization: Red Hat, Inc.
Message-ID: <3ac016b6-74ce-5aad-927c-e9c014cdd52c@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <20170705085034.GA2638@pali>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="75bp2tc1QRGiT0Ttpt2Qq5CKGBvcSfGxe"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Wed, 05 Jul 2017 14:37:35 +0000 (UTC)
Cc: =?UTF-8?Q?Daniel_Skowro=c5=84ski?= <daniel@dsinf.net>
Date: Wed, 5 Jul 2017 09:37:32 -0500
From: Eric Blake <eblake@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com, =?UTF-8?Q?Pali_Roh=c3=a1r?=
 <pali.rohar@gmail.com>

--75bp2tc1QRGiT0Ttpt2Qq5CKGBvcSfGxe
Content-Type: multipart/mixed; boundary="9GMbvxKEqkHh7oDhfiG54H2oMx3tRHlN7";
 protected-headers="v1"
From: Eric Blake <eblake@redhat.com>
To: oss-security@lists.openwall.com, =?UTF-8?Q?Pali_Roh=c3=a1r?=
 <pali.rohar@gmail.com>
Cc: =?UTF-8?Q?Daniel_Skowro=c5=84ski?= <daniel@dsinf.net>
Message-ID: <3ac016b6-74ce-5aad-927c-e9c014cdd52c@redhat.com>
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
 <20170705085034.GA2638@pali>
In-Reply-To: <20170705085034.GA2638@pali>

--9GMbvxKEqkHh7oDhfiG54H2oMx3tRHlN7
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 07/05/2017 03:50 AM, Pali Roh=C3=A1r wrote:
> There are basically two problems:
>=20
> 1) In more Linux distributions useradd tool allow to create a new user
> which starts with digit. Also according to POSIX such user name is a
> valid. This means that valid user name (for some Linux distributions)
> from /etc/passwd specified in systemd unit file results running service
> as root user.

In fact, it is possible to create a username of '0' which is a non-root
user.  GNU Coreutils has several tools that support a lookup of '+0' to
force a numeric uid interpretation (get information related to uid 0,
regardless of whether there is also a username "0"), while omitting the
leading + does a username lookup first then falls back to a uid, since
leading + is not a valid POSIX username start character.

--=20
Eric Blake, Principal Software Engineer
Red Hat, Inc.           +1-919-301-3266
Virtualization:  qemu.org | libvirt.org


--9GMbvxKEqkHh7oDhfiG54H2oMx3tRHlN7--

--75bp2tc1QRGiT0Ttpt2Qq5CKGBvcSfGxe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: Public key at http://people.redhat.com/eblake/eblake.gpg
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iQEcBAEBCAAGBQJZXPmsAAoJEKeha0olJ0Nqbj4H/3vVhVeC2HmM150MVuPl8H5O
2lns3EZyJiWuwIxrdzeQ296RQyWQCcOEPDIKnYRrpkUqfT4a84fm5HDXTbaiInrG
yDBy10XtLlePXQAiCe7Pkko8XNAJNDmqKnXg/lvSniHmYWZ9PUBAYYiUG6e1lrmD
ewTT3Um3bn9C3qaPKPIrVlXjC5PrygA3twFjjxmYG53fiRVVyyJ6by5llJKoSu6O
Vlvf8TtoveescoNCXAFepd4aIbY59eGbrImIy3Gw520DRHNhTKvlDfZqH/qxh0Eg
TDmEyH5c3knh5dkSvI4G/SZspMIojptrQeyGYkFo4B26dP+fvaGDeLAyoXNVmNs=
=rHDr
-----END PGP SIGNATURE-----

--75bp2tc1QRGiT0Ttpt2Qq5CKGBvcSfGxe--
