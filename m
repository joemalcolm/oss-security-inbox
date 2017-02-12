X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2047" "Sunday" "12" "February" "2017" "09:13:01" "-0500" "Leo Famulari" "leo@famulari.name" "<20170212141301.GA7814@jasmine>" "52" "Re: [oss-security] Re: CVE request Qemu: sd: sdhci OOB access during multi block SDMA transfer" nil nil nil "2" "2017021214:13:01" "[oss-security] Re: CVE request Qemu: sd: sdhci OOB access during multi block SDMA transfer" (number mark "U       leo@famulari Feb 12   52/2047  " thread-indent "\"Re: [oss-security] Re: CVE request Qemu: sd: sdhci OOB access during multi block SDMA transfer\"\n") "<ca93bd9008234863a8d3c5733fb36a02@imshyb01.MITRE.ORG>" ("<alpine.LFD.2.20.1701301524160.12782@wniryva>" "<ca93bd9008234863a8d3c5733fb36a02@imshyb01.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7752 invoked by uid 550); 12 Feb 2017 14:51:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22137 invoked from network); 12 Feb 2017 14:13:15 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=famulari.name; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=2A7h4Q6Fcf2A4e99QF4hflgxpPA=; b=avHqRP
	GJUksUdhPVyC9MkIS3byVpApSkh4AmtOZSFoqRQaE1RvuAFIsYh+4e8NlvtjyYEX
	FodN1qvAIoNWcC8njBn2C+W+kiaEGepvURcsL1DXRjAiH4mn0DkDD07FedD7zs45
	7c7/YK5pPVZA2hn4ypHv84swYSriST8gxS0ls=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=smtpout; bh=2A7h4Q6Fcf2A4e
	99QF4hflgxpPA=; b=UBnIwa6cm0LnIhMPWFKNdWZUhkWx4zACSQxVbkChivXyPF
	5CU6TiMlkr128kv1lNskNFKqFY9VJL1kGEIodrirnFVnEqV2Vqh8us9As6CeroJU
	jMRJ3KBe47U0Pnndg6E82SkDbIIveEsXmD2if0FIUO9gedWnSmrjK93+U4Ofc=
X-ME-Sender: <xms:b22gWMVhU_XTYltqBtX22o2khUuqfBxA_jbaqwSsdSOd806QqLSdjA>
X-Sasl-enc: 6HZtoQweUeYng87qEX5e2qyVAryCXC+aTj4iAcZPlmo1 1486908783
Date: Sun, 12 Feb 2017 09:13:01 -0500
From: Leo Famulari <leo@famulari.name>
To: oss-security@lists.openwall.com
Cc: ppandit@redhat.com, cve-assign@mitre.org, jiangxin1@huawei.com
Message-ID: <20170212141301.GA7814@jasmine>
References: <alpine.LFD.2.20.1701301524160.12782@wniryva>
 <ca93bd9008234863a8d3c5733fb36a02@imshyb01.MITRE.ORG>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dDRMvlgZJXvWKvBx"
Content-Disposition: inline
In-Reply-To: <ca93bd9008234863a8d3c5733fb36a02@imshyb01.MITRE.ORG>
User-Agent: Mutt/1.7.2 (2016-11-26)
Subject: Re: [oss-security] Re: CVE request Qemu: sd: sdhci OOB access during
 multi block SDMA transfer

--dDRMvlgZJXvWKvBx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 31, 2017 at 10:20:47AM -0500, cve-assign@mitre.org wrote:
> > Quick emulator(Qemu) built with the SDHCI device emulation support is
> > vulnerable to an OOB heap access issue. It could occur while doing a mu=
lti
> > block SDMA transfer via 'sdhci_sdma_transfer_multi_blocks' routine.
> >=20
> > A privileged user inside guest could use this flaw to crash the Qemu pr=
ocess
> > resulting in DoS or potentially execute arbitrary code with privileges =
of the
> > Qemu process on the host.
> >=20
> > https://lists.gnu.org/archive/html/qemu-devel/2017-01/msg06191.html
> > https://bugzilla.redhat.com/show_bug.cgi?id=3D1417559
>=20
> Use CVE-2017-5667.
>=20
> This is not yet available at
> http://git.qemu.org/?p=3Dqemu.git;a=3Dhistory;f=3Dhw/sd/sdhci.c but
> that may be an expected place for a later update.

This commit appears to address CVE-2017-5667:

http://git.qemu-project.org/?p=3Dqemu.git;a=3Dcommitdiff;h=3D42922105beb14c=
2fc58185ea022b9f72fb5465e9

--dDRMvlgZJXvWKvBx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAligbWkACgkQJkb6MLrK
fwikORAA74mkWoD+6rFkg9OWcSFwI4Vhyu2ogJiCuEjrLOH9RULxnf0MZUTN96rt
KKYO17QbDqQde53lQ5g8WCzM1d8y5tRoLr2kDgKYIpEZuYb0HISUEu1KBfv4nA/1
eZ8Om21PqaCcDjhyw6QlKrskmyShvArBxa3Uln1fsYl5tBUNrA1B234bOqHiUImV
yVAT1QXjpZqoSo+xvNPH3HCYar5/vfdStQnQX8SE/SPNFc+DiZcuXw7R/5p7MeRK
ei7KOL4wkwk/4S68YaGWkY55knhkqOR75nQZb4h24uN/vy2m/WOhDCMgzU6n05M9
iZHAWw83muSd+poXhyIF4BtgH4P/RF5Zj8isB6WSnq0qfaKSaNJ/ozPnKISGs4yp
RVQRe1Ttz7cXxJvCdqqp3p2HkKIwG8WSKRGeF4LZoUnq8boFzjFDEHDoQj0peQ8D
MOD99I0PxOTo2NZ2U7OgNkxylH3yZpAUBvnBQQINsBPoiSdOfigLLXfjoaP9ctBM
1+y/fpBdE2UOdYvCDwMoELrUEFWpf4h5TWB6Vxq01eeXL23vvU7RlYqGRkNRTePp
yWSCpgu0btIaFk2LNJRAM5dyngwyL5s6BZDeShWIMTFZWjHQjrAJF1bl2T7YTl3b
h5c2jz/RoqCwGli8Duasv18Aq7QjJ7yoWuTMRhNWE1wT+7kVuMY=
=8dKJ
-----END PGP SIGNATURE-----

--dDRMvlgZJXvWKvBx--
